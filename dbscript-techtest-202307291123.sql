--
-- PostgreSQL database dump
--

-- Dumped from database version 10.23
-- Dumped by pg_dump version 10.23

-- Started on 2023-07-29 11:23:36

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4 (class 2615 OID 16394)
-- Name: crud; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA crud;


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 200 (class 1259 OID 16430)
-- Name: mst_item; Type: TABLE; Schema: crud; Owner: -
--

CREATE TABLE crud.mst_item (
    id_item character varying NOT NULL,
    item_name character varying,
    price character varying,
    stock character varying,
    created_by character varying,
    created_date timestamp without time zone DEFAULT now(),
    updated_by character varying,
    updated_date timestamp without time zone DEFAULT now()
);


--
-- TOC entry 198 (class 1259 OID 16413)
-- Name: mst_login; Type: TABLE; Schema: crud; Owner: -
--

CREATE TABLE crud.mst_login (
    id_login character varying NOT NULL,
    password character varying,
    id_user character varying,
    id_role character varying,
    token character varying,
    created_by character varying,
    created_date timestamp without time zone DEFAULT now(),
    updated_by character varying,
    updated_date timestamp without time zone DEFAULT now()
);


--
-- TOC entry 197 (class 1259 OID 16404)
-- Name: mst_role; Type: TABLE; Schema: crud; Owner: -
--

CREATE TABLE crud.mst_role (
    id_role character varying NOT NULL,
    role_name character varying,
    flag_active character varying,
    created_by character varying,
    created_date timestamp without time zone DEFAULT now(),
    updated_by character varying,
    updated_date timestamp without time zone DEFAULT now()
);


--
-- TOC entry 203 (class 1259 OID 16450)
-- Name: mst_user; Type: TABLE; Schema: crud; Owner: -
--

CREATE TABLE crud.mst_user (
    id_user character varying NOT NULL,
    fullname character varying,
    id_role character varying,
    address character varying,
    mobile_number character varying,
    flag_active character varying,
    created_by character varying,
    created_date timestamp without time zone DEFAULT now(),
    updated_by character varying,
    updated_date timestamp without time zone DEFAULT now()
);


--
-- TOC entry 199 (class 1259 OID 16421)
-- Name: trx_cart; Type: TABLE; Schema: crud; Owner: -
--

CREATE TABLE crud.trx_cart (
    id_cart character varying NOT NULL,
    id_user character varying,
    id_item character varying,
    qty numeric,
    price numeric,
    discount numeric,
    created_by character varying,
    created_date timestamp without time zone DEFAULT now(),
    updated_by character varying,
    updated_date timestamp without time zone DEFAULT now()
);


--
-- TOC entry 202 (class 1259 OID 16441)
-- Name: trx_log; Type: TABLE; Schema: crud; Owner: -
--

CREATE TABLE crud.trx_log (
    id integer NOT NULL,
    id_user character varying,
    log character varying,
    created_by character varying,
    created_date timestamp without time zone DEFAULT now()
);


--
-- TOC entry 201 (class 1259 OID 16439)
-- Name: trx_log_id_seq; Type: SEQUENCE; Schema: crud; Owner: -
--

ALTER TABLE crud.trx_log ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME crud.trx_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 2849 (class 0 OID 16430)
-- Dependencies: 200
-- Data for Name: mst_item; Type: TABLE DATA; Schema: crud; Owner: -
--

