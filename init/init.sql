--
-- PostgreSQL database dump
--

-- Dumped from database version 15.13 (Debian 15.13-1.pgdg120+1)
-- Dumped by pg_dump version 15.13 (Debian 15.13-1.pgdg120+1)

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
-- Data for Name: task; Type: TABLE DATA; Schema: public; Owner: todo
--

INSERT INTO public.task VALUES (1, 'เขียน README', 'ให้เสร็จวันนี้', false, '2025-07-28 01:37:35.74906');
INSERT INTO public.task VALUES (2, 'ซื้อของ', 'วันนี้', false, '2025-07-28 01:56:54.308805');
INSERT INTO public.task VALUES (3, 'string', 'string', false, '2025-07-28 06:17:16.092');


--
-- Name: task_id_seq; Type: SEQUENCE SET; Schema: public; Owner: todo
--

SELECT pg_catalog.setval('public.task_id_seq', 2, true);


--
-- PostgreSQL database dump complete
--

