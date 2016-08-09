--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Name: seq_log_id; Type: SEQUENCE; Schema: public; Owner: fenaldy
--

CREATE SEQUENCE seq_log_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seq_log_id OWNER TO fenaldy;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: log; Type: TABLE; Schema: public; Owner: fenaldy; Tablespace: 
--

CREATE TABLE log (
    id integer DEFAULT nextval('seq_log_id'::regclass) NOT NULL,
    event_date timestamp without time zone,
    messages text,
    notif_status integer,
    issue_status integer
);


ALTER TABLE public.log OWNER TO fenaldy;

--
-- Data for Name: log; Type: TABLE DATA; Schema: public; Owner: fenaldy
--

COPY log (id, event_date, messages, notif_status, issue_status) FROM stdin;
3	2016-01-01 00:00:00	msg	1	0
4	2015-01-01 10:10:10	\N	\N	\N
5	2016-08-09 14:48:38	 (7): Zend_Session::start() - /var/www/ABIYASA_1_1/library/Zend/Session.php(Line:482): Error #8 session_start(): ps_files_cleanup_dir: opendir(/var/lib/php5/sessions) failed: Permission denied (13)\n	0	0
21	2016-08-09 14:48:38	 (7): Zend_Session::start() - /var/www/ABIYASA_1_1/library/Zend/Session.php(Line:482): Error #8 session_start(): ps_files_cleanup_dir: opendir(/var/lib/php5/sessions) failed: Permission denied (13)\n	0	0
22	2016-08-09 14:48:38	 (7): Zend_Session::start() - /var/www/ABIYASA_1_1/library/Zend/Session.php(Line:482): Error #8 session_start(): ps_files_cleanup_dir: opendir(/var/lib/php5/sessions) failed: Permission denied (13)\n	0	0
23	2016-08-09 14:48:38	 (7): Zend_Session::start() - /var/www/ABIYASA_1_1/library/Zend/Session.php(Line:482): Error #8 session_start(): ps_files_cleanup_dir: opendir(/var/lib/php5/sessions) failed: Permission denied (13)\n	0	0
24	2016-08-09 14:48:38	 (7): Zend_Session::start() - /var/www/ABIYASA_1_1/library/Zend/Session.php(Line:482): Error #8 session_start(): ps_files_cleanup_dir: opendir(/var/lib/php5/sessions) failed: Permission denied (13)\n	0	0
25	2016-08-09 14:48:38	 (7): Zend_Session::start() - /var/www/ABIYASA_1_1/library/Zend/Session.php(Line:482): Error #8 session_start(): ps_files_cleanup_dir: opendir(/var/lib/php5/sessions) failed: Permission denied (13)\n	0	0
26	2016-08-09 14:48:38	 (7): Zend_Session::start() - /var/www/ABIYASA_1_1/library/Zend/Session.php(Line:482): Error #8 session_start(): ps_files_cleanup_dir: opendir(/var/lib/php5/sessions) failed: Permission denied (13)\n	0	0
27	2016-08-09 14:48:38	 (7): Zend_Session::start() - /var/www/ABIYASA_1_1/library/Zend/Session.php(Line:482): Error #8 session_start(): ps_files_cleanup_dir: opendir(/var/lib/php5/sessions) failed: Permission denied (13)\n	0	0
28	2016-08-09 14:48:38	 (7): Zend_Session::start() - /var/www/ABIYASA_1_1/library/Zend/Session.php(Line:482): Error #8 session_start(): ps_files_cleanup_dir: opendir(/var/lib/php5/sessions) failed: Permission denied (13)\n	0	0
29	2016-08-09 14:48:38	 (7): Zend_Session::start() - /var/www/ABIYASA_1_1/library/Zend/Session.php(Line:482): Error #8 session_start(): ps_files_cleanup_dir: opendir(/var/lib/php5/sessions) failed: Permission denied (13)\n	0	0
30	2016-08-09 14:48:38	 (7): Zend_Session::start() - /var/www/ABIYASA_1_1/library/Zend/Session.php(Line:482): Error #8 session_start(): ps_files_cleanup_dir: opendir(/var/lib/php5/sessions) failed: Permission denied (13)\n	0	0
31	2016-08-09 14:48:38	 (7): Zend_Session::start() - /var/www/ABIYASA_1_1/library/Zend/Session.php(Line:482): Error #8 session_start(): ps_files_cleanup_dir: opendir(/var/lib/php5/sessions) failed: Permission denied (13)\n	0	0
32	2016-08-09 14:48:38	 (7): Zend_Session::start() - /var/www/ABIYASA_1_1/library/Zend/Session.php(Line:482): Error #8 session_start(): ps_files_cleanup_dir: opendir(/var/lib/php5/sessions) failed: Permission denied (13)\n	0	0
33	2016-08-09 16:11:14	 (7): Zend_Session::start() - /var/www/ABIYASA_1_1/library/Zend/Session.php(Line:482): Error #8 session_start(): ps_files_cleanup_dir: opendir(/var/lib/php5/sessions) failed: Permission denied (13)\n	0	0
34	2016-08-09 16:11:19	 (7): Zend_Session::start() - /var/www/ABIYASA_1_1/library/Zend/Session.php(Line:482): Error #8 session_start(): ps_files_cleanup_dir: opendir(/var/lib/php5/sessions) failed: Permission denied (13)\n	0	0
35	2016-08-09 16:11:24	 (7): Zend_Session::start() - /var/www/ABIYASA_1_1/library/Zend/Session.php(Line:482): Error #8 session_start(): ps_files_cleanup_dir: opendir(/var/lib/php5/sessions) failed: Permission denied (13)\n	0	0
36	2016-08-09 16:11:29	 (7): Zend_Session::start() - /var/www/ABIYASA_1_1/library/Zend/Session.php(Line:482): Error #8 session_start(): ps_files_cleanup_dir: opendir(/var/lib/php5/sessions) failed: Permission denied (13)\n	0	0
37	2016-08-09 16:11:34	 (7): Zend_Session::start() - /var/www/ABIYASA_1_1/library/Zend/Session.php(Line:482): Error #8 session_start(): ps_files_cleanup_dir: opendir(/var/lib/php5/sessions) failed: Permission denied (13)\n	0	0
38	2016-08-09 16:11:39	 (7): Zend_Session::start() - /var/www/ABIYASA_1_1/library/Zend/Session.php(Line:482): Error #8 session_start(): ps_files_cleanup_dir: opendir(/var/lib/php5/sessions) failed: Permission denied (13)\n	0	0
39	2016-08-09 16:30:25	 (7): Zend_Session::start() - /var/www/ABIYASA_1_1/library/Zend/Session.php(Line:482): Error #8 session_start(): ps_files_cleanup_dir: opendir(/var/lib/php5/sessions) failed: Permission denied (13)\n	0	0
40	2016-08-09 16:30:30	 (7): Zend_Session::start() - /var/www/ABIYASA_1_1/library/Zend/Session.php(Line:482): Error #8 session_start(): ps_files_cleanup_dir: opendir(/var/lib/php5/sessions) failed: Permission denied (13)\n	0	0
41	2016-08-09 16:30:35	 (7): Zend_Session::start() - /var/www/ABIYASA_1_1/library/Zend/Session.php(Line:482): Error #8 session_start(): ps_files_cleanup_dir: opendir(/var/lib/php5/sessions) failed: Permission denied (13)\n	0	0
42	2016-08-09 16:30:40	 (7): Zend_Session::start() - /var/www/ABIYASA_1_1/library/Zend/Session.php(Line:482): Error #8 session_start(): ps_files_cleanup_dir: opendir(/var/lib/php5/sessions) failed: Permission denied (13)\n	0	0
43	2016-08-09 16:30:45	 (7): Zend_Session::start() - /var/www/ABIYASA_1_1/library/Zend/Session.php(Line:482): Error #8 session_start(): ps_files_cleanup_dir: opendir(/var/lib/php5/sessions) failed: Permission denied (13)\n	0	0
44	2016-08-09 16:30:50	 (7): Zend_Session::start() - /var/www/ABIYASA_1_1/library/Zend/Session.php(Line:482): Error #8 session_start(): ps_files_cleanup_dir: opendir(/var/lib/php5/sessions) failed: Permission denied (13)\n	0	0
45	2016-08-09 16:30:55	 (7): Zend_Session::start() - /var/www/ABIYASA_1_1/library/Zend/Session.php(Line:482): Error #8 session_start(): ps_files_cleanup_dir: opendir(/var/lib/php5/sessions) failed: Permission denied (13)\n	0	0
46	2016-08-09 16:31:00	 (7): Zend_Session::start() - /var/www/ABIYASA_1_1/library/Zend/Session.php(Line:482): Error #8 session_start(): ps_files_cleanup_dir: opendir(/var/lib/php5/sessions) failed: Permission denied (13)\n	0	0
47	2016-08-09 16:33:33	 (7): Zend_Session::start() - /var/www/ABIYASA_1_1/library/Zend/Session.php(Line:482): Error #8 session_start(): ps_files_cleanup_dir: opendir(/var/lib/php5/sessions) failed: Permission denied (13)\n	0	0
48	2016-08-09 16:33:38	 (7): Zend_Session::start() - /var/www/ABIYASA_1_1/library/Zend/Session.php(Line:482): Error #8 session_start(): ps_files_cleanup_dir: opendir(/var/lib/php5/sessions) failed: Permission denied (13)\n	0	0
49	2016-08-09 16:33:43	 (7): Zend_Session::start() - /var/www/ABIYASA_1_1/library/Zend/Session.php(Line:482): Error #8 session_start(): ps_files_cleanup_dir: opendir(/var/lib/php5/sessions) failed: Permission denied (13)\n	0	0
50	2016-08-09 16:33:48	 (7): Zend_Session::start() - /var/www/ABIYASA_1_1/library/Zend/Session.php(Line:482): Error #8 session_start(): ps_files_cleanup_dir: opendir(/var/lib/php5/sessions) failed: Permission denied (13)\n	0	0
51	2016-08-09 16:33:56	 (7): Zend_Session::start() - /var/www/ABIYASA_1_1/library/Zend/Session.php(Line:482): Error #8 session_start(): ps_files_cleanup_dir: opendir(/var/lib/php5/sessions) failed: Permission denied (13)\n	0	0
52	2016-08-09 16:34:01	 (7): Zend_Session::start() - /var/www/ABIYASA_1_1/library/Zend/Session.php(Line:482): Error #8 session_start(): ps_files_cleanup_dir: opendir(/var/lib/php5/sessions) failed: Permission denied (13)\n	0	0
53	2016-08-09 16:34:06	 (7): Zend_Session::start() - /var/www/ABIYASA_1_1/library/Zend/Session.php(Line:482): Error #8 session_start(): ps_files_cleanup_dir: opendir(/var/lib/php5/sessions) failed: Permission denied (13)\n	0	0
54	2016-08-09 16:34:11	 (7): Zend_Session::start() - /var/www/ABIYASA_1_1/library/Zend/Session.php(Line:482): Error #8 session_start(): ps_files_cleanup_dir: opendir(/var/lib/php5/sessions) failed: Permission denied (13)\n	0	0
\.


--
-- Name: seq_log_id; Type: SEQUENCE SET; Schema: public; Owner: fenaldy
--

SELECT pg_catalog.setval('seq_log_id', 54, true);


--
-- Name: log_pkey; Type: CONSTRAINT; Schema: public; Owner: fenaldy; Tablespace: 
--

ALTER TABLE ONLY log
    ADD CONSTRAINT log_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

