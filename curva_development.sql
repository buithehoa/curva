--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

-- CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

-- COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: curves; Type: TABLE; Schema: public; Owner: curva; Tablespace: 
--

CREATE TABLE curves (
    id integer NOT NULL,
    question text,
    answer text,
    status integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE curves OWNER TO curva;

--
-- Name: curves_id_seq; Type: SEQUENCE; Schema: public; Owner: curva
--

CREATE SEQUENCE curves_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE curves_id_seq OWNER TO curva;

--
-- Name: curves_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: curva
--

ALTER SEQUENCE curves_id_seq OWNED BY curves.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: curva; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE schema_migrations OWNER TO curva;

--
-- Name: skills; Type: TABLE; Schema: public; Owner: curva; Tablespace: 
--

CREATE TABLE skills (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE skills OWNER TO curva;

--
-- Name: skills_id_seq; Type: SEQUENCE; Schema: public; Owner: curva
--

CREATE SEQUENCE skills_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE skills_id_seq OWNER TO curva;

--
-- Name: skills_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: curva
--

ALTER SEQUENCE skills_id_seq OWNED BY skills.id;


--
-- Name: taggings; Type: TABLE; Schema: public; Owner: curva; Tablespace: 
--

CREATE TABLE taggings (
    id integer NOT NULL,
    tag_id integer,
    taggable_id integer,
    taggable_type character varying(255),
    tagger_id integer,
    tagger_type character varying(255),
    context character varying(128),
    created_at timestamp without time zone
);


ALTER TABLE taggings OWNER TO curva;

--
-- Name: taggings_id_seq; Type: SEQUENCE; Schema: public; Owner: curva
--

CREATE SEQUENCE taggings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE taggings_id_seq OWNER TO curva;

--
-- Name: taggings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: curva
--

ALTER SEQUENCE taggings_id_seq OWNED BY taggings.id;


--
-- Name: tags; Type: TABLE; Schema: public; Owner: curva; Tablespace: 
--

CREATE TABLE tags (
    id integer NOT NULL,
    name character varying(255),
    taggings_count integer DEFAULT 0
);


ALTER TABLE tags OWNER TO curva;

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: curva
--

CREATE SEQUENCE tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tags_id_seq OWNER TO curva;

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: curva
--

ALTER SEQUENCE tags_id_seq OWNED BY tags.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: curva
--

ALTER TABLE ONLY curves ALTER COLUMN id SET DEFAULT nextval('curves_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: curva
--

ALTER TABLE ONLY skills ALTER COLUMN id SET DEFAULT nextval('skills_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: curva
--

ALTER TABLE ONLY taggings ALTER COLUMN id SET DEFAULT nextval('taggings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: curva
--

ALTER TABLE ONLY tags ALTER COLUMN id SET DEFAULT nextval('tags_id_seq'::regclass);


--
-- Data for Name: curves; Type: TABLE DATA; Schema: public; Owner: curva
--

COPY curves (id, question, answer, status, created_at, updated_at) FROM stdin;
1	How to write an Android "Hello World" program?		\N	2014-11-17 16:30:14.441583	2014-11-17 16:43:23.732753
2	What is bower? How to use it?		\N	2014-11-21 08:40:46.509115	2014-11-21 08:40:46.509115
3	What is arel? How to use it?		\N	2014-11-22 16:24:09.809666	2014-11-22 16:24:31.486855
5	Try out Grape (https://github.com/intridea/grape)		\N	2014-11-24 05:11:06.076005	2014-11-24 05:11:06.076005
6	Try out jbuilder (https://github.com/rails/jbuilder)		\N	2014-11-24 09:40:28.559632	2014-11-24 09:40:28.559632
7	How do I control my temper when I'm losing?		\N	2014-11-25 04:49:22.34621	2014-11-25 04:49:22.34621
8	What is Underscore? How to use it?		\N	2014-11-25 07:43:41.493123	2014-11-25 07:43:41.493123
9	What is SocketIO? How to use it?		\N	2014-11-25 07:44:05.325166	2014-11-25 07:44:05.325166
10	How to test JavaScript scripts with Jasmine?		\N	2014-11-25 07:46:37.142906	2014-11-25 07:46:37.142906
12	How to do tapping on an acoustic guitar?	\N	\N	2014-11-25 05:01:06.552611	2014-11-25 05:01:06.552611
13	How to authenticate API access with OAuth/OAuth2?	\N	\N	2014-11-26 06:28:43.074427	2014-11-26 06:28:43.074427
14	Check this out\r\nAndroid GUI Design http://developer.android.com/design/index.html	\N	\N	2014-11-26 06:30:21.944427	2014-11-26 06:30:21.944427
15	How to integrate a web application with bitcoin?	\N	\N	2014-11-26 06:35:25.989027	2014-11-26 06:35:25.989027
16	How to use Apartment?\r\nhttps://github.com/influitive/apartment	\N	\N	2014-11-29 17:31:59.886393	2014-11-29 17:31:59.886393
17	How to use sinatra?	\N	\N	2014-11-30 13:42:24.520104	2014-11-30 13:42:24.520104
18	How Rails autoloading works?\r\nhttp://urbanautomaton.com/blog/2013/08/27/rails-autoloading-hell/#fn1	\N	\N	2014-11-30 14:20:27.228793	2014-11-30 14:20:27.228793
19	What is this? Give it a try\r\nhttps://github.com/es-shims/es5-shim	\N	\N	2014-11-30 06:25:48.615584	2014-11-30 06:25:48.615584
20	Try\r\nhttps://www.webrtc-experiment.com/	\N	\N	2014-12-01 08:17:33.459646	2014-12-01 08:17:33.459646
21	[Node.js] Add the graphics library from http://metricsgraphicsjs.org/ into a MeteorJS application\r\n\r\nI'm trying to get metricsgraphics integrated into a MeteorJS project but am not experienced at integrating non-atmosphere packages into Meteor. I could use help from someone who has taken JavaScript packages and integrated them into a MeteorJS project. There are some NPM wrappers for metricsgraphics, which may help.	\N	\N	2014-12-01 08:24:23.183188	2014-12-01 08:24:23.183188
22	[Ember.js] Infinite Scroll + Masonry\r\n\r\nHi there! I'm looking to implement infinite scrolling and desandro's masonry into my Ember app. I'm a Rails developer and brand new to Ember (and Javascript for that matter).	\N	\N	2014-12-01 08:26:08.283938	2014-12-01 08:26:17.44641
23	[Ruby on Rails] Rails application with bugger Stripe code and general refactoring needed.\r\n\r\nI need help integrating Stripe correctly. The site is a market place, so User 1 can set a price for a rental and User 2 can book. The website (me) takes a percentage of the fees and transfers the balance to User 1.	\N	\N	2014-12-01 08:27:46.220804	2014-12-01 08:27:46.220804
24	Try Facebook React	\N	\N	2014-12-01 18:05:37.337486	2014-12-01 18:05:37.337486
25	Try out dart\r\nhttps://www.dartlang.org/	\N	\N	2014-12-02 11:31:19.690271	2014-12-02 11:31:19.690271
26	Try out tmux with vim\r\nhttp://tmux.sourceforge.net/	\N	\N	2014-12-02 11:32:26.596498	2014-12-02 11:32:26.596498
27	Try out\r\nhttps://github.com/airblade/paper_trail	\N	\N	2014-12-04 18:36:24.52919	2014-12-04 18:36:24.52919
28	Try http://mustache.github.io/	\N	\N	2014-12-04 18:37:24.699823	2014-12-04 18:37:24.699823
29	Try http://famo.us/	\N	\N	2014-12-04 18:38:12.54241	2014-12-04 18:38:12.54241
30	Try https://github.com/rwaldron/idiomatic.js/	\N	\N	2014-12-04 18:38:51.853112	2014-12-04 18:38:51.853112
4	What is wicked (https://github.com/schneems/wicked)? How to use it?		\N	2014-11-24 01:42:13.857696	2014-12-03 03:46:33.337153
31	Try http://jqueryvalidation.org/	\N	\N	2014-12-03 03:57:54.588709	2014-12-03 03:57:54.588709
32	Try emacs	\N	\N	2014-12-07 06:57:53.875109	2014-12-07 06:57:53.875109
33	Try SpaceMacs https://github.com/syl20bnr/spacemacs	\N	\N	2014-12-07 06:58:21.408685	2014-12-07 06:58:21.408685
34	Try http://jackocnr.com/intl-tel-input.html	\N	\N	2014-12-07 07:42:48.99782	2014-12-07 07:42:48.99782
35	What's Vagrant?\r\nhttps://www.vagrantup.com/	\N	\N	2014-12-14 08:20:52.909615	2014-12-14 08:20:52.909615
36	What is this?\r\nhttp://bogomips.org/kgio/	\N	\N	2014-12-15 06:36:11.795591	2014-12-15 06:36:11.795591
\.


--
-- Name: curves_id_seq; Type: SEQUENCE SET; Schema: public; Owner: curva
--

SELECT pg_catalog.setval('curves_id_seq', 36, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: curva
--

COPY schema_migrations (version) FROM stdin;
20141113032727
20141113032728
20141113032729
20141113032730
20141115025226
20141122163146
\.


--
-- Data for Name: skills; Type: TABLE DATA; Schema: public; Owner: curva
--

COPY skills (id, name, created_at, updated_at) FROM stdin;
4	Front-end Development	2014-11-30 01:00:19.018186	2014-11-30 01:00:19.018186
5	Online Payment	2014-11-30 06:40:48.012929	2014-11-30 06:40:48.012929
7	Ruby on Rails	2014-12-09 13:16:47.113449	2014-12-09 13:16:47.113449
\.


--
-- Name: skills_id_seq; Type: SEQUENCE SET; Schema: public; Owner: curva
--

SELECT pg_catalog.setval('skills_id_seq', 39, true);


--
-- Data for Name: taggings; Type: TABLE DATA; Schema: public; Owner: curva
--

COPY taggings (id, tag_id, taggable_id, taggable_type, tagger_id, tagger_type, context, created_at) FROM stdin;
1	1	1	Curve	\N	\N	tags	2014-11-17 16:43:24.007258
2	2	1	Curve	\N	\N	tags	2014-11-17 16:43:24.067212
3	3	2	Curve	\N	\N	tags	2014-11-21 08:40:47.031817
4	4	2	Curve	\N	\N	tags	2014-11-21 08:40:47.09883
5	5	2	Curve	\N	\N	tags	2014-11-21 08:40:47.105391
6	6	3	Curve	\N	\N	tags	2014-11-22 16:24:10.175899
7	7	3	Curve	\N	\N	tags	2014-11-22 16:24:10.211086
8	8	3	Curve	\N	\N	tags	2014-11-22 16:24:31.500677
9	5	3	Curve	\N	\N	tags	2014-11-22 16:24:31.508243
10	6	4	Curve	\N	\N	tags	2014-11-24 01:42:14.084697
11	5	4	Curve	\N	\N	tags	2014-11-24 01:42:14.120097
12	8	4	Curve	\N	\N	tags	2014-11-24 01:42:14.125632
13	8	5	Curve	\N	\N	tags	2014-11-24 05:11:06.097076
14	9	5	Curve	\N	\N	tags	2014-11-24 05:11:06.10626
15	10	5	Curve	\N	\N	tags	2014-11-24 05:11:06.112263
16	5	5	Curve	\N	\N	tags	2014-11-24 05:11:06.118185
17	8	6	Curve	\N	\N	tags	2014-11-24 09:40:28.572781
18	6	6	Curve	\N	\N	tags	2014-11-24 09:40:28.57902
19	5	6	Curve	\N	\N	tags	2014-11-24 09:40:28.583807
20	10	6	Curve	\N	\N	tags	2014-11-24 09:40:28.589155
21	11	6	Curve	\N	\N	tags	2014-11-24 09:40:28.593435
22	12	7	Curve	\N	\N	tags	2014-11-25 04:49:22.821645
23	13	7	Curve	\N	\N	tags	2014-11-25 04:49:22.886812
24	3	8	Curve	\N	\N	tags	2014-11-25 07:43:41.506803
25	5	8	Curve	\N	\N	tags	2014-11-25 07:43:41.514437
26	14	8	Curve	\N	\N	tags	2014-11-25 07:43:41.521976
27	3	9	Curve	\N	\N	tags	2014-11-25 07:44:05.336225
28	15	9	Curve	\N	\N	tags	2014-11-25 07:44:05.340571
29	5	9	Curve	\N	\N	tags	2014-11-25 07:44:05.34451
30	16	10	Curve	\N	\N	tags	2014-11-25 07:46:37.155147
31	5	10	Curve	\N	\N	tags	2014-11-25 07:46:37.159689
32	17	10	Curve	\N	\N	tags	2014-11-25 07:46:37.16401
33	3	10	Curve	\N	\N	tags	2014-11-25 07:46:37.168016
34	18	12	Curve	\N	\N	tags	2014-11-25 05:01:06.767201
35	19	12	Curve	\N	\N	tags	2014-11-25 05:01:06.797982
36	20	12	Curve	\N	\N	tags	2014-11-25 05:01:06.802506
37	21	12	Curve	\N	\N	tags	2014-11-25 05:01:06.806649
38	10	13	Curve	\N	\N	tags	2014-11-26 06:28:43.196365
39	8	13	Curve	\N	\N	tags	2014-11-26 06:28:43.204294
40	6	13	Curve	\N	\N	tags	2014-11-26 06:28:43.207928
41	22	13	Curve	\N	\N	tags	2014-11-26 06:28:43.211349
42	23	13	Curve	\N	\N	tags	2014-11-26 06:28:43.215068
43	24	13	Curve	\N	\N	tags	2014-11-26 06:28:43.218636
44	2	14	Curve	\N	\N	tags	2014-11-26 06:30:21.958594
45	1	14	Curve	\N	\N	tags	2014-11-26 06:30:21.964614
46	25	14	Curve	\N	\N	tags	2014-11-26 06:30:21.974609
47	5	15	Curve	\N	\N	tags	2014-11-26 06:35:26.005263
48	26	15	Curve	\N	\N	tags	2014-11-26 06:35:26.013973
49	5	16	Curve	\N	\N	tags	2014-11-29 17:32:00.293575
50	27	16	Curve	\N	\N	tags	2014-11-29 17:32:00.389787
51	8	16	Curve	\N	\N	tags	2014-11-29 17:32:00.399168
52	6	16	Curve	\N	\N	tags	2014-11-29 17:32:00.406526
53	28	16	Curve	\N	\N	tags	2014-11-29 17:32:00.412277
54	5	17	Curve	\N	\N	tags	2014-11-30 13:42:24.591529
55	8	17	Curve	\N	\N	tags	2014-11-30 13:42:24.596597
56	29	17	Curve	\N	\N	tags	2014-11-30 13:42:24.600985
57	5	18	Curve	\N	\N	tags	2014-11-30 14:20:27.237573
58	8	18	Curve	\N	\N	tags	2014-11-30 14:20:27.244312
59	6	18	Curve	\N	\N	tags	2014-11-30 14:20:27.249961
61	3	4	Skill	\N	\N	tags	2014-11-30 01:00:19.031334
62	5	19	Curve	\N	\N	tags	2014-11-30 06:25:48.642643
63	3	19	Curve	\N	\N	tags	2014-11-30 06:25:48.647386
64	30	5	Skill	\N	\N	tags	2014-11-30 06:40:48.020882
65	26	5	Skill	\N	\N	tags	2014-11-30 06:40:48.025455
69	32	20	Curve	\N	\N	tags	2014-12-01 08:17:33.473732
70	3	20	Curve	\N	\N	tags	2014-12-01 08:17:33.478889
71	33	20	Curve	\N	\N	tags	2014-12-01 08:17:33.483052
72	34	21	Curve	\N	\N	tags	2014-12-01 08:24:23.196704
73	3	21	Curve	\N	\N	tags	2014-12-01 08:24:23.200807
74	35	21	Curve	\N	\N	tags	2014-12-01 08:24:23.205073
75	36	21	Curve	\N	\N	tags	2014-12-01 08:24:23.209008
76	37	21	Curve	\N	\N	tags	2014-12-01 08:24:23.213409
77	34	22	Curve	\N	\N	tags	2014-12-01 08:26:08.296618
78	5	22	Curve	\N	\N	tags	2014-12-01 08:26:08.301629
79	38	22	Curve	\N	\N	tags	2014-12-01 08:26:08.306437
80	39	22	Curve	\N	\N	tags	2014-12-01 08:26:08.311383
81	3	22	Curve	\N	\N	tags	2014-12-01 08:26:17.456173
82	34	23	Curve	\N	\N	tags	2014-12-01 08:27:46.234345
83	6	23	Curve	\N	\N	tags	2014-12-01 08:27:46.240219
84	40	23	Curve	\N	\N	tags	2014-12-01 08:27:46.245202
85	41	23	Curve	\N	\N	tags	2014-12-01 08:27:46.249154
86	42	23	Curve	\N	\N	tags	2014-12-01 08:27:46.253321
87	3	24	Curve	\N	\N	tags	2014-12-01 18:05:37.349185
88	5	24	Curve	\N	\N	tags	2014-12-01 18:05:37.354377
89	5	25	Curve	\N	\N	tags	2014-12-02 11:31:20.297426
90	43	25	Curve	\N	\N	tags	2014-12-02 11:31:20.376619
91	44	25	Curve	\N	\N	tags	2014-12-02 11:31:20.384891
92	45	26	Curve	\N	\N	tags	2014-12-02 11:32:26.611858
93	46	26	Curve	\N	\N	tags	2014-12-02 11:32:26.617425
94	47	26	Curve	\N	\N	tags	2014-12-02 11:32:26.622163
95	8	27	Curve	\N	\N	tags	2014-12-04 18:36:25.479006
96	6	27	Curve	\N	\N	tags	2014-12-04 18:36:26.399507
97	48	27	Curve	\N	\N	tags	2014-12-04 18:36:26.410488
98	44	27	Curve	\N	\N	tags	2014-12-04 18:36:26.419817
99	49	27	Curve	\N	\N	tags	2014-12-04 18:36:26.430458
100	50	27	Curve	\N	\N	tags	2014-12-04 18:36:26.439666
101	8	28	Curve	\N	\N	tags	2014-12-04 18:37:24.71489
102	6	28	Curve	\N	\N	tags	2014-12-04 18:37:24.719264
103	51	28	Curve	\N	\N	tags	2014-12-04 18:37:24.723595
104	52	28	Curve	\N	\N	tags	2014-12-04 18:37:24.727755
105	44	28	Curve	\N	\N	tags	2014-12-04 18:37:24.731825
106	5	29	Curve	\N	\N	tags	2014-12-04 18:38:12.555817
107	3	29	Curve	\N	\N	tags	2014-12-04 18:38:12.561098
108	44	29	Curve	\N	\N	tags	2014-12-04 18:38:12.566507
109	53	29	Curve	\N	\N	tags	2014-12-04 18:38:12.57245
110	5	30	Curve	\N	\N	tags	2014-12-04 18:38:51.869806
111	3	30	Curve	\N	\N	tags	2014-12-04 18:38:51.878666
112	54	30	Curve	\N	\N	tags	2014-12-04 18:38:51.890019
113	55	4	Curve	\N	\N	tags	2014-12-03 03:46:33.385243
114	56	31	Curve	\N	\N	tags	2014-12-03 03:57:54.598606
115	3	31	Curve	\N	\N	tags	2014-12-03 03:57:54.604279
116	5	31	Curve	\N	\N	tags	2014-12-03 03:57:54.610212
117	57	31	Curve	\N	\N	tags	2014-12-03 03:57:54.621476
118	58	32	Curve	\N	\N	tags	2014-12-07 06:57:54.180559
119	59	32	Curve	\N	\N	tags	2014-12-07 06:57:54.248398
120	58	33	Curve	\N	\N	tags	2014-12-07 06:58:21.419352
121	59	33	Curve	\N	\N	tags	2014-12-07 06:58:21.425579
122	56	34	Curve	\N	\N	tags	2014-12-07 07:42:49.007576
123	60	34	Curve	\N	\N	tags	2014-12-07 07:42:49.013178
124	61	34	Curve	\N	\N	tags	2014-12-07 07:42:49.017273
125	63	35	Curve	\N	\N	tags	2014-12-14 08:20:53.390632
126	64	35	Curve	\N	\N	tags	2014-12-14 08:20:53.511107
127	8	36	Curve	\N	\N	tags	2014-12-15 06:36:11.802981
128	6	7	Skill	\N	\N	tags	2014-12-09 13:16:47.202693
\.


--
-- Name: taggings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: curva
--

SELECT pg_catalog.setval('taggings_id_seq', 160, true);


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: curva
--

COPY tags (id, name, taggings_count) FROM stdin;
4	css	1
7	arel	1
30	angularjs	1
9	restful-api	1
26	bitcoin	2
11	jbuilder	1
12	badminton	1
13	sports	1
32	webrtc	1
14	underscore	1
33	audio	1
15	socketio	1
16	testing	1
17	jasmine	1
18	music	1
19	guitar	1
20	acoustic-guitar	1
21	tapping	1
10	api-development	3
22	oauth	1
23	api-authentication	1
24	authentication	1
2	mobile-development	2
25	gui	1
27	multi-tenancy	1
35	nodejs	1
28	apartment	1
29	sinatra	1
36	metricsgraphics	1
37	meteorjs	1
38	emberjs	1
39	masonry	1
34	hackhands	3
40	stripe	1
41	market-place	1
42	online-payment	1
43	dart	1
45	linux	1
46	tmux	1
47	vim	1
48	paper-trail	1
49	versioning	1
50	model	1
51	template	1
52	mustache	1
44	new-kid	4
53	famous	1
54	coding-convention	1
55	wicked	1
3	javascript	13
57	jquery-validation	1
58	text-editor	2
59	emacs	2
56	jquery	2
60	jquery-plugins	1
61	telephone-number-validation	1
62		0
63	sysadmin	1
64	vagrant	1
8	ruby	11
1	android	2
5	web-development	19
6	ruby-on-rails	10
\.


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: curva
--

SELECT pg_catalog.setval('tags_id_seq', 64, true);


--
-- Name: curves_pkey; Type: CONSTRAINT; Schema: public; Owner: curva; Tablespace: 
--

ALTER TABLE ONLY curves
    ADD CONSTRAINT curves_pkey PRIMARY KEY (id);


--
-- Name: skills_pkey; Type: CONSTRAINT; Schema: public; Owner: curva; Tablespace: 
--

ALTER TABLE ONLY skills
    ADD CONSTRAINT skills_pkey PRIMARY KEY (id);


--
-- Name: taggings_pkey; Type: CONSTRAINT; Schema: public; Owner: curva; Tablespace: 
--

ALTER TABLE ONLY taggings
    ADD CONSTRAINT taggings_pkey PRIMARY KEY (id);


--
-- Name: tags_pkey; Type: CONSTRAINT; Schema: public; Owner: curva; Tablespace: 
--

ALTER TABLE ONLY tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: index_taggings_on_taggable_id_and_taggable_type_and_context; Type: INDEX; Schema: public; Owner: curva; Tablespace: 
--

CREATE INDEX index_taggings_on_taggable_id_and_taggable_type_and_context ON taggings USING btree (taggable_id, taggable_type, context);


--
-- Name: index_tags_on_name; Type: INDEX; Schema: public; Owner: curva; Tablespace: 
--

CREATE UNIQUE INDEX index_tags_on_name ON tags USING btree (name);


--
-- Name: taggings_idx; Type: INDEX; Schema: public; Owner: curva; Tablespace: 
--

CREATE UNIQUE INDEX taggings_idx ON taggings USING btree (tag_id, taggable_id, taggable_type, context, tagger_id, tagger_type);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: curva; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


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