INSERT INTO crud.mst_item VALUES ('SKU12345', 'Paracetamol', '5000', '100', 'adm001', '2023-07-29 09:39:52.933177', 'adm001', '2023-07-29 09:39:52.933177');
INSERT INTO crud.mst_item VALUES ('SKU67890', 'Amoxicillin', '8000', '50', 'adm001', '2023-07-29 09:39:52.933177', 'adm001', '2023-07-29 09:39:52.933177');
INSERT INTO crud.mst_item VALUES ('SKU23456', 'Omeprazole', '10000', '75', 'adm001', '2023-07-29 09:39:52.933177', 'adm001', '2023-07-29 09:39:52.933177');
INSERT INTO crud.mst_item VALUES ('SKU78901', 'Simvastatin', '12000', '30', 'adm001', '2023-07-29 09:39:52.933177', 'adm001', '2023-07-29 09:39:52.933177');
INSERT INTO crud.mst_item VALUES ('SKU34567', 'Cetirizine', '6000', '200', 'adm001', '2023-07-29 09:39:52.933177', 'adm001', '2023-07-29 09:39:52.933177');
INSERT INTO crud.mst_item VALUES ('SKU89012', 'Ibuprofen', '7000', '150', 'adm001', '2023-07-29 09:39:52.933177', 'adm001', '2023-07-29 09:39:52.933177');
INSERT INTO crud.mst_item VALUES ('SKU45678', 'Metformin', '9000', '80', 'adm001', '2023-07-29 09:39:52.933177', 'adm001', '2023-07-29 09:39:52.933177');
INSERT INTO crud.mst_item VALUES ('SKU01234', 'Amlodipine', '11000', '60', 'adm001', '2023-07-29 09:39:52.933177', 'adm001', '2023-07-29 09:39:52.933177');
INSERT INTO crud.mst_item VALUES ('SKU56789', 'Aspirin', '3000', '250', 'adm001', '2023-07-29 09:39:52.933177', 'adm001', '2023-07-29 09:39:52.933177');
INSERT INTO crud.mst_item VALUES ('SKU12340', 'Losartan', '10000', '90', 'adm001', '2023-07-29 09:39:52.933177', 'adm001', '2023-07-29 09:39:52.933177');
INSERT INTO crud.mst_item VALUES ('SKU67895', 'Ranitidine', '8500', '120', 'adm001', '2023-07-29 09:39:52.933177', 'adm001', '2023-07-29 09:39:52.933177');
INSERT INTO crud.mst_item VALUES ('SKU23450', 'Atorvastatin', '13000', '40', 'adm001', '2023-07-29 09:39:52.933177', 'adm001', '2023-07-29 09:39:52.933177');
INSERT INTO crud.mst_item VALUES ('SKU78905', 'Diphenhydramine', '5500', '180', 'adm001', '2023-07-29 09:39:52.933177', 'adm001', '2023-07-29 09:39:52.933177');
INSERT INTO crud.mst_item VALUES ('SKU34560', 'Prednisone', '9500', '70', 'adm001', '2023-07-29 09:39:52.933177', 'adm001', '2023-07-29 09:39:52.933177');
INSERT INTO crud.mst_item VALUES ('SKU89015', 'Metronidazole', '7500', '110', 'adm001', '2023-07-29 09:39:52.933177', 'adm001', '2023-07-29 09:39:52.933177');
INSERT INTO crud.mst_item VALUES ('SKU45670', 'Diazepam', '4000', '300', 'adm001', '2023-07-29 09:39:52.933177', 'adm001', '2023-07-29 09:39:52.933177');
INSERT INTO crud.mst_item VALUES ('SKU01235', 'Ciprofloxacin', '6000', '160', 'adm001', '2023-07-29 09:39:52.933177', 'adm001', '2023-07-29 09:39:52.933177');
INSERT INTO crud.mst_item VALUES ('SKU56780', 'Sertraline', '8500', '70', 'adm001', '2023-07-29 09:39:52.933177', 'adm001', '2023-07-29 09:39:52.933177');
INSERT INTO crud.mst_item VALUES ('SKU12346', 'Fluoxetine', '9000', '100', 'adm001', '2023-07-29 09:39:52.933177', 'adm001', '2023-07-29 09:39:52.933177');
INSERT INTO crud.mst_item VALUES ('SKU67891', 'Levofloxacin', '10500', '50', 'adm001', '2023-07-29 09:39:52.933177', 'adm001', '2023-07-29 09:39:52.933177');


--
-- TOC entry 2847 (class 0 OID 16413)
-- Dependencies: 198
-- Data for Name: mst_login; Type: TABLE DATA; Schema: crud; Owner: -
--

INSERT INTO crud.mst_login VALUES ('fachrul.hambali', 'aGFtYmFsaTEyMw==', 'usr002', 'role002', NULL, 'adm001', '2023-07-29 09:29:08.097838', 'adm001', '2023-07-29 09:29:08.097838');
INSERT INTO crud.mst_login VALUES ('siti.nurbaya', 'bnVyYmF5YTEyMw==', 'usr003', 'role002', NULL, 'adm001', '2023-07-29 09:29:08.099003', 'adm001', '2023-07-29 09:29:08.099003');
INSERT INTO crud.mst_login VALUES ('rezky.adm', 'cGFuY2FudWFyeTEyMw==', 'adm001', 'role001', NULL, 'adm001', '2023-07-29 09:25:47.17', 'adm001', '2023-07-29 09:25:47.17');
INSERT INTO crud.mst_login VALUES ('ahmad.setiabudi', 'c2V0aWFidWRpMTIz', 'usr001', 'role002', NULL, 'adm001', '2023-07-29 09:25:47.170621', 'adm001', '2023-07-29 09:25:47.170621');


--
-- TOC entry 2846 (class 0 OID 16404)
-- Dependencies: 197
-- Data for Name: mst_role; Type: TABLE DATA; Schema: crud; Owner: -
--

INSERT INTO crud.mst_role VALUES ('role001', 'Administrator', 'Y', 'adm001', '2023-07-29 09:30:10.463929', 'adm001', '2023-07-29 09:30:10.463929');
INSERT INTO crud.mst_role VALUES ('role002', 'Customer', 'Y', 'adm001', '2023-07-29 09:30:10.471256', 'adm001', '2023-07-29 09:30:10.471256');


--
-- TOC entry 2852 (class 0 OID 16450)
-- Dependencies: 203
-- Data for Name: mst_user; Type: TABLE DATA; Schema: crud; Owner: -
--

