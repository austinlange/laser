--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

--
-- Name: category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.category_id_seq OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE categories (
    id integer DEFAULT nextval('category_id_seq'::regclass) NOT NULL,
    name character varying(255) NOT NULL,
    parent integer
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- Name: checkout_batch; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE checkout_batch (
    batch_id integer NOT NULL,
    batch_name character varying(100) NOT NULL,
    batch_date timestamp without time zone NOT NULL,
    batch_user integer NOT NULL,
    batch_description character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.checkout_batch OWNER TO postgres;

--
-- Name: checkout_status; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE checkout_status (
    status integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.checkout_status OWNER TO postgres;

--
-- Name: equipment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE equipment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.equipment_id_seq OWNER TO postgres;

--
-- Name: equipment; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE equipment (
    id integer DEFAULT nextval('equipment_id_seq'::regclass) NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    barcode character varying(255) NOT NULL,
    serial character varying(30) NOT NULL,
    quantity integer DEFAULT 1 NOT NULL,
    category integer DEFAULT 1 NOT NULL,
    longtext text,
    extrafield text,
    label character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.equipment OWNER TO postgres;

--
-- Name: request_batch; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE request_batch (
    batch_id integer NOT NULL,
    batch_uid integer,
    batch_date timestamp without time zone,
    batch_pickup timestamp without time zone
);


ALTER TABLE public.request_batch OWNER TO postgres;

--
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_id_seq OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE users (
    id integer DEFAULT nextval('user_id_seq'::regclass) NOT NULL,
    login character varying(20) NOT NULL,
    email character varying(50) DEFAULT NULL::character varying,
    password character varying(255) NOT NULL,
    name character varying(100) NOT NULL,
    phone character varying(12) DEFAULT NULL::character varying,
    created timestamp without time zone DEFAULT now() NOT NULL,
    checkout_enabled smallint DEFAULT 0 NOT NULL,
    status smallint DEFAULT 1 NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY categories (id, name, parent) FROM stdin;
1	Batteries	0
2	Batteries	0
3	Batteries	0
4	Batteries	0
5	Batteries	0
6	Batteries	0
7	Batteries	0
8	Batteries	0
9	Batteries	0
10	Batteries	0
11	Batteries	0
12	Batteries	0
13	Batteries	0
14	Batteries	0
15	Batteries	0
16	Batteries	0
17	Batteries	0
18	Batteries	0
19	Batteries	0
20	Batteries	0
21	Batteries	0
22	Batteries	0
23	Batteries	0
24	Batteries	0
25	Memory Cards	0
26	Microphones	0
27	Mixers	0
28	Monitors	0
29	Projectors	0
30	Room Keys	0
31	Still Cameras	0
32	Tablets	0
33	Tripods	0
34	Video Cameras	0
35	Wireless	0
36	Hard Drives	0
\.


--
-- Name: category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('category_id_seq', 37, true);


--
-- Data for Name: checkout_batch; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY checkout_batch (batch_id, batch_name, batch_date, batch_user, batch_description) FROM stdin;
278	MA-151-20110708	2011-07-08 11:52:02	151	desk checkout
279	MA-151-20110708	2011-07-08 11:55:12	151	desk checkout
280	MA-151-20110708	2011-07-08 11:55:38	151	desk checkout
281	MA-144-20110708	2011-07-08 12:20:11	144	desk checkout
283	MA-155-20110712	2011-07-12 09:16:48	155	desk checkout
284	MA-110-20110712	2011-07-12 09:19:17	110	desk checkout
285	MA-157-20110712	2011-07-12 09:22:00	157	desk checkout
286	MA-110-20110712	2011-07-12 09:23:17	110	desk checkout
288	MA-108-20110712	2011-07-12 10:02:20	108	desk checkout
289	MA-148-20110713	2011-07-13 09:19:25	148	desk checkout
290	MA-138-20110713	2011-07-13 09:44:46	138	desk checkout
291	MA-150-20110713	2011-07-13 09:46:22	150	desk checkout
292	MA-107-20110713	2011-07-13 09:48:42	107	desk checkout
293	MA-106-20110713	2011-07-13 09:56:09	106	desk checkout
294	MA-106-20110713	2011-07-13 09:59:10	106	desk checkout
295	MA-148-20110713	2011-07-13 13:31:40	148	desk checkout
296	MA-160-20110713	2011-07-13 13:32:42	160	desk checkout
297	MA-148-20110713	2011-07-13 13:41:06	148	desk checkout
298	MA-148-20110718	2011-07-18 13:02:35	148	desk checkout
300	MA-144-20110720	2011-07-20 20:43:15	144	Test 
301	MA-160-20110721	2011-07-21 15:14:20	160	desk checkout
303	MA-160-20110721	2011-07-21 15:39:47	160	desk checkout
304	MA-126-20110722	2011-07-22 10:33:06	126	desk checkout
305	MA-161-20110722	2011-07-22 15:02:31	161	desk checkout
306	MA-162-20110722	2011-07-22 16:22:40	162	desk checkout
307	MA-137-20110725	2011-07-25 10:58:55	137	desk checkout
308	MA-163-20110726	2011-07-26 15:34:41	163	desk checkout
309	MA-159-20110727	2011-07-27 10:58:31	159	desk checkout
310	MA-149-20110728	2011-07-28 16:00:28	149	desk checkout
311	MA-160-20110729	2011-07-29 11:07:08	160	desk checkout
312	MA-148-20110801	2011-08-01 14:22:14	148	desk checkout
313	MA-149-20110801	2011-08-01 18:04:41	149	desk checkout
314	MA-138-20110803	2011-08-03 11:25:48	138	desk checkout
315	MA-124-20110803	2011-08-03 12:27:22	124	desk checkout
316	MA-165-20110804	2011-08-04 14:45:58	165	desk checkout
317	MA-166-20110804	2011-08-04 16:37:21	166	desk checkout
318	MA-149-20110804	2011-08-04 17:14:33	149	desk checkout
320	MA-161-20110805	2011-08-05 12:41:07	161	desk checkout
321	MA-159-20110808	2011-08-08 10:05:24	159	desk checkout
322	MA-138-20110808	2011-08-08 13:58:19	138	desk checkout
323	MA-126-20110809	2011-08-09 10:04:36	126	desk checkout
324	MA-149-20110810	2011-08-10 14:46:40	149	desk checkout
325	MA-160-20110811	2011-08-11 13:35:20	160	desk checkout
326	MA-163-20110811	2011-08-11 18:48:23	163	desk checkout
327	MA-168-20110812	2011-08-12 13:44:15	168	desk checkout
328	MA-164-20110812	2011-08-12 14:21:49	164	desk checkout
329	MA-125-20110818	2011-08-18 09:12:35	125	desk checkout
330	MA-164-20110819	2011-08-19 12:59:41	164	desk checkout
331	MA-169-20110819	2011-08-19 13:39:23	169	desk checkout
332	MA-160-20110823	2011-08-23 14:43:04	160	desk checkout
333	MA-171-20110823	2011-08-23 14:52:41	171	desk checkout
334	MA-172-20110824	2011-08-24 13:37:21	172	desk checkout
335	MA-138-20110824	2011-08-24 14:10:39	138	desk checkout
336	MA-148-20110829	2011-08-29 16:02:53	148	desk checkout
337	MA-109-20110830	2011-08-30 16:14:03	109	desk checkout
338	MA-138-20110831	2011-08-31 16:05:23	138	desk checkout
339	MA-163-20110831	2011-08-31 16:39:13	163	desk checkout
340	MA-138-20110901	2011-09-01 10:57:39	138	desk checkout
341	MA-131-20110901	2011-09-01 11:15:57	131	desk checkout
342	MA-155-20110901	2011-09-01 15:51:58	155	desk checkout
343	MA-163-20110907	2011-09-07 12:44:55	163	desk checkout
344	MA-146-20110908	2011-09-08 14:40:53	146	desk checkout
345	MA-138-20110908	2011-09-08 14:41:34	138	desk checkout
346	MA-130-20110908	2011-09-08 14:51:32	130	desk checkout
347	MA-148-20110908	2011-09-08 15:18:50	148	desk checkout
348	MA-174-20110914	2011-09-14 17:47:42	174	desk checkout
349	MA-175-20110915	2011-09-15 15:42:14	175	desk checkout
350	MA-144-20110916	2011-09-16 12:58:12	144	desk checkout
351	MA-148-20110919	2011-09-19 16:56:48	148	desk checkout
352	MA-149-20110921	2011-09-21 20:27:30	149	desk checkout
353	MA-174-20110921	2011-09-21 20:49:51	174	desk checkout
354	MA-135-20110922	2011-09-22 13:00:55	135	desk checkout
355	MA-176-20110922	2011-09-22 19:40:34	176	desk checkout
356	MA-177-20110922	2011-09-22 19:44:37	177	desk checkout
357	MA-155-20110923	2011-09-23 09:39:56	155	desk checkout
358	MA-169-20110923	2011-09-23 09:41:31	169	desk checkout
359	MA-126-20110923	2011-09-23 12:21:46	126	desk checkout
360	MA-163-20110924	2011-09-24 12:57:30	163	desk checkout
361	MA-169-20110926	2011-09-26 11:33:09	169	desk checkout
362	MA-178-20110926	2011-09-26 15:57:32	178	desk checkout
363	MA-168-20110927	2011-09-27 12:31:52	168	desk checkout
364	MA-110-20110928	2011-09-28 16:32:54	110	desk checkout
365	MA-183-20110928	2011-09-28 16:42:49	183	desk checkout
366	MA-178-20110929	2011-09-29 11:57:45	178	desk checkout
367	MA-148-20110929	2011-09-29 16:27:14	148	desk checkout
368	MA-160-20110930	2011-09-30 14:47:01	160	desk checkout
369	MA-172-20111002	2011-10-02 15:26:42	172	desk checkout
370	MA-144-20111004	2011-10-04 13:50:40	144	desk checkout
375	MA-174-20111005	2011-10-05 20:49:42	174	desk checkout
376	MA-185-20111006	2011-10-06 16:00:25	185	desk checkout
377	MA-137-20111006	2011-10-06 16:06:18	137	desk checkout
378	MA-144-20111006	2011-10-06 19:04:02	144	desk checkout
379	MA-111-20111007	2011-10-07 15:40:26	111	desk checkout
380	MA-148-20111007	2011-10-07 16:30:34	148	desk checkout
381	MA-148-20111007	2011-10-07 16:31:49	148	desk checkout
382	MA-168-20111007	2011-10-07 18:15:42	168	desk checkout
385	MA-137-20111011	2011-10-11 17:32:53	137	desk checkout
386	MA-186-20111012	2011-10-12 18:45:20	186	desk checkout
387	MA-183-20111012	2011-10-12 18:47:27	183	desk checkout
388	MA-148-20111012	2011-10-12 20:41:19	148	desk checkout
389	MA-177-20111013	2011-10-13 16:56:33	177	desk checkout
390	MA-138-20111014	2011-10-14 12:18:15	138	desk checkout
391	MA-178-20111014	2011-10-14 14:15:17	178	desk checkout
392	MA-110-20111014	2011-10-14 16:39:19	110	desk checkout
393	MA-137-20111014	2011-10-14 18:04:51	137	desk checkout
394	MA-163-20111015	2011-10-15 13:35:34	163	desk checkout
395	MA-157-20111017	2011-10-17 18:06:12	157	desk checkout
396	MA-167-20111017	2011-10-17 18:54:17	167	desk checkout
398	MA-113-20111020	2011-10-20 13:57:55	113	desk checkout
399	MA-168-20111020	2011-10-20 15:13:51	168	desk checkout
400	MA-160-20111021	2011-10-21 10:25:38	160	desk checkout
401	MA-110-20111021	2011-10-21 14:43:13	110	desk checkout
402	MA-14-20111025	2011-10-25 11:42:54	14	My Request
404	MA-14-20111025	2011-10-25 12:17:27	14	My Request
406	MA-14-20111028	2011-10-28 12:19:54	14	My Request
409	MA-14-20111102	2011-11-02 12:48:06	14	My Request
410	MA-61-20120823	2012-08-23 15:40:31	61	desk checkout
411	MA-61-20120823	2012-08-23 17:18:58	61	desk checkout
412	MA-61-20120824	2012-08-24 16:00:50	61	desk checkout
413	MA-61-20120824	2012-08-24 16:10:31	61	desk checkout
414	MA-61-20120824	2012-08-24 16:50:10	61	desk checkout
415	MA-61-20120824	2012-08-24 16:54:49	61	desk checkout
416	MA-108-20120827	2012-08-27 16:34:23	108	desk checkout
417	MA-108-20120827	2012-08-27 16:35:37	108	desk checkout
418	MA-108-20120827	2012-08-27 16:51:25	108	desk checkout
419	MA-53-20120827	2012-08-27 16:55:28	53	desk checkout
420	MA-108-20120827	2012-08-27 17:21:32	108	desk checkout
421	MA-171-20120827	2012-08-27 17:26:20	171	desk checkout
422	MA-171-20120827	2012-08-27 17:28:11	171	desk checkout
\.


--
-- Data for Name: checkout_status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY checkout_status (status, name) FROM stdin;
2	Pending
1	Active
0	Complete
2	Pending
1	Active
0	Complete
\.


--
-- Data for Name: equipment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY equipment (id, name, barcode, serial, quantity, category, longtext, extrafield, label) FROM stdin;
1	Sony BP-U60 Large Battery	000141		1	15	\N		\N
2	Sony BP-U60 Large Battery	000144		1	15	\N		\N
3	Sony BP-U60 Large Battery	000303		1	15	\N		\N
4	Sony BP-U60 Large Battery	000148		1	15	\N		\N
5	Sony BP-U60 Large Battery	000156		1	15	\N		\N
6	Sony BP-U60 Large Battery	000309		1	15	\N		\N
7	Sony BP-U60 Large Battery	000310		1	15	\N		\N
8	Sony BP-U60 Large Battery	000145		1	15	\N		\N
9	Sony BP-U60 Large Battery	000155		1	15	\N		\N
10	Sony BP-U60 Large Battery	000149		1	15	\N		\N
11	Sony BP-U60 Large Battery	000143		1	15	\N		\N
12	Sony BP-U60 Large Battery	000153		1	15	\N		\N
13	Sony BP-U60 Large Battery	000307		1	15	\N		\N
14	Sony BP-U60 Large Battery	000147		1	15	\N		\N
15	Sony BP-U60 Large Battery	000142		1	15	\N		\N
16	Sony BP-U60 Large Battery	000223		1	15	\N		\N
17	Sony BP-U60 Large Battery	000158		1	15	\N		\N
18	Sony BP-U60 Large Battery	000306		1	15	\N		\N
19	Sony BP-U60 Large Battery	000312		1	15	\N		\N
20	Sony BP-U60 Large Battery	000154		1	15	\N		\N
21	Sony BP-U60 Large Battery	000146		1	15	\N		\N
22	Sony BP-U60 Large Battery	000311		1	15	\N		\N
23	Sony BP-U60 Large Battery	000157		1	15	\N		\N
24	Sony BP-U60 Large Battery	000304		1	15	\N		\N
25	Sony BP-U60 Large Battery	000305		1	15	\N		\N
26	Sony BP-U60 Large Battery	000152		1	15	\N		\N
27	Sony BP-U60 Large Battery	000200		1	15	\N		\N
28	Sony BP-U60 Large Battery	000150		1	15	\N		\N
29	Sony BP-U60 Large Battery	000151		1	15	\N		\N
30	Sony BP-U30 Small Battery	000376		1	15	\N		\N
31	Sony BP-U30 Small Battery	000374		1	15	\N		\N
32	Sony BP-U30 Small Battery	000378		1	15	\N		\N
33	Sony BP-U30 Small Battery	000377		1	15	\N		\N
34	Sony BP-U30 Small Battery	000373		1	15	\N		\N
35	Sony BP-U30 Small Battery	000380		1	15	\N		\N
36	Sony BP-U30 Small Battery	000379		1	15	\N		\N
37	Sony BP-U30 Small Battery	000372		1	15	\N		\N
38	Sony BP-U30 Small Battery	000381		1	15	\N		\N
39	Sony BP-U30 Small Battery	000375		1	15	\N		\N
40	Handycam NP-FH100 Large Battery	00012		1	15	\N		\N
41	Handycam NP-FH100 Large Battery	00018		1	15	\N		\N
42	Handycam NP-FH100 Large Battery	00017		1	15	\N		\N
43	Handycam NP-FH100 Large Battery	00016		1	15	\N		\N
44	Handycam NP-FH100 Large Battery	00023		1	15	\N		\N
45	Handycam NP-FH100 Large Battery	00020		1	15	\N		\N
46	Handycam NP-FH100 Large Battery	00027		1	15	\N		\N
47	Handycam NP-FH100 Large Battery	000220		1	15	\N		\N
48	Handycam NP-FH100 Large Battery	00026		1	15	\N		\N
49	Handycam NP-FH100 Large Battery	00013		1	15	\N		\N
50	Handycam NP-FH100 Large Battery	00019		1	15	\N		\N
51	Handycam NP-FH100 Large Battery	00024		1	15	\N		\N
52	Handycam NP-FH100 Large Battery	00025		1	15	\N		\N
53	Handycam NP-FH100 Large Battery	00022		1	15	\N		\N
54	Handycam NP-FH100 Large Battery	000221		1	15	\N		\N
55	Handycam NP-FH100 Large Battery	00010		1	15	\N		\N
56	Handycam NP-FH100 Large Battery	00011		1	15	\N		\N
57	Handycam NP-FH100 Large Battery	00014		1	15	\N		\N
58	Handycam NP-FH60 Small Battery			9	15	\N		\N
59	Panasonic VW-VBG260 Small Battery			9	15	\N		\N
60	Panasonic VW-VBG6 Large Battery	000615		1	15	\N		\N
61	Panasonic VW-VBG6 Large Battery	000631		1	15	\N		\N
62	Panasonic VW-VBG6 Large Battery	000633		1	15	\N		\N
63	Panasonic VW-VBG6 Large Battery	000620		1	15	\N		\N
64	Panasonic VW-VBG6 Large Battery	000623		1	15	\N		\N
65	Panasonic VW-VBG6 Large Battery	000628		1	15	\N		\N
66	Panasonic VW-VBG6 Large Battery	000626		1	15	\N		\N
67	Panasonic VW-VBG6 Large Battery	000627		1	15	\N		\N
68	Panasonic VW-VBG6 Large Battery	000614		1	15	\N		\N
69	Panasonic VW-VBG6 Large Battery	000629		1	15	\N		\N
70	Panasonic VW-VBG6 Large Battery	000617		1	15	\N		\N
71	Panasonic VW-VBG6 Large Battery	000625		1	15	\N		\N
72	Panasonic VW-VBG6 Large Battery	000624		1	15	\N		\N
73	Panasonic VW-VBG6 Large Battery	000619		1	15	\N		\N
74	Panasonic VW-VBG6 Large Battery	000616		1	15	\N		\N
75	Panasonic VW-VBG6 Large Battery	000618		1	15	\N		\N
76	Panasonic VW-VBG6 Large Battery	000630		1	15	\N		\N
77	Panasonic VW-VBG6 Large Battery	000622		1	15	\N		\N
78	Canon LP-E8 Battery	000793		1	15	\N		\N
79	Canon LP-E8 Battery	000792		1	15	\N		\N
80	Canon LP-E8 Battery	00796		1	15	\N		\N
81	Canon LP-E8 Battery	000797		1	15	\N		\N
82	Canon LP-E8 Battery	000791		1	15	\N		\N
83	Canon LP-E8 Battery	000795		1	15	\N		\N
84	Canon LP-E8 Battery	000790		1	15	\N		\N
85	Canon LP-E8 Battery	000807		1	15	\N		\N
86	Canon LP-E8 Battery	000789		1	15	\N		\N
87	Canon LP-E8 Battery	000806		1	15	\N		\N
88	Rebel NB-2LH Battery			3	15	\N		\N
89	Sony NP-FM500H Battery			3	15	\N		\N
90	Sony NP-BG1 Battery			15	15	\N		\N
91	Fuji NP-50 Battery			9	15	\N		\N
92	Fuji NP-45 Battery			12	15	\N		\N
93	Sony NP-F570 Battery			2	15	\N		\N
94	Sony NP-F330 Battery			1	15	\N		\N
95	Sony NP-F970 Battery			1	15	\N		\N
96	XLR 1 ft			2	17	\N		\N
97	XLR 6 ft			5	17	\N		\N
98	XLR 10 ft			21	17	\N		\N
99	XLR 25 ft			28	17	\N		\N
100	XLR 50 ft			1	17	\N		\N
101	XLR Right Angle			4	17	\N		\N
102	Orange Extension Cord			5	17	\N		\N
103	Black Extension Cord 10 ft			4	17	\N		\N
104	Black Extension Cord 25 ft			4	17	\N		\N
105	DVI-F to VGA-M			7	17	\N		\N
106	VGA-F to VGA-F			6	17	\N		\N
107	DVI-F to HDMI-F			2	17	\N		\N
108	DVI-F to DVI-F			5	17	\N		\N
109	DVI-F to HDMI-M			2	17	\N		\N
110	DVI-M to HDMI-F			4	17	\N		\N
111	DVI-M to RGB			2	17	\N		\N
112	HDMI-F to Mini HDMI-M			6	17	\N		\N
113	Right Angle HDMI			3	17	\N		\N
114	Mini HDMI-F to HDMI-M			1	17	\N		\N
115	Serial-F to USB-F			1	17	\N		\N
116	USB-F to Mouse/Keyboard			1	17	\N		\N
117	Belkin Headphone Splitter			7	17	\N		\N
118	Mini Display to VGA Dongle	000826		1	17	\N		\N
119	Mini Display to VGA Dongle	000827		1	17	\N		\N
120	Mini Display to VGA Dongle	000825		1	17	\N		\N
121	Mini Display to VGA Dongle	000822		1	17	\N		\N
122	Mini Display to VGA Dongle	000824		1	17	\N		\N
123	Mini Display to VGA Dongle	000881		1	17	\N		\N
124	Mini Display to DVI Dongle	000819		1	17	\N		\N
125	Mini Display to DVI Dongle	000821		1	17	\N		\N
126	Mini Display to DVI Dongle	000820		1	17	\N		\N
127	Mini Display to DVI Dongle	000882		1	17	\N		\N
128	DVI to VGA Dongle	000883		1	17	\N		\N
129	DVI to VGA Dongle	000884		1	17	\N		\N
130	DVI to VGA Dongle	000833		1	17	\N		\N
131	Display to DVI Dongle	000831		1	17	\N		\N
132	Display to DVI Dongle	000885		1	17	\N		\N
133	Display to DVI Dongle	000886		1	17	\N		\N
172	DSLR Tripod Plate	000845		1	18	\N		\N
173	DSLR Tripod Plate	000847		1	18	\N		\N
174	DSLR Tripod Plate	000848		1	18	\N		\N
175	DSLR Tripod Plate	000846		1	18	\N		\N
176	Steadycam	000805		1	18	\N		\N
177	Steadycam	000859		1	18	\N		\N
178	Lighstand Umbrella Adapters			4	18	\N		\N
179	"Mono 1/8"" Y-Splitter"			5	18	\N		\N
180	Multipurpose Hotshoe Adapter			12	18	\N		\N
181	Gray Card			2	18	\N		\N
182	"Mono 1/8"" Male To Male (25 ft)"			8	18	\N		\N
183	Vivitar 285HV Flash	000759		1	18	\N		\N
184	Vivitar 285HV Flash	000758		1	18	\N		\N
185	Vivitar 285HV Flash	000756		1	18	\N		\N
186	Vivitar 285HV Flash	000757		1	18	\N		\N
187	Canon T2i Power Adapter	000842		1	18	\N		\N
188	Canon T2i Power Adapter	000841		1	18	\N		\N
189	Canon T2i Power Adapter	000839		1	18	\N		\N
190	Canon T2i Power Adapter	000840		1	18	\N		\N
191	Canon T2i Power Adapter	000843		1	18	\N		\N
192	Canon T2i Power Adapter	000844		1	18	\N		\N
193	"Umbrella Silver 36"""	000861		1	18	\N		\N
194	"Umbrella Silver 36"""	000862		1	18	\N		\N
195	"Umbrella Silver 36"""	000863		1	18	\N		\N
196	"Umbrella Silver 36"""	000864		1	18	\N		\N
197	Sony SxS Card Reader	000132		1	19	\N		\N
198	Sony SxS Card Reader	000137		1	19	\N		\N
199	Sony SxS Card Reader	000138		1	19	\N		\N
200	Sony SxS Card Reader	000838		1	19	\N		\N
201	Sony SxS Card Reader	000133		1	19	\N		\N
202	Sony SxS Card Reader	000134		1	19	\N		\N
203	Sony SxS Card Reader	000135		1	19	\N		\N
204	Delkin Multi Card Reader	000809		1	19	\N		\N
205	Delkin Multi Card Reader	000810		1	19	\N		\N
206	Delkin Multi Card Reader	000808		1	19	\N		\N
207	GGI Multi Card Reader	000588		1	19	\N		\N
208	GGI Multi Card Reader	000592		1	19	\N		\N
209	Canon T2i Charger			10	20	\N		\N
210	Canon Rbel XT Charger	000897		1	20			
211	Fujifilm BC-45W Charger			16	20	\N		\N
212	Sony BC-CSGC Charger			13	20	\N		\N
213	Panasonic VW-AD20 Charger			10	20	\N		\N
214	Marantz DA66OPMD Charger			2	20	\N		\N
215	Sony Actiforce AC-VQH10 Charger			8	20	\N		\N
216	Fujifilm BC-45 Charger			3	20	\N		\N
217	Sony BC-VM10 Charger			1	20	\N		\N
218	Sony AC-L200B			9	20	\N		\N
219	Macbook Pro Power Adapter (85w)	000785		1	20			
220	Macbook Pro Power Adapter (85w)	000786		1	20			
221	Macbook Pro Power Adapter (85w)	000894		1	20			
222	Macbook Pro Power Adapter (85w)	000895		1	20			
223	Marantz Field Recorder	000478		1	21			
224	Marantz Field Recorder	000481	20040849020743	1	21	\N		\N
225	Marantz Field Recorder	000482	2004089020747	1	21	\N		\N
226	Marantz Field Recorder	000412	20030727011498	1	21	\N		\N
227	Marantz Field Recorder	000484	20048849020715	1	21	\N		\N
228	Marantz Field Recorder	000414	20030736014073	1	21	\N		\N
229	Marantz Field Recorder	000483	20040849020724	1	21	\N		\N
230	Sennheiser HD262 Headphones			12	22	\N		\N
231	Koss PortaPro Headphones			19	22	\N		\N
232	Koss Silver Headphones			5	22	\N		\N
233	Sony MDR-V6 Headphones	000857		1	22	\N		\N
234	Sony MDR-V6 Headphones	000858		1	22	\N		\N
235	Sony MDR-7502 Headphones	000073		1	22	\N		\N
236	Sony MDR-7502 Headphones	000054		1	22	\N		\N
237	Sony MDR-7502 Headphones	000071		1	22	\N		\N
238	Sony MDR-7502 Headphones	000064		1	22	\N		\N
239	Sony MDR-7502 Headphones	000072		1	22	\N		\N
240	Sony MDR-7502 Headphones	000065		1	22	\N		\N
241	Sony MDR-7502 Headphones	000066		1	22	\N		\N
242	Sony MDR-7502 Headphones	000060		1	22	\N		\N
243	Sony MDR-7502 Headphones	000078		1	22	\N		\N
244	Sony MDR-7502 Headphones	000470		1	22	\N		\N
245	Sony MDR-7502 Headphones	000069		1	22	\N		\N
246	Sony MDR-7502 Headphones	000061		1	22	\N		\N
247	Sony MDR-7502 Headphones	000537		1	22	\N		\N
248	Sony MDR-7502 Headphones	000058		1	22	\N		\N
249	Sony MDR-7502 Headphones	000766		1	22	\N		\N
250	M-Audio Studiophile Headphones	000085		1	22	\N		\N
251	M-Audio Studiophile Headphones	000089		1	22	\N		\N
252	M-Audio Studiophile Headphones	000087		1	22	\N		\N
253	M-Audio Studiophile Headphones	000086		1	22	\N		\N
254	M-Audio Studiophile Headphones	000080		1	22	\N		\N
255	M-Audio Studiophile Headphones	000090		1	22	\N		\N
256	Sony MDR-7506 Headphones	000572		1	22	\N		\N
257	Sony MDR-7506 Headphones	000571		1	22	\N		\N
258	Sony MDR-7506 Headphones	000570		1	22	\N		\N
259	Sony MDR-7509HD Headphones	000083		1	22	\N		\N
260	Sony MDR-7509HD Headphones	000082		1	22	\N		\N
261	Macbook Pro 1	000338	W891226C8Q2	1	23	\N		\N
262	Macbook Pro 2	000336	W88475BV1GA	1	23	\N		\N
263	Macbook Pro 3			1	23	\N		\N
264	Macbook Pro 4	000576	W89421FH642	1	23	\N		\N
265	Light Kit			1	24	\N		\N
266	Reflector Lasto Lite	000467		1	24	\N		\N
267	Reflector Lasto Lite	000762		1	24	\N		\N
268	Reflector Impact	000468		1	24	\N		\N
269	Reflector Impact	000761		1	24	\N		\N
270	Reflector Impact	000469		1	24	\N		\N
271	Chroma Green Pop Up Disc	000594		1	24	\N		\N
272	Chroma Green Invisibility Cloak			1	24	\N		\N
273	Silk White 5'x6'	000865		1	24	\N		\N
274	Sony SxS Pro 8GB Memory Card	000362		1	25	\N		\N
275	Sony SxS Pro 8GB Memory Card	000363		1	25	\N		\N
276	Sony SxS Pro 8GB Memory Card	000364		1	25	\N		\N
277	Sony SxS Pro 8GB Memory Card	000365		1	25	\N		\N
278	Sony SxS Pro 8GB Memory Card	000366		1	25	\N		\N
279	Sony SxS Pro 8GB Memory Card	000367		1	25	\N		\N
280	Sony SxS Pro 8GB Memory Card	000368		1	25	\N		\N
281	Sony SxS Pro 8GB Memory Card	000369		1	25	\N		\N
282	Sony SxS Pro 8GB Memory Card	000370		1	25	\N		\N
283	Sony SxS Pro 8GB Memory Card	000371		1	25	\N		\N
284	Sony SxS Pro 16GB Memory Card	000159		1	25	\N		\N
285	Sony SxS Pro 16GB Memory Card	000160		1	25	\N		\N
286	Sony SxS Pro 16GB Memory Card	000161		1	25	\N		\N
287	Sony SxS Pro 16GB Memory Card	000163		1	25	\N		\N
288	Sony SxS Pro 16GB Memory Card	000164		1	25	\N		\N
289	Sony SxS Pro 16GB Memory Card	000165		1	25	\N		\N
290	Sony SxS Pro 16GB Memory Card	000166		1	25	\N		\N
291	Sony SxS Pro 16GB Memory Card	000167		1	25	\N		\N
292	Sony SxS Pro 16GB Memory Card	000168		1	25	\N		\N
293	Sony SxS Pro 16GB Memory Card	000169		1	25	\N		\N
294	Sony SxS Pro 16GB Memory Card	000170		1	25	\N		\N
295	Sony SxS Pro 16GB Memory Card	000171		1	25	\N		\N
296	Sony SxS Pro 16GB Memory Card	000172		1	25	\N		\N
297	Sony SxS Pro 16GB Memory Card	000173		1	25	\N		\N
298	Sony SxS Pro 16GB Memory Card	000174		1	25	\N		\N
299	Sony SxS Pro 16GB Memory Card	000175		1	25	\N		\N
300	Sony SxS Pro 16GB Memory Card	000176		1	25	\N		\N
301	Sony SxS Pro 16GB Memory Card	000177		1	25	\N		\N
302	Sony SxS Pro 16GB Memory Card	000179		1	25	\N		\N
303	Sony SxS Pro 16GB Memory Card	000181		1	25	\N		\N
304	Sony SxS Pro 16GB Memory Card	000184		1	25	\N		\N
305	Sony SxS Pro 16GB Memory Card	000185		1	25	\N		\N
306	Sony SxS Pro 16GB Memory Card	000182		1	25			
307	Sony SxS Pro 16GB Memory Card	000188		1	25	\N		\N
308	Panasonic 16GB SD Memory Card			10	25	\N		\N
309	Sandisk Compact Flash 1 GB Memory Card			1	25	\N		\N
310	Sony Compact Flash 4GB Memory Card			5	25	\N		\N
311	Delkin SD Card 16 GB Class VI eFilm Pro Memory Card			5	25	\N		\N
312	Delkin SD Card 16 GB Class VI Secure Digital Memory Card			8	25	\N		\N
313	Fujifilm SD 2 GB Memory Card			17	25	\N		\N
314	Sony Memory Stick Pro Duo 16 GB Memory Card			4	25	\N		\N
315	Audio Technica ATM410 Dynamic Microphone	000419		1	26	\N		\N
316	Audio Technica ATM410 Dynamic Microphone	000418		1	26	\N		\N
317	Audio Technica AT4051a Condensor Microphone	000421		1	26	\N		\N
318	Audio Technica AT4051a Condensor Microphone	000422		1	26	\N		\N
319	Audio Technica ATM450 Condensor Microphone	000415		1	26	\N		\N
320	Audio Technica ATM450 Condensor Microphone	000416		1	26	\N		\N
321	Audio Technica ATM250DE Microphone	000420		1	26	\N		\N
322	Audio Technica AT4050 Condensor Microphone	000423		1	26	\N		\N
323	Shure SM57 Dynamic Microphone	000811		1	26	\N		\N
324	Shure SM57 Dynamic Microphone	000812		1	26	\N		\N
325	Shure SM57 Dynamic Microphone	000813		1	26	\N		\N
326	Shure SM57 Dynamic Microphone	000814		1	26	\N		\N
327	Shure SM57 Dynamic Microphone	000815		1	26	\N		\N
328	Shure SM58 Vocal Microphone	000816		1	26	\N		\N
329	Shure SM58 Vocal Microphone	000817		1	26	\N		\N
330	Panasonic MC70 Shotgun Microphone	000662		1	26	\N		\N
331	Panasonic MC70 Shotgun Microphone	000661		1	26	\N		\N
332	Panasonic MC70 Shotgun Microphone	000663		1	26	\N		\N
333	Panasonic MC70 Shotgun Microphone	000658		1	26	\N		\N
334	Panasonic MC70 Shotgun Microphone	000656		1	26	\N		\N
335	Panasonic MC70 Shotgun Microphone	000664		1	26	\N		\N
336	Panasonic MC70 Shotgun Microphone	000660		1	26	\N		\N
337	Panasonic MC70 Shotgun Microphone	000659		1	26	\N		\N
339	Panasonic MC70 Shotgun Microphone	000659		1	26			
340	Sony ECM-673 Shotgun Microphone	000270		1	26	\N		\N
341	Sony ECM-673 Shotgun Microphone	000277		1	26	\N		\N
342	Sony ECM-673 Shotgun Microphone	000275		1	26	\N		\N
343	Sony ECM-673 Shotgun Microphone	000272		1	26	\N		\N
344	Sony ECM-673 Shotgun Microphone	000273		1	26	\N		\N
345	Sony ECM-673 Shotgun Microphone	000278		1	26	\N		\N
346	Sony ECM-673 Shotgun Microphone	000271		1	26	\N		\N
347	Sony ECM-673 Shotgun Microphone	000276		1	26	\N		\N
348	Sony ECM-673 Shotgun Microphone	000269		1	26			
349	Sony ECM-673 Shotgun Microphone	need		1	26	\N		\N
350	Audio Technica AT8415 Boom Pole	000529		1	26	\N		\N
351	Audio Technica AT8415 Boom Pole	000526		1	26	\N		\N
352	Audio Technica AT8415 Boom Pole	000527		1	26	\N		\N
353	Audio Technica AT8415 Boom Pole	000524		1	26	\N		\N
354	Gitzo 6557 Boom Pole	000450		1	26	\N		\N
355	Gitzo 6557 Boom Pole	000451		1	26	\N		\N
356	Gitzo 6557 Boom Pole	000458		1	26	\N		\N
357	K Tek Boom Pole	000452		1	26	\N		\N
358	K Tek Boom Pole	000525		1	26	\N		\N
359	K Tek Boom Pole	000853		1	26	\N		\N
360	Rode NTG-2 Shotgun Microphone	000541		1	26	\N		\N
361	Rode NTG-2 Shotgun Microphone	000539		1	26	\N		\N
362	Rode NTG-2 Shotgun Microphone	000542		1	26	\N		\N
363	Rode NTG-2 Shotgun Microphone	000543		1	26	\N		\N
364	Rode NTG-2 Shotgun Microphone	000538		1	26	\N		\N
365	Rode NTG-2 Shotgun Microphone	000540		1	26	\N		\N
366	Senheizer Shotgun Microphone	000852		1	26	\N		\N
367	Senheizer Shotgun Microphone	000854		1	26	\N		\N
368	Senheizer Shotgun Microphone	000459		1	26	\N		\N
369	Senheizer Shotgun Microphone	000448		1	26	\N		\N
370	Handycam ECM-HG21 Shotgun Microphone	000345		1	26	\N		\N
371	Handycam ECM-HG21 Shotgun Microphone	000344		1	26	\N		\N
372	Handycam ECM-HG21 Shotgun Microphone	000342		1	26	\N		\N
373	Handycam ECM-HG21 Shotgun Microphone	000346		1	26	\N		\N
374	Sony ECM-NV1 Shotgun Microphone	000764		1	26	\N		\N
375	Sony ECM-NV1 Shotgun Microphone	000765		1	26	\N		\N
376	Beachtek DXA-6A Mixer	000492		1	27	\N		\N
377	Beachtek DXA-6A Mixer	000488		1	27	\N		\N
378	Beachtek DXA-6A Mixer	000489		1	27	\N		\N
379	Beachtek DXA-6A Mixer	000578		1	27	\N		\N
380	Beachtek DXA-6A Mixer	000579		1	27	\N		\N
381	Beachtek DXA-6A Mixer	000487		1	27	\N		\N
382	SoundDevices 302 Mixer	000530	400809140000	1	27	\N		\N
383	SoundDevices 302 Mixer	000531	400809133003	1	27	\N		\N
384	SoundDevices 302 Mixer	000453	400808164002	1	27	\N		\N
385	SoundDevices MixPre	000485	50906095026	1	27	\N		\N
386	SoundDevices MixPre	000532	51009121003	1	27	\N		\N
387	SoundDevices MixPre	000480	50906129024	1	27	\N		\N
388	SoundDevices MixPre	000534	510001124023	1	27	\N		\N
389	SoundDevices MixPre	000533	510001124023	1	27	\N		\N
390	Sony AC-LMD9 Monitor	000205	1016140	1	28	\N		\N
391	Sony AC-LMD9 Monitor	000207	1016133	1	28	\N		\N
392	Sony AC-LMD9 Monitor	000204	1016155	1	28	\N		\N
394	Sony LMD-2030W Monitor	000126		1	28	\N		\N
395	Sony LMD-2030W Monitor	000129		1	28	\N		\N
396	Sony LMD-2030W Monitor	000127		1	28	\N		\N
397	Sony LMD-2030W Monitor	000124		1	28	\N		\N
398	Sony LMD-2030W Monitor	000128		1	28	\N		\N
399	Sony AC-LMD9 Monitor	000205	1016140	1	28	\N		\N
400	Sony AC-LMD9 Monitor	000207	1016133	1	28	\N		\N
401	Sony AC-LMD9 Monitor	000204	1016155	1	28	\N		\N
402	Sony AC-LMD9 Monitor	000208	1016136	1	28	\N		\N
403	Sony LMD-2030W Monitor	000126		1	28	\N		\N
404	Sony LMD-2030W Monitor	000129		1	28	\N		\N
405	Sony LMD-2030W Monitor	000127		1	28	\N		\N
406	Sony LMD-2030W Monitor	000124		1	28	\N		\N
407	Sony LMD-2030W Monitor	000128		1	28	\N		\N
408	Pico Optoma Projector	000836		1	29	\N		\N
409	Edit Studio Key Card	000582		1	30	\N		\N
410	Edit Studio Key Card	000583		1	30	\N		\N
411	Edit Studio Key Card	000584		1	30	\N		\N
412	Mastering Student Key Card	000770		1	30	\N		\N
413	Mastering Student Key Card	000771		1	30	\N		\N
414	Mastering Student Key Card	000772		1	30	\N		\N
415	Mastering Student Key Card	000773		1	30	\N		\N
416	Animation Room Key Card	000566		1	30	\N		\N
417	Animation Room Key Card	000567		1	30	\N		\N
418	Animation Room Key Card	000775		1	30	\N		\N
419	Classroom A Key Card	000559		1	30	\N		\N
420	Classroom A Key Card	000747		1	30	\N		\N
421	Classroom B Key Card	000560		1	30	\N		\N
422	Classroom B Key Card	000562		1	30	\N		\N
423	Classroom C Key Card	000561		1	30	\N		\N
424	Classroom C Key Card	000563		1	30	\N		\N
425	Recording Studio Key Card	000568		1	30	\N		\N
426	Recording Studio Key Card	000569		1	30	\N		\N
427	B5 Key Card	000564		1	30	\N		\N
428	B5 Key Card	000565		1	30	\N		\N
429	B5 Key Card	000774		1	30	\N		\N
430	Canon Rebel T2i DSLR Camera	000753	1122509518	1	31	\N	Animation 	\N
431	Canon Rebel T2i DSLR Camera	000754	1222735956	1	31	\N	Animation 	\N
432	Canon Rebel T2i DSLR Camera	000755	1222735960	1	31	\N	Animation 	\N
433	Canon Rebel T2i DSLR Camera	000744	923406473	1	31	\N		\N
434	Canon Rebel T2i DSLR Camera	000743	923406573	1	31	\N		\N
435	Canon Rebel T2i DSLR Camera	000779	142307165	1	31			
436	Canon Rebel T2i DSLR Camera	000745	923406619	1	31			
437	Canon Rebel T2i DSLR Camera	000780		1	31			
438	Canon Rebel T2i DSLR Camera	000742	923406455	1	31	\N		\N
439	Canon Rebel T2i DSLR Camera	000782	1423907298	1	31	\N		\N
440	Canon Rebel XT DSLR Camera	000655	2020704414	1	31	\N		\N
441	Canon Rebel XT DSLR Camera	000752	2720712375	1	31	\N		\N
442	Sony A300 DSLR Camera	000029		1	31	\N		\N
443	Sony A300 DSLR Camera	000028	1102902	1	31	\N		\N
444	Sony A300 DSLR Camera	000030	1103064	1	31	\N		\N
445	Fuji F200 Camera	000498	9AA40418	1	31	\N		\N
446	Fuji F200 Camera	000496	9AA40417	1	31	\N		\N
447	Fuji F200 Camera	000495	9AA40414	1	31	\N		\N
448	Fuji F200 Camera	000494	9AA40411	1	31	\N		\N
449	Fuji F200 Camera	000447	9AA40420	1	31	\N		\N
450	Fuji F200 Camera	000497	9AA40412	1	31	\N		\N
451	Fuji F200 Camera	000501	9AA40413	1	31	\N		\N
452	Sony Cybershot DSC-H10 Camera	000037	641667	1	31	\N	Missing Le	\N
453	Sony Cybershot DSC-H10 Camera	000036	505832	1	31	\N	No Neck St	\N
454	Sony Cybershot DSC-H10 Camera	000032	505829	1	31	\N		\N
455	Sony Cybershot DSC-H10 Camera	000041	505826	1	31	\N		\N
456	Sony Cybershot DSC-H10 Camera	000045	505839	1	31	\N		\N
457	Sony Cybershot DSC-H10 Camera	000025	641670	1	31	\N		\N
458	Sony Cybershot DSC-H10 Camera	000044	505835	1	31	\N		\N
459	Sony Cybershot DSC-H10 Camera	000043	505828	1	31	\N		\N
460	Sony Cybershot DSC-H10 Camera	000034	505824	1	31	\N		\N
461	Sony Cybershot DSC-H10 Camera	000033	505841	1	31	\N		\N
462	Sony Cybershot DSC-H10 Camera	000031	505823	1	31	\N		\N
463	Sony Cybershot DSC-H10 Camera	000039	505843	1	31	\N		\N
464	Sony Cybershot DSC-H10 Camera	000038	505838	1	31	\N		\N
465	Sony Cybershot DSC-H10 Camera	000042	505827	1	31	\N		\N
466	Sony Cybershot DSC-H10 Camera	000040	505834	1	31	\N		\N
467	Fuji Finepix Z30 Camera	000511	9S111143	1	31	\N		\N
468	Fuji Finepix Z30 Camera	000507	9S111144	1	31	\N		\N
469	Fuji Finepix Z30 Camera	000510	9S111142	1	31	\N		\N
470	Fuji Finepix Z30 Camera	000508	9S111147	1	31	\N		\N
471	Fuji Finepix Z30 Camera	000506	9S111148	1	31	\N		\N
472	Fuji Finepix Z30 Camera	000504	9S111150	1	31	\N		\N
473	Fuji Finepix Z30 Camera	000502	9S111146	1	31	\N		\N
474	Fuji Finepix Z30 Camera	000509	9S111141	1	31	\N		\N
475	Fuji Finepix Z30 Camera	000505	9S111149	1	31	\N		\N
476	Fuji Finepix Z30 Camera	000503	9S111145	1	31	\N		\N
477	Wacom PTK-440 Tablet	000866	9HAT001249	1	32	\N		\N
478	Sachtler FSB2 Tripod	000101	0207K081962	1	33	\N		\N
479	Sachtler FSB2 Tripod	000099	0207J081877	1	33	\N		\N
480	Sachtler FSB2 Tripod	000098	0207K081922	1	33	\N		\N
481	Sachtler FSB2 Tripod	000104	0207K081925	1	33	\N		\N
482	Sachtler FSB2 Tripod	000724	0207B102937	1	33	\N		\N
483	Sachtler FSB2 Tripod	000095	0207J082066	1	33	\N		\N
484	Sachtler FSB2 Tripod	000102	0207K081990	1	33	\N		\N
485	Sachtler FSB2 Tripod	000107	0207J082074	1	33	\N		\N
486	Sachtler FSB2 Tripod	000106	0207J081919	1	33	\N		\N
487	Sachtler FSB2 Tripod	000103	0207J081869	1	33	\N		\N
488	Sachtler FSB2 Tripod	000729	0207B102889	1	33	\N		\N
489	Sachtler FSB2 Tripod	000109	0207J082067	1	33	\N		\N
490	Sachtler FSB2 Tripod	000726	0207C102950	1	33	\N		\N
491	Sachtler FSB2 Tripod	000096	0207J081857	1	33	\N		\N
492	Sachtler FSB2 Tripod	000108	0207J081835	1	33	\N		\N
493	Sachtler FSB2 Tripod	000105		1	33	\N		\N
494	Sachtler FSB2 Tripod	000725		1	33	\N		\N
495	Sachtler FSB2 Tripod	000727	0207B102936	1	33	\N		\N
496	Sachtler FSB2 Tripod	000723	0207B102911	1	33	\N		\N
497	Sachtler FSB2 Tripod	000097	0207J082086	1	33	\N		\N
498	Sachtler FSB6 Tripod	000093	S2003G080465	1	33	\N		\N
499	Sachtler FSB6 Tripod	000094	S2003G080483	1	33	\N		\N
500	Sachtler FSB6 Tripod	000092	S2003G080481	1	33	\N		\N
501	Sachtler FSB6 Tripod	000091	S2003G080486	1	33	\N		\N
502	Manfroto 501 Tripod	000849	3211114BJD06	1	33	\N		\N
503	Manfrotto 055XDB Tripod	000678	324RC2	1	33	\N		\N
504	Manfrotto 351MVB2 Tripod	000679	M490219	1	33	\N		\N
505	Bogen 3051 Tripod	000860		1	33	\N		\N
534	Sony EX-1 Camera	000110	111249	1	34	\N		\N
535	Sony EX-1 Camera	000111	111241	1	34	\N		\N
536	Sony EX-1 Camera	000112	111261	1	34	\N		\N
537	Sony EX-1 Camera	000113	111404	1	34	\N		\N
538	Sony EX-1 Camera	000114	111209	1	34	\N		\N
539	Sony EX-1 Camera	000115	110759	1	34	\N		\N
540	Sony EX-1 Camera	000116	need	1	34	\N		\N
541	Sony EX-1 Camera	000117	111121	1	34	\N		\N
542	Sony EX-1 Camera	000118	need	1	34	\N		\N
543	Sony EX-1 Camera	000222	need	1	34	\N		\N
544	Panasonic 150P Camera	000635	AOTADA0256	1	34	\N		\N
545	Panasonic 150P Camera	000630	AOTADA0254	1	34	\N		\N
546	Panasonic 150P Camera	000637	AOTADA0251	1	34	\N		\N
547	Panasonic 150P Camera	000641	AOTADA0240	1	34	\N		\N
548	Panasonic 150P Camera	000644	AOTADA0191	1	34	\N		\N
549	Panasonic 150P Camera	000643	AOTADA0173	1	34	\N		\N
550	Panasonic 150P Camera	000636	AOTADA0259	1	34	\N		\N
551	Panasonic 150P Camera	000638	AOTADA0206	1	34	\N		\N
552	Panasonic 150P Camera	000642	AOTADA0172	1	34	\N		\N
553	Panasonic 150P Camera	000639	A0TADA0195	1	34			
554	Sony Handycam Camera	000001	197729	1	34	\N		\N
555	Sony Handycam Camera	000002	197727	1	34	\N		\N
556	Sony Handycam Camera	000003	197734	1	34	\N		\N
557	Sony Handycam Camera	000004	197751	1	34	\N		\N
558	Sony Handycam Camera	000005	183480	1	34	\N		\N
559	Sony Handycam Camera	000006	197759	1	34	\N		\N
560	Sony Handycam Camera	000008	204069	1	34	\N		\N
561	Sony Handycam Camera	000009	203407	1	34	\N		\N
562	Sony Handycam Camera	000219	203389	1	34	\N		\N
563	Sony Handycam Camera	000006	197759	1	34			
564	Flip Ultra HD Camera	000697	MB1002918997	1	34	\N		\N
565	Flip Ultra HD Camera	000690	MB1002918634	1	34	\N		\N
566	Flip Ultra HD Camera	000702	MB0914508696	1	34	\N		\N
567	Flip Ultra HD Camera	000552	MB1002918915	1	34	\N		\N
568	Flip Ultra HD Camera	000692	MB1002909206	1	34	\N		\N
569	Flip Ultra HD Camera	000441	LB0906301174	1	34	\N		\N
570	Flip Ultra HD Camera	000440	LB0906301062	1	34	\N		\N
571	Flip Ultra HD Camera	000544	MB0914508391	1	34	\N		\N
572	Flip Ultra HD Camera	000691	MB1002918717	1	34	\N		\N
573	Flip Ultra HD Camera	000850	MB0914508677	1	34	\N		\N
574	Flip Ultra HD Camera	000709	MB1002916657	1	34	\N		\N
575	Flip Ultra HD Camera	000714	MB1002909269	1	34	\N		\N
576	Flip Ultra HD Camera	000718	MB1002916670	1	34	\N		\N
577	Flip Ultra HD Camera	000698	MB1002918998	1	34	\N		\N
578	Flip Ultra HD Camera	000712	MB1002918938	1	34	\N		\N
579	Flip Ultra HD Camera	000707	MB1002918653	1	34	\N		\N
580	Flip Ultra HD Camera	000710	MB1002909653	1	34	\N		\N
581	Flip Ultra HD Camera	000706	MB1002918595	1	34	\N		\N
582	Flip Ultra HD Camera	000695	MB1002918740	1	34	\N		\N
583	Flip Ultra HD Camera	000696	MB1002917937	1	34	\N		\N
584	Flip Ultra HD Camera	000548	MB0914508286	1	34	\N		\N
585	Flip Ultra HD Camera	000694	MB1002916721	1	34	\N		\N
586	Flip Ultra HD Camera	000713	MB1002918789	1	34	\N		\N
587	Flip Ultra HD Camera	000701	MB1002921531	1	34	\N		\N
588	Flip Ultra HD Camera	000705	MB1002918331	1	34	\N		\N
589	Flip Ultra HD Camera	000704	MB1002918331	1	34	\N		\N
590	Flip Ultra HD Camera	000715	MB1002918673	1	34	\N		\N
591	Flip Ultra HD Camera	000711	MB1002909690	1	34	\N		\N
592	Flip Ultra HD Camera	000716	MB1002921538	1	34	\N		\N
593	Flip Ultra HD Camera	000703	MB1002909576	1	34	\N		\N
594	Flip Ultra HD Camera	000851	MB0914508389	1	34	\N		\N
595	Flip Ultra HD Camera	000601	MB0928128035	1	34	\N		\N
596	Flip Ultra HD Camera	000708	MB1002918932	1	34	\N		\N
597	Senheiser SKP100 Wireless Adapter	000855		1	35	\N		\N
598	Senheiser SKP100 Wireless Adapter	000856		1	35	\N		\N
599	Senheiser SKP100 Wireless Adapter	000454		1	35	\N		\N
600	Sony UTXP1 Wireless Adapter	000225		1	35	\N		\N
601	Sony UTXP1 Wireless Adapter	000234		1	35	\N		\N
602	Sony UTXP1 Wireless Adapter	000231		1	35	\N		\N
603	Sony UTXP1 Wireless Adapter	000291		1	35	\N		\N
604	Sony UTXP1 Wireless Adapter	000237		1	35	\N		\N
605	Sony UTXP1 Wireless Adapter	000228		1	35	\N		\N
606	Sony UTXP1 Wireless Adapter	000256		1	35	\N		\N
607	Sony UTXP1 Wireless Adapter	000245		1	35	\N		\N
608	Sony UTXP1 Wireless Adapter	000240		1	35	\N		\N
609	Sony UTXP1 Wireless Adapter	000288		1	35	\N		\N
610	Sony URX-P2 Wireless Receiver	000255		1	35	\N	A1	\N
611	Sony URX-P2 Wireless Receiver	000233		1	35	\N	A2	\N
612	Sony URX-P2 Wireless Receiver	000239		1	35	\N	B1	\N
613	Sony URX-P2 Wireless Receiver	BROKEN		1	35	\N	B2	\N
614	Sony URX-P2 Wireless Receiver	000244		1	35	\N	C1	\N
615	Sony URX-P2 Wireless Receiver	000253		1	35	\N	C2	\N
616	Sony URX-P2 Wireless Receiver	000268		1	35	\N	D1	\N
617	Sony URX-P2 Wireless Receiver	000258		1	35	\N	D2	\N
618	Sony URX-P2 Wireless Receiver	000249		1	35	\N	E1	\N
619	Sony URX-P2 Wireless Receiver	000293		1	35	\N	E2	\N
620	Sony URX-P2 Wireless Receiver	000247		1	35	\N	F1	\N
621	Sony URX-P2 Wireless Receiver	000266		1	35	\N	F2	\N
622	Sony URX-P2 Wireless Receiver	000230		1	35	\N	G1	\N
623	Sony URX-P2 Wireless Receiver	000227		1	35	\N	G2	\N
624	Sony URX-P2 Wireless Receiver	000242		1	35	\N	H1	\N
625	Sony URX-P2 Wireless Receiver	000262		1	35	\N	H2	\N
626	Sony URX-P2 Wireless Receiver	000260		1	35	\N	I1	\N
627	Sony URX-P2 Wireless Receiver	000251	101777	1	35		I2	
628	Sony UTX-B2 Wireless Transmitter	000254		1	35	\N	A1	\N
629	Sony UTX-B2 Wireless Transmitter	000232		1	35	\N	A2	\N
630	Sony UTX-B2 Wireless Transmitter	000238		1	35	\N	B1	\N
631	Sony UTX-B2 Wireless Transmitter	000289	101223	1	35		B2	
632	Sony UTX-B2 Wireless Transmitter	000235		1	35	\N	C1	\N
633	Sony UTX-B2 Wireless Transmitter	000252		1	35	\N	C2	\N
634	Sony UTX-B2 Wireless Transmitter	000267		1	35	\N	D1	\N
635	Sony UTX-B2 Wireless Transmitter	000257		1	35	\N	D2	\N
636	Sony UTX-B2 Wireless Transmitter	000292		1	35	\N	E1	\N
637	Sony UTX-B2 Wireless Transmitter	000248		1	35	\N	E2	\N
638	Sony UTX-B2 Wireless Transmitter	000265		1	35	\N	F1	\N
639	Sony UTX-B2 Wireless Transmitter	000246		1	35	\N	F2	\N
640	Sony UTX-B2 Wireless Transmitter	000229		1	35	\N	G1	\N
641	Sony UTX-B2 Wireless Transmitter	000226		1	35	\N	G2	\N
642	Sony UTX-B2 Wireless Transmitter	000241		1	35	\N	H1	\N
643	Sony UTX-B2 Wireless Transmitter	000261		1	35	\N	H2	\N
644	Sony UTX-B2 Wireless Transmitter	000259		1	35	\N	I1	\N
645	Sony UTX-B2 Wireless Transmitter	000263		1	35	\N	I2	\N
646	Senheiser EW100 G2 Wireless Kits			4	35	\N		\N
647	Canon ZR850	000554		1	34		\N	
648	Sunpakl 5800D	000677		1	33		\N	
650	Macbook MiM 01	000580	-	1	23		\N	
651	Macbook MiM 01	000580		1	23		\N	
655	Macbook MiM 01	000580		1	23		\N	
656	Sunpak 5800D	000677		1	33		\N	
657	Canon ZR850	000554		1	34		\N	
658	Handycam NP-FH100 Large Battery			1	15		\N	
659	Sony UTX-B2 Wireless Transmitter	000250		1	35		\N	
660	Sony UTX-B2 Wireless Transmitter			1	35		\N	
661	Sony UTX-B2 Wireless Transmitter			1	35		\N	
662	Sony URX-P2 Wireless Receiver	000290		1	35		\N	
663	Sony URX-P2 Wireless Receiver			1	35		\N	
664	Sony URX-P2 Wireless Receiver			1	35		\N	
665	Sony URX-P2 Wireless Receiver			1	35		\N	
666	Panasonic VW-VBG6 Large Battery			1	15		\N	
667	Midland Walkie Talkies Charger	000892		1	35		\N	
668	Midland Walkie Talkies			1	35		\N	
669	Midland Walkie Talkies			1	35		\N	
670	Midland Walkie Talkies			1	35		\N	
671	Midland Walkie Talkies			1	35		\N	
672	Cullmann Primax 150 tripod	000893		1	33		\N	
673	Macbook Pro Charger			1	20		\N	
674	Macbook Pro Charger			1	20		\N	
675	Macbook Pro Charger			1	20		\N	
676	Sony SxS Pro 16GB Memory Card	000180		1	25		\N	
677	Sony SxS Pro 16GB Memory Card			1	25		\N	
678	Sony ECM-673 Shotgun Microphone	000340		1	26		\N	
682	Canon Rbel XT Charger	000878		1	20		\N	
686	Canon Rebel T2i DSLR Camera	000781		1	31		\N	
687	Marantz Field Recorder			1	21		\N	
689	Canon ZR800 MiniDV Camera	000555		1	34		\N	
690	MiniDV to Firewire 400			1	17		\N	
691	MacBook Animobile	000556		1	23		\N	
694	Logitech HD Webcam	000748		1	34		\N	
695	Panasonic VW-VBG260 Small Battery			1	15		\N	
696	Panasonic VW-VBG260 Small Battery			1	15		\N	
699	Flip Ultra HD Camera			1	34		\N	
700	Panasonic MC70 Shotgun Microphone			1	26		\N	
723	Handycam NP-FH100 Large Battery	200011		1	15		\N	
724	AKG-D950	000721		1	26		\N	
725	Test Kit Item	555555	55555	1	34		\N	Test Kit A1
726	Fuji F200 Camera	000500	9AA43119	1	31		\N	
727	Handycam ECM-HG21 Shotgun Microphone	000346		1	18		\N	
728	Furman Headphone Remote Mixing Station	000914	00265110522703	1	27		\N	
729	Furman Headphone Remote Mixing Station	000915	00265110522704	1	27		\N	
730	Furman Headphone Remote Mixing Station	000916	00265110522705	1	27		\N	
731	Furman Headphone Remote Mixing Station	000917	00265110500486	1	27		\N	
732	Furman Headphone Remote Mixing Station	000918	00265110500858	1	27		\N	
733	Furman Headphone Remote Mixing Station	000919	00265110522705	1	27		\N	
734	MiM A - LCD LitePanel	000910		1	24		\N	
735	MiM B - LCD LitePanel	000909		1	24		\N	
736	MiM A - Manfrotto 143 Magic Arm Kit	000906		1	33		\N	
737	MiM B - Manfrotto 143 Magic Arm Kit	000905		1	33		\N	
738	MiM A - Canon ZR960 MiniDV Camcorder	000899		1	34		\N	
739	MiM B - Canon ZR960 MiniDV Camcorder	000901		1	34		\N	
740	MiM A - Lacie Hard Drive	000902	141811070929QR	1	36		\N	
741	MiM B - Lacie Hard Drive	000903	14181107140911QR	1	36		\N	
742	MiM A - MacBook Pro	000911		1	23		\N	
743	MiM B - MacBook Pro	000913		1	23		\N	
744	MiM B - MacBook Pro 2	000920		1	23		\N	
745	Fujifilm Battery Charger	000921		1	20		\N	
746	Fuji Finepix Z30 Camera	000499	9AA40416	1	31		\N	
747	Sony SxS Pro 16GB Memory Card	000187		1	25		\N	
748	COPIED ITEM TEST.	X00XXX	239846X	1	33		\N	
\.


--
-- Name: equipment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('equipment_id_seq', 748, true);


--
-- Data for Name: request_batch; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY request_batch (batch_id, batch_uid, batch_date, batch_pickup) FROM stdin;
\.


--
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('user_id_seq', 190, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY users (id, login, email, password, name, phone, created, checkout_enabled, status) FROM stdin;
14	jbfcmal		*4ACFE3202A5FF5CF467898FC58AAB1D615029441	Dave	914.773.7663	2011-02-21 15:05:34	0	0
15	thomoconnor	a	*AD4205E3AEFF7AC9C4B2ED2AC20CB293BEE1BA71	Thom O'Connor	914.815.0513	2011-02-21 15:24:00	1	1
16	jakegreene	jgreene@burnsfilmcenter.org	*D35DCEAB2EEC05579907EFBF630F1459DB6FF724	Jacob Greene	518.588.7537	2011-02-22 10:15:00	1	1
17	seangallagher	sgallagher@burnsfilmcenter.org	*90B71CDB366F6FDCD546AD9807C74DB32CEC4B95	Sean Gallagher	914.844.4280	2011-02-22 10:17:37	1	1
18	darrelswann	swanda@sean.co	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Darrel Swann	555.555.5555	2011-02-22 10:22:53	0	1
19	russellpeborde	rpeborde@burnsfilmcenter.org	*CADCB9F59C4EB964BB6C042499B0DF12EE514636	Russell Peborde	914.924.4687	2011-02-22 11:44:41	1	1
20	sebastiangillen	sebgillen@gmail.com	*DC706E5DE9EA41C5F78EA282AD03BF9CBB8BA30C	Sebastian Gillen	914.774.5110	2011-02-24 12:30:40	1	1
21	brandonthomas	uniquenorma@aol.com		Brandon Thomas	914.562.3781	2011-02-24 12:31:58	0	1
22	jacobboyar	jmboyar@mac.com		Jacob Boyar	914.244.1333	2011-02-24 12:39:43	0	1
23	thomasconnelly	frances.kerrigan@yahoo.com		Thomas Connelly	914.763.6545	2011-02-24 13:21:32	0	1
24	charlotteberg	bry.jen1@verizon.net		Charlotte Berg	914.769.3659	2011-02-24 13:22:43	0	1
25	alexanderventura	alexwv@yahoo.com		Alexander Ventura	914.923.1942	2011-02-24 13:23:46	0	1
26	hameedmourani	wfmourani@aol.com		Hameed Mourani	914.333.0793	2011-02-24 13:24:33	0	1
27	kristypavlick	f14gp@aol.com		Kristy Pavlick	914.441.4751	2011-02-24 13:25:43	0	1
28	iandurso	wallyandwendy@optonline.net		Ian Durso	845.831.6583	2011-02-24 13:29:41	0	1
29	octavioburbano	alice@rawrev.com		Octavio Burbano	914.420.4208	2011-02-24 13:30:19	0	1
30	mackmeller	themellers@gmail.com		Mack Meller	914.234.7117	2011-02-24 13:31:01	0	1
31	seanflynn	flynnd@aol.com		Sean Flynn	845.566.6653	2011-02-24 13:32:32	0	1
32	hudsonschumacher	sageandfriends@gmail.com		Hudson Schumacher	914.261.1470	2011-02-24 13:33:26	0	1
33	andrewskjeveland	lori.skjeveland@gmail.com		Andrew Skjeveland	914.882.7318	2011-02-24 13:34:34	0	1
34	gavinchecchi	nursengc@aol.com		Gavin Checchi	914.374.5751	2011-02-24 13:39:12	0	1
35	raymarszalek	diana.marszalek@yahoo.com		Ray Marszalek	914.450.3462	2011-02-24 13:40:01	0	1
36	walkeryoung	susan@archipelagofilms.com		Walker Young	914.271.6397	2011-02-24 13:43:35	0	1
37	emmanuelpolakoski	joseph.a.polakoski@gmail.com		Emmanuel Polakoski	914.837.7792	2011-02-24 13:45:24	0	1
38	zacharyperez	susan.cuccinello@gmail.com		Zachary Perez	914.762.5123	2011-02-24 13:46:25	0	1
39	henrydelacova	ehsinsabaugh@gmail.com		Henry delaCova	914.373.4648	2011-02-24 13:47:48	0	1
40	jalenrotella-white	lwhitejr36@yahoo.com		Jalen Rotella-White	914.420.4943	2011-02-24 13:57:11	0	1
41	ethanjacobs	mgjacobs@optonline.net		Ethan Jacobs	914.261.7530	2011-02-24 13:57:55	0	1
42	maxcomora	hacomora@optonline.net		Max Comora	917.371.5675	2011-02-24 14:05:53	0	1
43	ezralevine	missyk1215@verizon.net		Ezra Levine	914.844.7933	2011-02-24 14:07:23	0	1
44	jakestern	nicolestern@optonline.net		Jake Stern	914.773.0444	2011-02-24 14:08:47	0	1
45	mimipelton-mccormick	lcpelton@optonline.net		Mimi Pelton-McCormick	914.523.6852	2011-02-24 14:09:26	0	1
50	seanweiner	sweiner@burnsfilmcenter.org	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Sean Weiner	442	2011-03-02 17:47:58	0	1
51	jemcostello	nancyhennessee@gmail.com	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Jem Costello	914-330-1248	2011-03-02 17:49:40	0	1
52	bradyshoemaker	bshoemaker@burnsfilmcenter.org	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Brady Shoemaker	428	2011-03-02 17:51:04	0	1
53	aaronmace	amace@burnsfilmcenter.org	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Aaron Mace	438	2011-03-02 17:51:37	0	1
54	jessegreen	jgreen@burnsfilmcenter.org	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Jesse Green	12	2011-03-03 14:13:15	0	1
55	toddsandler	toddisandler@gmail.com	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Todd Sandler		2011-03-03 14:14:14	0	1
56	mayaknell		*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Maya Knell	Holen's Mast	2011-03-03 14:16:42	0	1
57	milesackerman	backerman@burnsfilmcenter.org	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Miles Ackerman	914-271-1268	2011-03-03 14:18:45	0	1
58	janissharkey	sharkey@bestweb.net	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Janis Sharkey	914.232.6797	2011-03-03 15:07:12	0	1
59	theresadawson	tdawson@burnsfilmcenter.org	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Theresa Dawson	451	2011-03-03 15:53:41	0	1
60	sandertancredi	heidisonn.riverspa@yahoo.com	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Sander Tancredi	914.478.3949	2011-03-03 18:12:41	0	1
61	samberger	skberger@fastmail.com	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Sam Berger	914.486.0146	2011-03-03 19:37:29	0	1
62	annemariesantoro			Anne Marie Santoro		2011-03-04 09:20:58	0	1
63	emilyohara	eohara@burnsfilmcenter.org		Emily O\\'Hara		2011-03-04 10:53:15	0	1
64	brookemarin	bmarin124@gmail.com		Brooke Marin	914.610.1552	2011-03-04 15:46:37	0	1
65	carolleicht	leichthousevideo@att.net		Carol Leicht	772-341-8420	2011-03-09 10:29:44	0	1
66	adamrothstar		*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Adam Rothstar		2011-03-09 14:56:15	0	1
67	holenkahn		*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Holen Kahn		2011-03-09 16:56:47	0	1
68	tylernass			Tyler Nass		2011-03-11 15:16:26	0	1
69	shivayparekh			Shivay Parekh		2011-03-11 15:16:45	0	1
70	conorkennedy	conorkkennedy@gmail.com		Conor Kennedy	914.844.9006	2011-03-11 16:09:59	0	1
71	gregorynemec	gregorynemec@nerizon.net	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Gregory Nemec	914.844.8684	2011-03-14 16:37:25	0	1
72	janelleiglesias	janelleiglesias@yahoo.com	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Janelle Iglesias	804.564.5410	2011-03-14 16:39:07	0	1
73	elizagracecattau	birthtalk@aol.com	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Eliza Grace Cattau	914.260.3834	2011-03-15 12:48:49	0	1
74	patconley	paconley@ccsd.ws	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Pat Conley		2011-03-15 18:44:25	0	1
75	christinagriffin	cg@christinagriffinarchitect.com	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Christina Griffin	914.400.4171	2011-03-16 10:34:11	0	1
76	peterwolf	cg@christinagriffinarchitect.com	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Peter Wolf 	914.400.4171	2011-03-16 10:34:39	0	1
77	Natalie Ware	natalieware93@gmail.com	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Natalie Ware	914.330.3907	2011-03-16 14:33:56	0	1
78	michaelkuegler			Michael Kuegler		2011-03-18 15:04:15	0	1
79	nitzanofir	nitzan.ofir@gmail.com	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Nitzan Ofir	914.295.4602	2011-03-21 11:41:30	0	1
80	lukasarbogast		*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Lukas Arbogast	914.406.0255	2011-03-21 19:11:07	0	1
81	emilykeating		*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Emily Keating		2011-03-24 11:27:32	0	1
82	nadinebarnettcosby			Nadine Barnett Cosby		2011-03-24 17:00:12	0	1
83	juliarosen			Julia Rosen		2011-03-25 16:04:00	0	1
84	jaimegoldstein			Jaime Goldstein		2011-03-26 14:43:59	0	1
88	langeau3987654_87	austias4567ddfe@gmail.com		Austin Langrgerererererre	9146298888	2011-04-13 14:11:42	1	1
108	abbypopper	apopper@burnsfilmcenter.org	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Abby Popper	x424	2011-06-15 11:54:54	0	0
109	agatharybicki	arybicki@burnsfilmcenter.org	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Agatha Rybicki	x454	2011-06-15 11:57:24	0	0
110	alanabenoit	abenoit@burnsfilmcenter.org	*97E3CA0A0B00371413E6ECCD76C473CCA8757F86	Alana Benoit	x423	2011-06-15 11:58:57	0	0
111	amyeskridge	aeskridge@burnsfilmcenter.org	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Amy Eskridge	x435	2011-06-15 12:00:06	0	0
112	annmacdonald	amacdonald@burnsfilmcenter.org	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Ann MacDonald	x440	2011-06-15 12:00:42	0	0
114	brianakerman	bakerman@burnsfilmcenter.org	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Brian Akerman	x413	2011-06-15 12:03:17	0	0
115	chrisfunderberg	cfunderberg@burnsfilmcenter.org	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Christopher Funderberg	x422	2011-06-15 12:04:22	0	0
116	craigtreco	ctreco@burnsfilmcenter.org	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Craig Treco	914 494 9576	2011-06-15 12:05:31	0	0
117	danpallotti	dpallotti@burnsfilmcenter.org	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Dan Pallotti	x416	2011-06-15 12:06:06	0	0
118	denisetreco	dtreco@burnsfilmcenter.org	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Denise Treco	x415	2011-06-15 12:06:32	0	0
119	didikirtley	dkirtley@burnsfilmcenter.org	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Didi Kirtley	x430	2011-06-15 12:07:06	0	0
120	dominickballetta	dballetta@burnsfilmcenter.org	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Dominick Balletta	x439	2011-06-15 12:07:34	0	0
121	elizabethgarrigue	egarrigue@burnsfilmcenter.org	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Elizabeth Garrigue	x412	2011-06-15 12:08:26	0	0
123	frankvetere	fvetere@burnsfilmcenter.org	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Frank Vetere	x450	2011-06-15 12:09:42	0	0
124	ginaduncan	gduncan@burnsfilmcenter.org	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Gina Duncan	x441	2011-06-15 12:10:01	0	0
126	jackrailton	jrailton@burnsfilmcenter.org	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Jack Railton	x431	2011-06-15 12:11:05	0	0
127	jessicasucher	jsucher@burnsfilmcenter.org	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Jessica Sucher	x485	2011-06-15 12:11:36	0	0
128	joycejabbour	jjabbour@burnsfilmcenter.org	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Joyce Jabbour	x443	2011-06-15 12:12:19	0	0
129	judyexton	jexton@burnsfilmcenter.org	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Judy Exton	x414	2011-06-15 12:12:44	0	0
131	karengoodman	kgoodman@burnsfilmcenter.org	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Karen Goodman	x419	2011-06-15 12:14:44	0	0
132	kimturner	kturner@burnsfilmcenter.org	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Kim Turner	x429	2011-06-15 12:15:03	0	0
133	melissatepe	mtepe@burnsfilmcenter.org	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Melissa Tepe	x436	2011-06-15 12:15:30	0	0
134	nancyrubini	nrubini@burnsfilmcenter.org	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Nancy Rubini	x432	2011-06-15 12:15:55	0	0
135	robsampogna	rsampogna@burnsfilmcenter.org	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Rob Sampogna	x434	2011-06-15 12:16:29	0	0
138	steveapkon	sapkon@burnsfilmcenter.org	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Steve Apkon	x401	2011-06-15 12:18:42	0	0
139	sungcho	scho@burnsfilmcenter.org	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Sung Cho	x437	2011-06-15 12:19:18	0	0
140	susankineke	skineke@burnsfilmcenter.org	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Susan Kineke	x418	2011-06-15 12:19:58	0	0
141	susanobrien	sobrien@burnsfilmcenter.org	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Susan O'Brien	x421	2011-06-15 13:23:52	0	0
142	terryannmarshall	tmarshall@burnsfilmcenter.org	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Terry Ann Marshall	x420	2011-06-15 13:24:18	0	0
147	andrewjupin	ajupin@burnsfilmcenter.org	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Andrew Jupin		2011-06-15 13:26:03	0	0
149	sebgillen		*DC706E5DE9EA41C5F78EA282AD03BF9CBB8BA30C	Sebastian Gillen	914-774-5110	2011-06-23 11:36:08	0	0
151	karennaimool	knaimool@childrensvillage.org		Karen Naimool	914 693-0600	2011-07-08 11:39:13	0	0
155	joesummerhays			Joe Summerhays		2011-07-12 09:15:52	0	0
157	jordanroberts			Jordan Roberts		2011-07-12 09:17:32	0	0
160	jamiegoldstein			Jamie Goldstein		2011-07-13 13:32:29	0	0
161	timnicholas		*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Tim Nicholas		2011-07-22 15:00:33	0	0
162	sebastiansavino		*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Sebastian Savino		2011-07-22 16:18:34	0	0
163	debrarodman	drodman111@aol.com	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Debra Rodman	914 260 5763	2011-07-25 09:05:40	0	0
164	russpeborde	rpeborde@burnsfilmcenter.org	*CADCB9F59C4EB964BB6C042499B0DF12EE514636	Russell Peborde		2011-08-02 15:16:24	1	1
165	dylanfranks			Dylan Franks	914-629-2801	2011-08-04 14:44:52	0	0
166	brandon.thomas	bdub2thetubb@gmail.com	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Brandon Thomas	914.699.3230	2011-08-04 16:36:41	0	0
169	gregnemec			Greg Nemec		2011-08-19 13:00:11	0	0
171	arockshar		*79B3D77E2511B3886E77B2754C345AC6E44E3C32	Adam Rokshar		2011-08-23 14:52:35	0	0
172	justindrobinski		*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Justin Drobinski		2011-08-24 13:34:27	0	0
173	johndoe		*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	John Doe		2011-08-30 10:15:17	0	0
174	amystern	amy.stern10@gmail.com		Amy Stern	914-723-7011	2011-09-14 17:46:51	0	0
175	patrickconley	paconley@ccsd.ws		Patrick Conley		2011-09-15 15:38:35	0	0
176	danielsimpson	dsimp23412@optonline.net		Daniel Simpson	914-248-7058	2011-09-22 19:38:33	0	0
177	joyscantlebury	conset@aol.com		Joy Scantlebury	914-946-5169	2011-09-22 19:43:09	0	0
178	lisabrown	lisabr@us.ibm.com		Lisa Brown	914-741-2886	2011-09-23 13:00:56	0	0
179	alisonshearer	alison@caramoor.org		Alison Shearer	914-232-5035	2011-09-23 13:01:32	0	0
180	salvaccaro	sal@caramoor.org		Sal Vaccaro	914-232-5035	2011-09-23 13:02:06	0	0
181	helenmeurer	helen@loring.net		Helen Meurer	914-769-1561	2011-09-23 13:02:37	0	0
182	gailsimpson	gsimpson2001@aol.com		Gail Simpson	914-248-7058	2011-09-23 13:03:27	0	0
183	melissaelian	mel416@gmail.com	*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19	Melissa Elian	9143741766	2011-09-28 16:41:05	0	0
186	annekouzmanoff	annieoff@gmail.com		Anne Kouzmanoff	734-730-1019	2011-10-12 18:41:17	0	0
189	sam.kelly	sam.kelly.developer@gmail.com	NWU4ODQ4OThkYTI4MDQ3MTUxZDBlNTZmOGRjNjI5Mjc3MzYwM2QwZDZhYWJiZGQ2MmExMWVmNzIxZDE1NDJkOA==	sam kelly		2013-07-20 17:04:02.047701	0	1
\.


--
-- Name: categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: checkout_batch_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY checkout_batch
    ADD CONSTRAINT checkout_batch_pkey PRIMARY KEY (batch_id);


--
-- Name: equipment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (id);


--
-- Name: request_batch_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY request_batch
    ADD CONSTRAINT request_batch_pkey PRIMARY KEY (batch_id);


--
-- Name: users_login_unique; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_login_unique UNIQUE (login);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