INSERT INTO crud.mst_user VALUES ('adm001', 'Rezky Pancanuary', 'role001', 'Bekasi', '6281311448761', 'Y', 'adm001', '2023-07-29 09:15:55.74466', 'adm001', '2023-07-29 09:15:55.74466');
INSERT INTO crud.mst_user VALUES ('usr001', 'Ahmad Setiabudi', 'role002', 'Medan', '628781229974', 'Y', 'adm001', '2023-07-29 09:19:24.840582', 'adm001', '2023-07-29 09:19:24.840582');
INSERT INTO crud.mst_user VALUES ('usr002', 'Fachrul Gunawan Hambali', 'role002', 'Jakarta', '6212928244782', 'Y', 'adm001', '2023-07-29 09:19:24.854242', 'adm001', '2023-07-29 09:19:24.854242');
INSERT INTO crud.mst_user VALUES ('usr003', 'Siti Nurbaya', 'role002', 'Surabaya', '621585522787', 'Y', 'adm001', '2023-07-29 09:19:24.855024', 'adm001', '2023-07-29 09:19:24.855024');


--
-- TOC entry 2848 (class 0 OID 16421)
-- Dependencies: 199
-- Data for Name: trx_cart; Type: TABLE DATA; Schema: crud; Owner: -
--



--
-- TOC entry 2851 (class 0 OID 16441)
-- Dependencies: 202
-- Data for Name: trx_log; Type: TABLE DATA; Schema: crud; Owner: -
--



--
-- TOC entry 2858 (class 0 OID 0)
-- Dependencies: 201
-- Name: trx_log_id_seq; Type: SEQUENCE SET; Schema: crud; Owner: -
--

SELECT pg_catalog.setval('crud.trx_log_id_seq', 1, false);


--
-- TOC entry 2718 (class 2606 OID 16437)
-- Name: mst_item mst_item_pk; Type: CONSTRAINT; Schema: crud; Owner: -
--

ALTER TABLE ONLY crud.mst_item
    ADD CONSTRAINT mst_item_pk PRIMARY KEY (id_item);


--
-- TOC entry 2712 (class 2606 OID 16420)
-- Name: mst_login mst_login_pk; Type: CONSTRAINT; Schema: crud; Owner: -
--

ALTER TABLE ONLY crud.mst_login
    ADD CONSTRAINT mst_login_pk PRIMARY KEY (id_login);


--
-- TOC entry 2710 (class 2606 OID 16411)
-- Name: mst_role mst_role_pk; Type: CONSTRAINT; Schema: crud; Owner: -
--

ALTER TABLE ONLY crud.mst_role
    ADD CONSTRAINT mst_role_pk PRIMARY KEY (id_role);


--
-- TOC entry 2724 (class 2606 OID 16457)
-- Name: mst_user mst_user_pk; Type: CONSTRAINT; Schema: crud; Owner: -
--

ALTER TABLE ONLY crud.mst_user
    ADD CONSTRAINT mst_user_pk PRIMARY KEY (id_user);


--
-- TOC entry 2715 (class 2606 OID 16428)
-- Name: trx_cart trx_cart_pk; Type: CONSTRAINT; Schema: crud; Owner: -
--

ALTER TABLE ONLY crud.trx_cart
    ADD CONSTRAINT trx_cart_pk PRIMARY KEY (id_cart);


--
-- TOC entry 2721 (class 2606 OID 16448)
-- Name: trx_log trx_log_pk; Type: CONSTRAINT; Schema: crud; Owner: -
--

ALTER TABLE ONLY crud.trx_log
    ADD CONSTRAINT trx_log_pk PRIMARY KEY (id);


--
-- TOC entry 2716 (class 1259 OID 16438)
-- Name: mst_item_id_item_idx; Type: INDEX; Schema: crud; Owner: -
--

CREATE UNIQUE INDEX mst_item_id_item_idx ON crud.mst_item USING btree (id_item);


--
-- TOC entry 2708 (class 1259 OID 16412)
-- Name: mst_role_id_role_idx; Type: INDEX; Schema: crud; Owner: -
--

CREATE UNIQUE INDEX mst_role_id_role_idx ON crud.mst_role USING btree (id_role DESC);


--
-- TOC entry 2722 (class 1259 OID 16458)
-- Name: mst_user_id_user_idx; Type: INDEX; Schema: crud; Owner: -
--

CREATE UNIQUE INDEX mst_user_id_user_idx ON crud.mst_user USING btree (id_user DESC);


--
-- TOC entry 2713 (class 1259 OID 16429)
-- Name: trx_cart_id_cart_idx; Type: INDEX; Schema: crud; Owner: -
--

CREATE UNIQUE INDEX trx_cart_id_cart_idx ON crud.trx_cart USING btree (id_cart);


--
-- TOC entry 2719 (class 1259 OID 16449)
-- Name: trx_log_id_idx; Type: INDEX; Schema: crud; Owner: -
--

CREATE UNIQUE INDEX trx_log_id_idx ON crud.trx_log USING btree (id DESC);


-- Completed on 2023-07-29 11:23:36

--
-- PostgreSQL database dump complete
--

