--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.3

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
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--



ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

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
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: card_entity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.card_entity (
    card_id bigint NOT NULL,
    affinity character varying(255),
    attack bigint,
    defense bigint,
    description character varying(255),
    energy bigint,
    family character varying(255),
    hp bigint,
    img_url character varying(255),
    name character varying(255),
    price bigint,
    user_id bigint
);


ALTER TABLE public.card_entity OWNER TO postgres;

--
-- Name: card_entity_card_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.card_entity_card_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.card_entity_card_id_seq OWNER TO postgres;

--
-- Name: card_entity_card_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.card_entity_card_id_seq OWNED BY public.card_entity.card_id;


--
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO postgres;

--
-- Name: user_entity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_entity (
    user_id bigint NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    login character varying(255),
    money double precision NOT NULL,
    password character varying(255)
);


ALTER TABLE public.user_entity OWNER TO postgres;

--
-- Name: user_entity_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_entity_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_entity_user_id_seq OWNER TO postgres;

--
-- Name: user_entity_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_entity_user_id_seq OWNED BY public.user_entity.user_id;


--
-- Name: card_entity card_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.card_entity ALTER COLUMN card_id SET DEFAULT nextval('public.card_entity_card_id_seq'::regclass);


--
-- Name: user_entity user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_entity ALTER COLUMN user_id SET DEFAULT nextval('public.user_entity_user_id_seq'::regclass);


--
-- Data for Name: card_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.card_entity (card_id, affinity, attack, defense, description, energy, family, hp, img_url, name, price, user_id) FROM stdin;
8	sit amet	86	15	ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum	62	Marvel	31	http://dummyimage.com/107x100.png/ff4444/ffffff	Booby, blue-footed	97	\N
9	turpis	58	39	quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa	94	DC	56	http://dummyimage.com/149x100.png/5fa2dd/ffffff	Boar, wild	33	\N
10	blandit lacinia	9	59	convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut	54	Marvel	31	http://dummyimage.com/233x100.png/5fa2dd/ffffff	Vervet monkey	80	\N
11	et ultrices	61	83	dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis	71	Marvel	73	http://dummyimage.com/129x100.png/cc0000/ffffff	Yellow-billed hornbill	8	\N
12	ac	55	93	aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus	22	DC	59	http://dummyimage.com/174x100.png/dddddd/000000	Silver-backed fox	11	\N
13	in lacus	11	15	massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet	14	DC	36	http://dummyimage.com/235x100.png/dddddd/000000	Yellow-headed caracara	19	\N
14	rutrum	62	43	pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac	84	DC	100	http://dummyimage.com/175x100.png/5fa2dd/ffffff	Puma, south american	91	\N
15	ut	85	33	nulla justo aliquam quis turpis eget elit sodales scelerisque mauris	93	Marvel	33	http://dummyimage.com/172x100.png/ff4444/ffffff	Glider, squirrel	68	\N
16	ultrices erat	9	14	quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh	8	DC	19	http://dummyimage.com/160x100.png/ff4444/ffffff	Fork-tailed drongo	10	\N
17	in	65	85	morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam	37	Marvel	26	http://dummyimage.com/221x100.png/5fa2dd/ffffff	Porcupine, indian	22	\N
18	tincidunt	96	32	tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa	49	Marvel	98	http://dummyimage.com/134x100.png/5fa2dd/ffffff	Wallaby, red-necked	91	\N
19	erat	76	99	duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend	40	Marvel	83	http://dummyimage.com/237x100.png/cc0000/ffffff	Racer, blue	16	\N
20	mauris sit	98	43	amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus	59	DC	14	http://dummyimage.com/143x100.png/cc0000/ffffff	African bush squirrel	70	\N
21	ultrices	53	96	integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus	49	Marvel	5	http://dummyimage.com/182x100.png/5fa2dd/ffffff	Gecko, ring-tailed	72	\N
22	elementum nullam	26	30	quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere	37	DC	27	http://dummyimage.com/124x100.png/cc0000/ffffff	Rattlesnake, horned	17	\N
23	adipiscing molestie	65	35	vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam	35	DC	67	http://dummyimage.com/197x100.png/dddddd/000000	African buffalo	5	\N
24	mauris	30	56	sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor	35	Marvel	96	http://dummyimage.com/220x100.png/cc0000/ffffff	Baboon, yellow	9	\N
25	eleifend	58	33	quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet	65	DC	60	http://dummyimage.com/208x100.png/cc0000/ffffff	Azara's zorro	86	\N
26	enim lorem	89	100	ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur	88	DC	35	http://dummyimage.com/199x100.png/cc0000/ffffff	American woodcock	47	\N
27	pulvinar sed	73	69	quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus	46	Marvel	11	http://dummyimage.com/226x100.png/dddddd/000000	Turkey, australian brush	93	\N
28	ante	57	89	luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis	97	DC	59	http://dummyimage.com/207x100.png/5fa2dd/ffffff	Andean goose	1	\N
2	in	50	7	adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum	42	Marvel	32	http://dummyimage.com/151x100.png/cc0000/ffffff	Sloth, hoffman's	46	2
3	vitae	42	50	in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis	87	Marvel	44	http://dummyimage.com/156x100.png/ff4444/ffffff	Pelican, australian	68	2
4	mi	31	92	ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas	35	Marvel	17	http://dummyimage.com/203x100.png/ff4444/ffffff	Weaver, red-billed buffalo	87	2
5	aliquet pulvinar	4	38	suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit	31	Marvel	68	http://dummyimage.com/235x100.png/dddddd/000000	Heron, striated	82	2
6	dictumst	85	88	morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra	11	Marvel	64	http://dummyimage.com/219x100.png/cc0000/ffffff	Red deer	31	2
7	pellentesque volutpat	42	100	non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus	14	Marvel	30	http://dummyimage.com/141x100.png/ff4444/ffffff	Blue-footed booby	40	2
29	proin risus	1	57	augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis	23	Marvel	34	http://dummyimage.com/110x100.png/ff4444/ffffff	Woodcock, american	88	\N
30	odio	50	76	mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec	27	Marvel	44	http://dummyimage.com/157x100.png/cc0000/ffffff	American beaver	86	\N
31	faucibus orci	55	35	quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices	28	Marvel	12	http://dummyimage.com/231x100.png/ff4444/ffffff	Fat-tailed dunnart	45	\N
32	quisque	37	27	nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate	78	DC	82	http://dummyimage.com/194x100.png/dddddd/000000	Common dolphin	18	\N
33	orci	52	49	eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper	51	Marvel	31	http://dummyimage.com/170x100.png/ff4444/ffffff	Turtle, snake-necked	13	\N
34	vulputate	75	64	donec ut mauris eget massa tempor convallis nulla neque libero	87	Marvel	67	http://dummyimage.com/191x100.png/dddddd/000000	Red sheep	19	\N
35	quis lectus	26	97	mi in porttitor pede justo eu massa donec dapibus duis	88	Marvel	32	http://dummyimage.com/180x100.png/dddddd/000000	Jungle cat	11	\N
36	luctus	8	30	orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam	48	DC	74	http://dummyimage.com/148x100.png/5fa2dd/ffffff	Bustard, stanley	26	\N
37	interdum	50	32	viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper	57	Marvel	64	http://dummyimage.com/145x100.png/dddddd/000000	Common duiker	82	\N
38	sed vestibulum	42	87	suscipit nulla elit ac nulla sed vel enim sit amet nunc	5	DC	27	http://dummyimage.com/131x100.png/dddddd/000000	Wallaroo, common	52	\N
39	dolor morbi	29	86	nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in	35	DC	64	http://dummyimage.com/155x100.png/ff4444/ffffff	Chameleon (unidentified)	49	\N
40	sit amet	83	87	aliquam sit amet diam in magna bibendum imperdiet nullam orci pede	65	DC	17	http://dummyimage.com/191x100.png/cc0000/ffffff	Nubian bee-eater	18	\N
41	vivamus metus	61	50	velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque	52	Marvel	99	http://dummyimage.com/239x100.png/dddddd/000000	Common boubou shrike	61	\N
42	venenatis	78	23	vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes	84	DC	61	http://dummyimage.com/193x100.png/dddddd/000000	Red-tailed hawk	19	\N
43	ultricies eu	88	88	integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus	55	DC	4	http://dummyimage.com/101x100.png/dddddd/000000	Cardinal, red-capped	61	\N
44	quis	39	25	elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus	60	Marvel	10	http://dummyimage.com/132x100.png/5fa2dd/ffffff	Vulture, white-headed	51	\N
45	lacus at	6	7	vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac	94	Marvel	14	http://dummyimage.com/240x100.png/dddddd/000000	Anaconda (unidentified)	18	\N
46	mauris	62	45	nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam	22	DC	65	http://dummyimage.com/137x100.png/dddddd/000000	Barrows goldeneye	51	\N
47	enim lorem	94	43	consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non	75	DC	60	http://dummyimage.com/194x100.png/dddddd/000000	Eurasian beaver	83	\N
48	libero	28	45	ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue	46	Marvel	27	http://dummyimage.com/152x100.png/ff4444/ffffff	Magpie, black-backed	60	\N
50	rhoncus	5	35	nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit	96	DC	51	http://dummyimage.com/157x100.png/5fa2dd/ffffff	Eastern cottontail rabbit	28	\N
51	adipiscing lorem	88	3	ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus	55	Marvel	28	http://dummyimage.com/129x100.png/dddddd/000000	Lion, steller sea	81	\N
52	ante	81	15	ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit	70	DC	41	http://dummyimage.com/186x100.png/ff4444/ffffff	Green-backed heron	81	\N
53	quam	82	2	velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci	30	DC	95	http://dummyimage.com/241x100.png/ff4444/ffffff	Grey phalarope	91	\N
54	rutrum	61	40	dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo	22	Marvel	67	http://dummyimage.com/224x100.png/5fa2dd/ffffff	Eagle, long-crested hawk	80	\N
55	orci luctus	48	23	in est risus auctor sed tristique in tempus sit amet	51	Marvel	28	http://dummyimage.com/168x100.png/dddddd/000000	Jackal, black-backed	45	\N
56	adipiscing molestie	22	37	vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed	10	DC	58	http://dummyimage.com/139x100.png/ff4444/ffffff	Woylie	25	\N
57	sapien cursus	4	49	blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id	37	Marvel	85	http://dummyimage.com/238x100.png/5fa2dd/ffffff	White-bellied sea eagle	83	\N
58	dui	79	15	vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed	99	Marvel	5	http://dummyimage.com/134x100.png/5fa2dd/ffffff	Feral rock pigeon	75	\N
59	sed justo	55	63	nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in	27	DC	87	http://dummyimage.com/100x100.png/5fa2dd/ffffff	Ostrich	27	\N
60	amet	84	35	viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien	29	DC	55	http://dummyimage.com/135x100.png/ff4444/ffffff	Pie, indian tree	22	\N
61	morbi	13	79	pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus	60	Marvel	13	http://dummyimage.com/167x100.png/ff4444/ffffff	Yellow-billed stork	57	\N
62	vestibulum	66	36	potenti cras in purus eu magna vulputate luctus cum sociis	51	DC	34	http://dummyimage.com/177x100.png/5fa2dd/ffffff	Squirrel, smith's bush	80	\N
63	duis at	25	60	ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit	90	Marvel	55	http://dummyimage.com/196x100.png/dddddd/000000	Partridge, coqui	26	\N
64	sed ante	52	70	a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum	6	DC	3	http://dummyimage.com/214x100.png/dddddd/000000	Swan, trumpeter	91	\N
65	magna at	76	18	nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy	46	Marvel	87	http://dummyimage.com/136x100.png/5fa2dd/ffffff	Dolphin, bottle-nose	82	\N
66	risus praesent	95	52	luctus cum sociis natoque penatibus et magnis dis parturient montes	70	Marvel	21	http://dummyimage.com/230x100.png/dddddd/000000	Green-backed heron	18	\N
67	suscipit ligula	1	4	pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis	84	Marvel	75	http://dummyimage.com/184x100.png/ff4444/ffffff	Crane, blue	91	\N
68	ultrices aliquet	53	94	turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem	72	DC	2	http://dummyimage.com/191x100.png/dddddd/000000	Shark, blue	100	\N
69	purus phasellus	85	43	imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit	72	Marvel	57	http://dummyimage.com/152x100.png/dddddd/000000	Laughing dove	86	\N
70	a nibh	54	36	eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget	61	Marvel	99	http://dummyimage.com/127x100.png/cc0000/ffffff	Pied cormorant	99	\N
71	congue diam	17	35	arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea	82	Marvel	48	http://dummyimage.com/246x100.png/dddddd/000000	Canadian river otter	20	\N
72	auctor sed	89	59	luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo	6	Marvel	36	http://dummyimage.com/232x100.png/5fa2dd/ffffff	Marine iguana	2	\N
73	vehicula	21	53	ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar	15	DC	30	http://dummyimage.com/155x100.png/5fa2dd/ffffff	Brush-tailed phascogale	40	\N
74	vestibulum velit	66	15	ac neque duis bibendum morbi non quam nec dui luctus rutrum	61	DC	3	http://dummyimage.com/244x100.png/5fa2dd/ffffff	Lizard (unidentified)	89	\N
75	enim	53	65	sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus	20	Marvel	98	http://dummyimage.com/236x100.png/5fa2dd/ffffff	Blue-tongued skink	57	\N
76	lacinia aenean	31	51	metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci	9	DC	23	http://dummyimage.com/244x100.png/ff4444/ffffff	Cottonmouth	66	\N
77	congue elementum	74	71	in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in	19	Marvel	25	http://dummyimage.com/174x100.png/dddddd/000000	Chestnut weaver	95	\N
78	sit	81	5	bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce	7	Marvel	15	http://dummyimage.com/175x100.png/ff4444/ffffff	Yak	87	\N
79	rutrum at	24	22	ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl	50	Marvel	33	http://dummyimage.com/154x100.png/5fa2dd/ffffff	Common boubou shrike	93	\N
80	eget orci	100	88	orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti	84	DC	53	http://dummyimage.com/100x100.png/ff4444/ffffff	Gecko, barking	52	\N
81	tortor id	69	29	lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien	78	DC	19	http://dummyimage.com/108x100.png/5fa2dd/ffffff	African polecat	5	\N
82	nisi eu	58	34	auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis	82	Marvel	34	http://dummyimage.com/135x100.png/ff4444/ffffff	Zorilla	53	\N
83	venenatis turpis	34	88	lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper	29	DC	95	http://dummyimage.com/171x100.png/ff4444/ffffff	Dog, raccoon	98	\N
84	ullamcorper purus	99	88	lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet	45	Marvel	41	http://dummyimage.com/195x100.png/cc0000/ffffff	Ferret, black-footed	28	\N
85	amet nunc	90	26	in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis	50	DC	65	http://dummyimage.com/141x100.png/5fa2dd/ffffff	Desert tortoise	24	\N
86	nunc rhoncus	79	17	orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis	100	DC	9	http://dummyimage.com/204x100.png/ff4444/ffffff	Hudsonian godwit	7	\N
87	odio in	6	54	vestibulum proin eu mi nulla ac enim in tempor turpis nec	69	Marvel	25	http://dummyimage.com/169x100.png/5fa2dd/ffffff	Caracara, yellow-headed	41	\N
88	aliquam convallis	78	71	aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in	9	DC	23	http://dummyimage.com/193x100.png/dddddd/000000	Owl, snowy	100	\N
89	dolor	45	55	ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris	77	Marvel	21	http://dummyimage.com/162x100.png/dddddd/000000	Dragon, western bearded	29	\N
90	nibh	90	4	phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat	70	Marvel	91	http://dummyimage.com/236x100.png/5fa2dd/ffffff	Jackal, black-backed	88	\N
91	donec	63	94	et commodo vulputate justo in blandit ultrices enim lorem ipsum	40	Marvel	63	http://dummyimage.com/161x100.png/ff4444/ffffff	Pelican, australian	77	\N
92	ullamcorper	96	20	quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo	10	DC	22	http://dummyimage.com/162x100.png/ff4444/ffffff	Southern lapwing	36	\N
93	at	45	82	quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie	73	Marvel	65	http://dummyimage.com/110x100.png/dddddd/000000	Jaeger, long-tailed	42	\N
94	sagittis	34	2	ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat	72	Marvel	6	http://dummyimage.com/203x100.png/dddddd/000000	Blackbird, red-winged	66	\N
95	vestibulum ante	39	27	quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum	50	DC	92	http://dummyimage.com/189x100.png/ff4444/ffffff	Wild turkey	2	\N
96	augue a	61	22	rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet	58	Marvel	13	http://dummyimage.com/113x100.png/dddddd/000000	Japanese macaque	99	\N
97	turpis elementum	51	41	id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat	27	Marvel	54	http://dummyimage.com/247x100.png/5fa2dd/ffffff	Bandicoot, short-nosed	83	\N
98	suspendisse	1	86	vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum	82	Marvel	95	http://dummyimage.com/186x100.png/cc0000/ffffff	Western spotted skunk	48	\N
99	morbi	26	34	est phasellus sit amet erat nulla tempus vivamus in felis eu sapien	70	Marvel	78	http://dummyimage.com/168x100.png/5fa2dd/ffffff	Pacific gull	49	\N
100	sit amet	40	52	in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut	16	Marvel	4	http://dummyimage.com/226x100.png/5fa2dd/ffffff	South American meadowlark (unidentified)	68	\N
101	vivamus	17	21	nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat	64	DC	4	http://dummyimage.com/125x100.png/ff4444/ffffff	Malay squirrel (unidentified)	55	\N
102	molestie sed	99	8	dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet	73	Marvel	98	http://dummyimage.com/180x100.png/cc0000/ffffff	Lilac-breasted roller	61	\N
103	blandit mi	95	2	sit amet diam in magna bibendum imperdiet nullam orci pede	27	Marvel	30	http://dummyimage.com/158x100.png/dddddd/000000	Blue peacock	78	\N
104	erat	53	49	erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla	93	DC	82	http://dummyimage.com/211x100.png/dddddd/000000	Killer whale	48	\N
105	praesent	62	55	molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui	17	Marvel	54	http://dummyimage.com/196x100.png/ff4444/ffffff	Sugar glider	81	\N
106	sit	98	98	dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend	13	Marvel	53	http://dummyimage.com/131x100.png/dddddd/000000	Cockatoo, sulfur-crested	12	\N
107	turpis nec	40	73	luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida	9	DC	72	http://dummyimage.com/215x100.png/5fa2dd/ffffff	Magnificent frigate bird	65	\N
108	mauris	80	47	ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu	83	DC	70	http://dummyimage.com/150x100.png/5fa2dd/ffffff	Sheep, stone	13	\N
109	hac	55	52	sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit	38	Marvel	65	http://dummyimage.com/217x100.png/cc0000/ffffff	Red-legged pademelon	2	\N
110	eget tincidunt	71	64	blandit lacinia erat vestibulum sed magna at nunc commodo placerat	17	Marvel	21	http://dummyimage.com/107x100.png/ff4444/ffffff	Green-backed heron	48	\N
111	turpis integer	88	94	congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in	72	Marvel	44	http://dummyimage.com/104x100.png/ff4444/ffffff	Salmon pink bird eater tarantula	94	\N
112	vehicula condimentum	49	74	sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis	24	DC	91	http://dummyimage.com/208x100.png/dddddd/000000	Phalarope, grey	5	\N
113	nulla tellus	66	54	pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus	72	Marvel	30	http://dummyimage.com/187x100.png/cc0000/ffffff	Greylag goose	57	\N
114	risus praesent	33	31	in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat	54	Marvel	3	http://dummyimage.com/128x100.png/5fa2dd/ffffff	Dik, kirk's dik	24	\N
115	integer ac	90	93	vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat	2	DC	47	http://dummyimage.com/118x100.png/dddddd/000000	African snake (unidentified)	8	\N
116	dapibus	76	3	sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis	33	DC	48	http://dummyimage.com/187x100.png/cc0000/ffffff	Dove, little brown	14	\N
117	rutrum neque	37	71	aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque	82	DC	99	http://dummyimage.com/204x100.png/5fa2dd/ffffff	Tayra	12	\N
118	sem	22	68	leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu	58	Marvel	7	http://dummyimage.com/105x100.png/dddddd/000000	Red-necked phalarope	40	\N
119	justo	5	55	pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna	65	Marvel	16	http://dummyimage.com/161x100.png/cc0000/ffffff	Deer, barasingha	35	\N
120	at ipsum	48	65	iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo	35	DC	35	http://dummyimage.com/116x100.png/ff4444/ffffff	Nyala	30	\N
121	enim blandit	61	59	amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut	86	Marvel	67	http://dummyimage.com/237x100.png/ff4444/ffffff	Cobra, egyptian	10	\N
122	pede lobortis	86	71	amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec	99	Marvel	79	http://dummyimage.com/195x100.png/cc0000/ffffff	Fat-tailed dunnart	4	\N
123	dictumst maecenas	19	22	donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a	26	DC	11	http://dummyimage.com/168x100.png/5fa2dd/ffffff	Cat, african wild	23	\N
124	dis parturient	93	34	a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique	85	Marvel	50	http://dummyimage.com/141x100.png/dddddd/000000	Marmot, hoary	20	\N
125	viverra	38	44	nunc donec quis orci eget orci vehicula condimentum curabitur in libero	84	Marvel	84	http://dummyimage.com/126x100.png/ff4444/ffffff	Two-toed tree sloth	44	\N
126	mauris laoreet	37	45	diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec	4	Marvel	46	http://dummyimage.com/125x100.png/cc0000/ffffff	Gull, pacific	59	\N
127	ante vivamus	94	20	libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis	75	Marvel	40	http://dummyimage.com/159x100.png/dddddd/000000	Tortoise, burmese black mountain	25	\N
128	consequat	74	47	amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam	2	DC	51	http://dummyimage.com/102x100.png/dddddd/000000	Pademelon, red-legged	59	\N
129	ut erat	87	59	volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac	79	DC	74	http://dummyimage.com/177x100.png/dddddd/000000	Bird, black-throated butcher	8	\N
130	augue	62	40	nunc viverra dapibus nulla suscipit ligula in lacus curabitur at	88	Marvel	86	http://dummyimage.com/231x100.png/cc0000/ffffff	Alpaca	77	\N
131	in	10	26	in libero ut massa volutpat convallis morbi odio odio elementum	22	Marvel	78	http://dummyimage.com/146x100.png/cc0000/ffffff	Sociable weaver	48	\N
132	iaculis	72	15	nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus	35	DC	28	http://dummyimage.com/169x100.png/5fa2dd/ffffff	Ringtail cat	76	\N
133	tristique	32	3	arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor eu	15	Marvel	34	http://dummyimage.com/242x100.png/5fa2dd/ffffff	Red-headed woodpecker	10	\N
134	erat vestibulum	80	57	curae nulla dapibus dolor vel est donec odio justo sollicitudin ut	83	Marvel	60	http://dummyimage.com/170x100.png/cc0000/ffffff	American buffalo	49	\N
135	lacinia	60	31	aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in	56	DC	33	http://dummyimage.com/100x100.png/cc0000/ffffff	Flicker, campo	5	\N
136	porttitor lacus	4	41	bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce	85	DC	59	http://dummyimage.com/222x100.png/ff4444/ffffff	Glider, feathertail	40	\N
137	nulla	87	38	nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio	93	Marvel	81	http://dummyimage.com/246x100.png/dddddd/000000	Cattle egret	51	\N
138	sed	99	30	sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque	18	Marvel	23	http://dummyimage.com/194x100.png/ff4444/ffffff	Dragon, komodo	53	\N
139	ac enim	83	66	sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi	99	Marvel	81	http://dummyimage.com/210x100.png/cc0000/ffffff	Eastern box turtle	77	\N
140	varius ut	35	32	in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla	58	Marvel	45	http://dummyimage.com/205x100.png/cc0000/ffffff	Goanna lizard	88	\N
141	justo sollicitudin	61	85	sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque	35	DC	79	http://dummyimage.com/176x100.png/cc0000/ffffff	King cormorant	43	\N
142	vivamus	75	8	sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante	4	Marvel	99	http://dummyimage.com/215x100.png/ff4444/ffffff	South American sea lion	74	\N
143	odio porttitor	14	7	mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac	12	Marvel	6	http://dummyimage.com/216x100.png/5fa2dd/ffffff	Australian sea lion	11	\N
144	integer ac	54	61	tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam	57	Marvel	5	http://dummyimage.com/112x100.png/5fa2dd/ffffff	Royal tern	78	\N
145	eu tincidunt	11	79	vel sem sed sagittis nam congue risus semper porta volutpat quam	72	DC	50	http://dummyimage.com/192x100.png/5fa2dd/ffffff	Langur, common	89	\N
146	iaculis diam	48	51	donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id	64	DC	77	http://dummyimage.com/245x100.png/5fa2dd/ffffff	Cape fox	65	\N
147	lacinia	44	80	donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat	87	Marvel	72	http://dummyimage.com/168x100.png/cc0000/ffffff	Cape clawless otter	67	\N
148	lectus	31	87	posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin	92	DC	63	http://dummyimage.com/119x100.png/dddddd/000000	Squirrel, arctic ground	18	\N
149	lacinia sapien	76	8	ipsum praesent blandit lacinia erat vestibulum sed magna at nunc	2	DC	99	http://dummyimage.com/223x100.png/ff4444/ffffff	Ring-tailed possum	72	\N
150	justo	51	98	orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi	29	Marvel	37	http://dummyimage.com/107x100.png/dddddd/000000	Columbian rainbow boa	56	\N
151	iaculis diam	21	34	nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat	9	Marvel	49	http://dummyimage.com/227x100.png/dddddd/000000	Swainson's francolin	98	\N
152	feugiat	1	4	libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet	61	Marvel	1	http://dummyimage.com/210x100.png/cc0000/ffffff	Fox, north american red	27	\N
153	mauris	75	43	mattis nibh ligula nec sem duis aliquam convallis nunc proin	17	DC	87	http://dummyimage.com/113x100.png/dddddd/000000	Cormorant, neotropic	42	\N
154	semper	95	71	sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed	51	DC	14	http://dummyimage.com/214x100.png/ff4444/ffffff	Kingfisher, pied	4	\N
155	in	47	39	nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in	65	DC	57	http://dummyimage.com/226x100.png/cc0000/ffffff	Slender loris	61	\N
156	lacus curabitur	12	89	justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas	96	Marvel	64	http://dummyimage.com/245x100.png/5fa2dd/ffffff	White-winged black tern	41	\N
157	id	97	75	luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas	16	DC	67	http://dummyimage.com/173x100.png/dddddd/000000	Spider, wolf	55	\N
158	vestibulum	77	14	quam a odio in hac habitasse platea dictumst maecenas ut massa	80	DC	99	http://dummyimage.com/240x100.png/cc0000/ffffff	Fox, bat-eared	46	\N
159	vel	80	67	semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis	65	Marvel	50	http://dummyimage.com/182x100.png/5fa2dd/ffffff	Rhesus monkey	53	\N
160	rhoncus dui	1	10	vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam	88	Marvel	89	http://dummyimage.com/112x100.png/dddddd/000000	Squirrel, golden-mantled ground	54	\N
161	at	16	58	in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing	57	Marvel	70	http://dummyimage.com/129x100.png/cc0000/ffffff	Australian masked owl	73	\N
162	sed	37	76	semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam	92	Marvel	32	http://dummyimage.com/185x100.png/dddddd/000000	Goose, cereopsis	78	\N
163	lectus pellentesque	64	29	imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam	78	Marvel	76	http://dummyimage.com/167x100.png/cc0000/ffffff	Turtle, long-necked	53	\N
164	ipsum aliquam	97	91	dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida	28	DC	36	http://dummyimage.com/102x100.png/cc0000/ffffff	Cape clawless otter	9	\N
165	viverra	89	7	quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non	36	Marvel	9	http://dummyimage.com/207x100.png/cc0000/ffffff	Eagle, crowned	87	\N
166	interdum mauris	3	35	id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis	84	DC	97	http://dummyimage.com/155x100.png/ff4444/ffffff	Francolin, coqui	86	\N
167	metus	68	83	primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin	96	DC	8	http://dummyimage.com/104x100.png/cc0000/ffffff	Glider, squirrel	30	\N
168	pretium	31	11	morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque	43	Marvel	61	http://dummyimage.com/177x100.png/ff4444/ffffff	Lion, steller's sea	15	\N
169	nunc	66	67	sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque	76	DC	78	http://dummyimage.com/236x100.png/5fa2dd/ffffff	Chimpanzee	97	\N
170	consectetuer adipiscing	36	97	aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac	45	DC	63	http://dummyimage.com/152x100.png/dddddd/000000	White-eye, cape	38	\N
171	platea	30	99	laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis	48	Marvel	64	http://dummyimage.com/215x100.png/cc0000/ffffff	Tinamou, elegant crested	86	\N
172	volutpat	30	89	odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui	26	Marvel	41	http://dummyimage.com/139x100.png/dddddd/000000	Red and blue macaw	6	\N
173	aliquet	78	16	consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla	67	DC	93	http://dummyimage.com/245x100.png/cc0000/ffffff	Rat, desert kangaroo	84	\N
174	odio	70	7	congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis	58	DC	100	http://dummyimage.com/119x100.png/ff4444/ffffff	Lynx, african	58	\N
175	pede justo	94	1	non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis	71	Marvel	59	http://dummyimage.com/114x100.png/dddddd/000000	Wambenger, red-tailed	72	\N
176	tellus nisi	41	51	in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh	33	Marvel	28	http://dummyimage.com/192x100.png/ff4444/ffffff	River wallaby	3	\N
177	odio odio	95	44	neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh	100	DC	24	http://dummyimage.com/184x100.png/5fa2dd/ffffff	Porcupine, prehensile-tailed	47	\N
178	nunc	43	30	suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum	84	Marvel	27	http://dummyimage.com/118x100.png/ff4444/ffffff	Tiger snake	26	\N
179	quisque	22	92	tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst	71	DC	20	http://dummyimage.com/202x100.png/dddddd/000000	Bat, little brown	51	\N
180	nulla pede	88	84	in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere	64	Marvel	23	http://dummyimage.com/233x100.png/5fa2dd/ffffff	Turkey, australian brush	5	\N
181	pede	11	23	praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut	14	DC	21	http://dummyimage.com/203x100.png/ff4444/ffffff	Bear, polar	1	\N
182	rutrum at	6	98	ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue	62	DC	10	http://dummyimage.com/233x100.png/5fa2dd/ffffff	Spider, wolf	69	\N
183	in blandit	99	79	ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis	3	DC	75	http://dummyimage.com/189x100.png/dddddd/000000	Brown hyena	29	\N
184	faucibus	27	91	pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus	41	DC	82	http://dummyimage.com/144x100.png/ff4444/ffffff	Common wolf	76	\N
185	quisque	97	83	mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis	89	DC	17	http://dummyimage.com/231x100.png/ff4444/ffffff	Crab, sally lightfoot	89	\N
186	pellentesque ultrices	11	85	sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus	33	Marvel	53	http://dummyimage.com/126x100.png/cc0000/ffffff	Brindled gnu	45	\N
187	ultrices	9	65	in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam	74	Marvel	91	http://dummyimage.com/132x100.png/dddddd/000000	Grey phalarope	64	\N
188	in	83	67	sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis	99	DC	9	http://dummyimage.com/145x100.png/dddddd/000000	Kiskadee, great	80	\N
189	nibh	78	6	mi sit amet lobortis sapien sapien non mi integer ac neque duis	92	DC	44	http://dummyimage.com/237x100.png/cc0000/ffffff	Tern, white-winged black	5	\N
190	pellentesque ultrices	40	27	dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus	99	DC	38	http://dummyimage.com/142x100.png/dddddd/000000	Crocodile, nile	39	\N
191	consectetuer adipiscing	20	17	diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue	26	Marvel	83	http://dummyimage.com/170x100.png/dddddd/000000	Nutcracker, clark's	59	\N
192	vel	42	77	cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor	53	Marvel	93	http://dummyimage.com/248x100.png/cc0000/ffffff	Eagle, long-crested hawk	94	\N
193	orci luctus	19	24	quam sapien varius ut blandit non interdum in ante vestibulum ante	44	DC	98	http://dummyimage.com/224x100.png/5fa2dd/ffffff	Wallaby, agile	62	\N
194	ipsum integer	94	11	dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi	43	DC	11	http://dummyimage.com/149x100.png/5fa2dd/ffffff	Palm squirrel	74	\N
195	luctus cum	94	35	lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere	84	Marvel	6	http://dummyimage.com/157x100.png/dddddd/000000	Stork, jabiru	77	\N
196	dictumst	9	87	mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel	30	Marvel	54	http://dummyimage.com/229x100.png/5fa2dd/ffffff	Macaw, scarlet	52	\N
197	ullamcorper	58	80	eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero	93	Marvel	52	http://dummyimage.com/144x100.png/5fa2dd/ffffff	Thomson's gazelle	5	\N
198	lobortis sapien	88	65	fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio	50	DC	33	http://dummyimage.com/163x100.png/cc0000/ffffff	Springhare	89	\N
199	mauris enim	59	65	odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus	94	Marvel	62	http://dummyimage.com/143x100.png/cc0000/ffffff	Bennett's wallaby	8	\N
200	vulputate luctus	98	24	et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet	27	DC	81	http://dummyimage.com/219x100.png/5fa2dd/ffffff	Southern lapwing	45	\N
201	mauris viverra	95	19	porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet	8	Marvel	16	http://dummyimage.com/139x100.png/ff4444/ffffff	Tern, royal	2	\N
202	vestibulum	48	89	aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia	83	Marvel	97	http://dummyimage.com/221x100.png/cc0000/ffffff	Bird (unidentified)	67	\N
203	in	36	26	nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus	83	Marvel	59	http://dummyimage.com/228x100.png/dddddd/000000	Bontebok	93	\N
204	eros viverra	34	59	ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id	21	DC	92	http://dummyimage.com/141x100.png/dddddd/000000	Ibex	4	\N
205	faucibus	26	57	vulputate elementum nullam varius nulla facilisi cras non velit nec	74	DC	30	http://dummyimage.com/203x100.png/ff4444/ffffff	Macaw, red and blue	48	\N
206	augue vestibulum	21	70	auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi	85	DC	48	http://dummyimage.com/153x100.png/cc0000/ffffff	Snake, buttermilk	3	\N
207	dapibus duis	35	66	parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem	82	DC	76	http://dummyimage.com/214x100.png/ff4444/ffffff	Long-billed corella	85	\N
208	quis	99	81	risus auctor sed tristique in tempus sit amet sem fusce consequat nulla	84	DC	19	http://dummyimage.com/224x100.png/cc0000/ffffff	Elephant, african	80	\N
209	sit amet	84	91	ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur	65	Marvel	10	http://dummyimage.com/208x100.png/ff4444/ffffff	Scaly-breasted lorikeet	1	\N
210	eleifend pede	7	15	ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum	47	DC	26	http://dummyimage.com/216x100.png/dddddd/000000	Wood pigeon	19	\N
211	feugiat	13	81	vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non	53	DC	48	http://dummyimage.com/230x100.png/cc0000/ffffff	Burmese brown mountain tortoise	73	\N
212	ultrices	14	31	rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede	39	DC	90	http://dummyimage.com/228x100.png/ff4444/ffffff	Seal, southern elephant	25	\N
213	lobortis	60	65	adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget	65	Marvel	88	http://dummyimage.com/242x100.png/cc0000/ffffff	Langur, hanuman	56	\N
214	eget elit	95	24	in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus	38	Marvel	20	http://dummyimage.com/148x100.png/5fa2dd/ffffff	Hoopoe, eurasian	2	\N
215	in	98	77	duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus	46	Marvel	28	http://dummyimage.com/127x100.png/dddddd/000000	Cockatoo, sulfur-crested	88	\N
216	porttitor	99	98	lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum	12	DC	64	http://dummyimage.com/127x100.png/dddddd/000000	Red-tailed wambenger	37	\N
217	enim	46	14	et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean	72	Marvel	28	http://dummyimage.com/138x100.png/dddddd/000000	Hanuman langur	42	\N
218	dictumst aliquam	22	30	venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue	12	DC	38	http://dummyimage.com/182x100.png/ff4444/ffffff	Royal tern	47	\N
219	vel	68	59	vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien	6	DC	29	http://dummyimage.com/122x100.png/dddddd/000000	Whip-tailed wallaby	34	\N
220	nulla quisque	17	81	orci mauris lacinia sapien quis libero nullam sit amet turpis elementum	56	DC	85	http://dummyimage.com/166x100.png/dddddd/000000	Squirrel glider	83	\N
221	rutrum	70	99	accumsan felis ut at dolor quis odio consequat varius integer ac	63	DC	89	http://dummyimage.com/150x100.png/dddddd/000000	American buffalo	85	\N
222	molestie	65	87	congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed	69	DC	27	http://dummyimage.com/157x100.png/cc0000/ffffff	Heron, striated	70	\N
223	et magnis	71	85	quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor eu	52	Marvel	59	http://dummyimage.com/156x100.png/dddddd/000000	Woylie	31	\N
224	venenatis	17	27	ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut	9	Marvel	81	http://dummyimage.com/101x100.png/cc0000/ffffff	Eastern indigo snake	68	\N
225	vestibulum	12	67	vel est donec odio justo sollicitudin ut suscipit a feugiat	34	DC	54	http://dummyimage.com/228x100.png/dddddd/000000	Langur, gray	43	\N
226	placerat praesent	87	60	eget eros elementum pellentesque quisque porta volutpat erat quisque erat	39	DC	43	http://dummyimage.com/101x100.png/cc0000/ffffff	Fringe-eared oryx	96	\N
227	odio justo	23	24	aliquam erat volutpat in congue etiam justo etiam pretium iaculis	25	Marvel	28	http://dummyimage.com/166x100.png/cc0000/ffffff	Raven, white-necked	43	\N
228	tortor duis	98	53	amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo	28	Marvel	46	http://dummyimage.com/120x100.png/5fa2dd/ffffff	Yellow-brown sungazer	9	\N
229	et	53	45	et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis	88	Marvel	31	http://dummyimage.com/215x100.png/dddddd/000000	Lynx, african	13	\N
230	quam nec	23	68	habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie	29	Marvel	28	http://dummyimage.com/183x100.png/cc0000/ffffff	Madagascar hawk owl	87	\N
231	orci	86	16	nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem	36	Marvel	58	http://dummyimage.com/149x100.png/ff4444/ffffff	Red-billed hornbill	31	\N
232	ante vestibulum	1	64	donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci	100	Marvel	32	http://dummyimage.com/149x100.png/cc0000/ffffff	American bighorn sheep	88	\N
233	augue	4	9	vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat	89	Marvel	70	http://dummyimage.com/245x100.png/5fa2dd/ffffff	Carmine bee-eater	65	\N
234	nascetur	72	99	tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc	59	Marvel	69	http://dummyimage.com/238x100.png/dddddd/000000	Hyena, brown	26	\N
235	ultrices posuere	33	5	montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et	3	DC	52	http://dummyimage.com/190x100.png/dddddd/000000	Porcupine, north american	69	\N
236	leo rhoncus	90	89	eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam	99	Marvel	3	http://dummyimage.com/213x100.png/ff4444/ffffff	Russian dragonfly	80	\N
237	feugiat et	89	54	elit ac nulla sed vel enim sit amet nunc viverra	54	Marvel	48	http://dummyimage.com/166x100.png/cc0000/ffffff	Pied butcher bird	44	\N
238	ante	2	70	in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer	93	Marvel	13	http://dummyimage.com/139x100.png/ff4444/ffffff	Kite, black	79	\N
239	non mi	39	18	eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum	56	DC	54	http://dummyimage.com/163x100.png/cc0000/ffffff	Puffin, horned	29	\N
240	phasellus	83	85	erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer	96	Marvel	89	http://dummyimage.com/241x100.png/ff4444/ffffff	Suricate	66	\N
241	vestibulum	67	100	non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam	92	DC	50	http://dummyimage.com/148x100.png/5fa2dd/ffffff	Tarantula	41	\N
242	in	69	74	justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla	26	DC	43	http://dummyimage.com/182x100.png/5fa2dd/ffffff	Black and white colobus	67	\N
243	id	31	73	sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus	94	DC	42	http://dummyimage.com/178x100.png/dddddd/000000	Crane, black-crowned	12	\N
244	mollis molestie	59	95	pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper	82	Marvel	6	http://dummyimage.com/179x100.png/5fa2dd/ffffff	Mongoose, banded	13	\N
245	praesent	31	11	sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis	22	DC	92	http://dummyimage.com/142x100.png/5fa2dd/ffffff	Sambar	21	\N
246	sit amet	91	63	amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam	41	Marvel	49	http://dummyimage.com/223x100.png/5fa2dd/ffffff	Heron, grey	96	\N
247	eros viverra	72	68	libero nullam sit amet turpis elementum ligula vehicula consequat morbi	26	Marvel	90	http://dummyimage.com/184x100.png/cc0000/ffffff	Dusky gull	12	\N
248	posuere felis	66	80	orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat	30	DC	99	http://dummyimage.com/172x100.png/cc0000/ffffff	Cat, cape wild	53	\N
249	venenatis	38	17	consequat lectus in est risus auctor sed tristique in tempus sit amet sem	99	DC	35	http://dummyimage.com/142x100.png/5fa2dd/ffffff	Rattlesnake, eastern diamondback	2	\N
250	at	43	13	erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis	72	DC	7	http://dummyimage.com/138x100.png/dddddd/000000	Spotted hyena	26	\N
251	nulla	74	60	imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis	42	Marvel	88	http://dummyimage.com/219x100.png/dddddd/000000	Cottonmouth	48	\N
252	ante ipsum	86	7	nibh fusce lacus purus aliquet at feugiat non pretium quis	44	DC	64	http://dummyimage.com/131x100.png/5fa2dd/ffffff	Common seal	6	\N
253	nibh	39	15	sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris	87	DC	4	http://dummyimage.com/228x100.png/ff4444/ffffff	Antelope, sable	45	\N
254	id	100	60	donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam	61	Marvel	100	http://dummyimage.com/157x100.png/dddddd/000000	Macaw, scarlet	26	\N
255	convallis nunc	22	77	semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus	93	DC	92	http://dummyimage.com/154x100.png/cc0000/ffffff	Hoopoe, eurasian	60	\N
256	proin	2	74	nunc proin at turpis a pede posuere nonummy integer non velit	40	Marvel	18	http://dummyimage.com/192x100.png/ff4444/ffffff	Kingfisher, pied	73	\N
257	pellentesque	5	56	ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra	19	DC	90	http://dummyimage.com/171x100.png/ff4444/ffffff	Bat, madagascar fruit	20	\N
258	orci	97	78	cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum	28	DC	90	http://dummyimage.com/102x100.png/cc0000/ffffff	Fork-tailed drongo	25	\N
259	nisi	75	56	ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et	36	Marvel	71	http://dummyimage.com/118x100.png/dddddd/000000	Siskin, pine	53	\N
260	mi	53	64	mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue	46	DC	69	http://dummyimage.com/104x100.png/5fa2dd/ffffff	Violet-crested turaco	35	\N
261	tortor risus	31	92	ligula nec sem duis aliquam convallis nunc proin at turpis a	66	DC	48	http://dummyimage.com/121x100.png/5fa2dd/ffffff	Galapagos penguin	47	\N
262	nibh in	19	64	quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien	40	DC	67	http://dummyimage.com/119x100.png/cc0000/ffffff	Four-striped grass mouse	88	\N
263	orci vehicula	88	39	ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id	19	DC	74	http://dummyimage.com/186x100.png/ff4444/ffffff	Gorilla, western lowland	90	\N
264	tincidunt eget	43	31	ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend	50	DC	9	http://dummyimage.com/239x100.png/5fa2dd/ffffff	Shrike, southern white-crowned	7	\N
265	tempus	19	68	et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet	83	DC	31	http://dummyimage.com/195x100.png/dddddd/000000	Skunk, western spotted	17	\N
266	consequat morbi	54	78	justo nec condimentum neque sapien placerat ante nulla justo aliquam quis	49	DC	7	http://dummyimage.com/243x100.png/ff4444/ffffff	White-mantled colobus	92	\N
267	sapien non	20	78	cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus	77	Marvel	32	http://dummyimage.com/221x100.png/ff4444/ffffff	Zorro, common	57	\N
268	at	1	94	curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et	16	DC	16	http://dummyimage.com/172x100.png/dddddd/000000	South African hedgehog	17	\N
269	accumsan odio	35	4	phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla	24	DC	50	http://dummyimage.com/121x100.png/cc0000/ffffff	Chameleon (unidentified)	64	\N
270	duis ac	46	89	sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis	86	Marvel	6	http://dummyimage.com/152x100.png/ff4444/ffffff	Pied kingfisher	83	\N
271	duis	44	53	nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu	54	Marvel	42	http://dummyimage.com/194x100.png/dddddd/000000	Wallaby, dama	64	\N
272	donec	41	27	justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit	4	Marvel	68	http://dummyimage.com/125x100.png/5fa2dd/ffffff	Rattlesnake, eastern diamondback	65	\N
273	nonummy integer	68	46	ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae	28	Marvel	62	http://dummyimage.com/135x100.png/cc0000/ffffff	Gelada baboon	6	\N
274	ut	75	40	pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices	49	DC	18	http://dummyimage.com/195x100.png/cc0000/ffffff	Steller's sea lion	19	\N
275	penatibus	28	59	orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum	35	DC	61	http://dummyimage.com/180x100.png/5fa2dd/ffffff	Lava gull	13	\N
276	libero ut	99	10	imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus	80	DC	54	http://dummyimage.com/182x100.png/5fa2dd/ffffff	Malleefowl	4	\N
277	est phasellus	73	21	vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum	78	Marvel	85	http://dummyimage.com/110x100.png/cc0000/ffffff	Falcon, peregrine	72	\N
278	orci luctus	95	34	elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt	1	DC	54	http://dummyimage.com/225x100.png/cc0000/ffffff	Crane, wattled	98	\N
279	nibh	49	1	mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a	100	DC	28	http://dummyimage.com/224x100.png/cc0000/ffffff	Monitor lizard (unidentified)	22	\N
280	rutrum at	87	17	donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia	54	DC	3	http://dummyimage.com/201x100.png/5fa2dd/ffffff	Egret, cattle	62	\N
281	dui proin	86	12	et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin	49	DC	3	http://dummyimage.com/219x100.png/dddddd/000000	Vulture, black	78	\N
282	quis	13	69	at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis	65	DC	58	http://dummyimage.com/166x100.png/dddddd/000000	Bat, little brown	59	\N
283	nam ultrices	22	53	lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi	82	DC	96	http://dummyimage.com/147x100.png/dddddd/000000	Emu	74	\N
284	blandit nam	99	100	interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor	4	Marvel	100	http://dummyimage.com/235x100.png/ff4444/ffffff	Grouse, greater sage	47	\N
285	orci mauris	73	4	donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis	21	Marvel	37	http://dummyimage.com/119x100.png/ff4444/ffffff	Tiger snake	89	\N
286	posuere	34	27	iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate	26	DC	34	http://dummyimage.com/103x100.png/5fa2dd/ffffff	Badger, eurasian	89	\N
287	porttitor lacus	56	53	maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat	50	DC	45	http://dummyimage.com/246x100.png/5fa2dd/ffffff	Indian jackal	86	\N
288	nisl nunc	40	26	ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat	70	Marvel	84	http://dummyimage.com/222x100.png/dddddd/000000	Galapagos hawk	88	\N
289	sed	97	39	consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis	94	Marvel	44	http://dummyimage.com/175x100.png/5fa2dd/ffffff	Hoopoe, eurasian	87	\N
290	praesent	41	73	odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat	19	DC	50	http://dummyimage.com/241x100.png/5fa2dd/ffffff	Chital	87	\N
291	pede	78	54	non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis	19	DC	71	http://dummyimage.com/202x100.png/dddddd/000000	Buttermilk snake	21	\N
292	tortor	95	87	sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc	76	Marvel	75	http://dummyimage.com/243x100.png/cc0000/ffffff	Teal, hottentot	39	\N
293	nulla	60	17	nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede	10	DC	32	http://dummyimage.com/100x100.png/dddddd/000000	Opossum, american virginia	1	\N
294	pellentesque	86	79	amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti	74	DC	36	http://dummyimage.com/107x100.png/5fa2dd/ffffff	Kafue flats lechwe	55	\N
295	at	30	39	pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse	90	Marvel	75	http://dummyimage.com/202x100.png/dddddd/000000	Cobra, egyptian	71	\N
296	nam	76	50	tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare	48	Marvel	59	http://dummyimage.com/237x100.png/5fa2dd/ffffff	Heron, green-backed	95	\N
297	nec sem	26	91	vivamus in felis eu sapien cursus vestibulum proin eu mi nulla	56	Marvel	74	http://dummyimage.com/113x100.png/5fa2dd/ffffff	Long-billed cockatoo	81	\N
298	tortor	53	98	sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus	74	Marvel	82	http://dummyimage.com/154x100.png/5fa2dd/ffffff	Otter, brazilian	41	\N
299	quisque ut	22	8	in libero ut massa volutpat convallis morbi odio odio elementum eu	13	Marvel	99	http://dummyimage.com/192x100.png/ff4444/ffffff	Emerald-spotted wood dove	6	\N
300	phasellus id	11	73	amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla	64	DC	12	http://dummyimage.com/169x100.png/5fa2dd/ffffff	Gemsbok	64	\N
301	pellentesque	89	67	metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit	14	DC	69	http://dummyimage.com/224x100.png/ff4444/ffffff	Crane, sarus	69	\N
302	accumsan odio	9	73	a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor	62	Marvel	45	http://dummyimage.com/116x100.png/5fa2dd/ffffff	Shelduck, common	58	\N
303	eget	43	58	curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit	68	DC	98	http://dummyimage.com/100x100.png/cc0000/ffffff	Baboon, savanna	46	\N
304	ac	74	87	ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus	68	Marvel	57	http://dummyimage.com/239x100.png/dddddd/000000	Arctic hare	46	\N
305	nibh	55	74	est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum	88	DC	41	http://dummyimage.com/112x100.png/ff4444/ffffff	Levaillant's barbet	97	\N
306	sapien	38	62	ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed	51	Marvel	70	http://dummyimage.com/106x100.png/cc0000/ffffff	Cockatoo, red-breasted	98	\N
307	felis	69	16	eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut	70	DC	94	http://dummyimage.com/114x100.png/cc0000/ffffff	Snake, racer	83	\N
308	nibh in	38	41	mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum	49	DC	55	http://dummyimage.com/131x100.png/5fa2dd/ffffff	Butterfly, tropical buckeye	31	\N
309	justo	67	13	semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor	2	DC	70	http://dummyimage.com/206x100.png/5fa2dd/ffffff	Asian water buffalo	42	\N
310	rutrum	39	7	in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices	16	DC	25	http://dummyimage.com/117x100.png/ff4444/ffffff	Pampa gray fox	2	\N
311	amet	63	67	leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in	5	Marvel	45	http://dummyimage.com/150x100.png/cc0000/ffffff	Herring gull	61	\N
312	lectus	22	5	massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies	94	DC	65	http://dummyimage.com/196x100.png/ff4444/ffffff	Waterbuck, common	41	\N
313	urna	44	93	ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia	100	Marvel	83	http://dummyimage.com/204x100.png/cc0000/ffffff	Jackal, indian	18	\N
314	ridiculus	73	26	magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus	66	Marvel	54	http://dummyimage.com/182x100.png/ff4444/ffffff	Black-footed ferret	3	\N
315	fermentum	44	58	gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam	89	DC	10	http://dummyimage.com/169x100.png/dddddd/000000	Camel, dromedary	54	\N
316	ridiculus mus	64	77	tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante	79	Marvel	58	http://dummyimage.com/114x100.png/ff4444/ffffff	Whale, long-finned pilot	9	\N
317	ornare consequat	26	96	nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in	49	Marvel	11	http://dummyimage.com/117x100.png/dddddd/000000	Turkey, australian brush	70	\N
318	imperdiet	56	75	et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere	41	Marvel	3	http://dummyimage.com/177x100.png/cc0000/ffffff	Booby, blue-footed	18	\N
319	tempor	30	18	lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea	50	Marvel	66	http://dummyimage.com/114x100.png/5fa2dd/ffffff	Gazelle, grant's	25	\N
320	convallis	34	62	amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum	71	Marvel	34	http://dummyimage.com/127x100.png/cc0000/ffffff	Little cormorant	3	\N
321	turpis	65	89	orci vehicula condimentum curabitur in libero ut massa volutpat convallis	65	DC	30	http://dummyimage.com/189x100.png/cc0000/ffffff	Fox, north american red	36	\N
322	eu est	9	74	dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent	80	DC	26	http://dummyimage.com/101x100.png/dddddd/000000	Wallaby, whip-tailed	62	\N
323	nibh	31	83	quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in	58	Marvel	20	http://dummyimage.com/242x100.png/dddddd/000000	White rhinoceros	11	\N
324	sit amet	12	82	fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse	61	DC	80	http://dummyimage.com/198x100.png/cc0000/ffffff	Malachite kingfisher	69	\N
325	quis	73	33	nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio	70	DC	51	http://dummyimage.com/236x100.png/cc0000/ffffff	White-cheeked pintail	46	\N
326	morbi	69	99	scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin	81	Marvel	52	http://dummyimage.com/189x100.png/cc0000/ffffff	Kirk's dik dik	98	\N
327	quis	32	24	enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh	17	DC	68	http://dummyimage.com/242x100.png/dddddd/000000	Rhea, common	56	\N
328	quis augue	68	44	duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at	72	DC	88	http://dummyimage.com/202x100.png/5fa2dd/ffffff	Duiker, gray	27	\N
329	ante ipsum	83	56	platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien	67	Marvel	84	http://dummyimage.com/162x100.png/ff4444/ffffff	Cape clawless otter	29	\N
330	commodo placerat	71	64	et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut	66	Marvel	65	http://dummyimage.com/150x100.png/5fa2dd/ffffff	Pronghorn	28	\N
331	quam suspendisse	13	57	donec semper sapien a libero nam dui proin leo odio porttitor id consequat in	16	DC	95	http://dummyimage.com/114x100.png/5fa2dd/ffffff	Swan, trumpeter	63	\N
332	justo	81	81	vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi	85	Marvel	31	http://dummyimage.com/139x100.png/cc0000/ffffff	Macaw, red and blue	46	\N
333	porttitor lacus	92	28	morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit	69	Marvel	54	http://dummyimage.com/162x100.png/cc0000/ffffff	Kaffir cat	37	\N
334	faucibus orci	19	54	a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem	7	DC	93	http://dummyimage.com/235x100.png/dddddd/000000	Javan gold-spotted mongoose	45	\N
335	phasellus	84	24	primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis	24	Marvel	25	http://dummyimage.com/239x100.png/dddddd/000000	Flamingo, lesser	82	\N
336	amet consectetuer	63	77	eros elementum pellentesque quisque porta volutpat erat quisque erat eros	72	DC	61	http://dummyimage.com/134x100.png/ff4444/ffffff	Vulture, king	36	\N
337	auctor	6	1	sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec	70	DC	11	http://dummyimage.com/213x100.png/cc0000/ffffff	Giant otter	46	\N
338	mauris morbi	76	93	rutrum rutrum neque aenean auctor gravida sem praesent id massa id	10	Marvel	91	http://dummyimage.com/236x100.png/cc0000/ffffff	European stork	56	\N
339	tempus	60	33	sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue	50	DC	23	http://dummyimage.com/222x100.png/ff4444/ffffff	Mississippi alligator	64	\N
340	urna pretium	13	99	morbi quis tortor id nulla ultrices aliquet maecenas leo odio	83	Marvel	95	http://dummyimage.com/129x100.png/ff4444/ffffff	Civet, small-toothed palm	21	\N
341	diam cras	51	73	mi in porttitor pede justo eu massa donec dapibus duis	55	DC	22	http://dummyimage.com/153x100.png/cc0000/ffffff	Egret, cattle	28	\N
342	tempus semper	85	53	dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula	27	DC	32	http://dummyimage.com/145x100.png/cc0000/ffffff	Eastern box turtle	40	\N
343	natoque	82	3	id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est	90	Marvel	11	http://dummyimage.com/124x100.png/dddddd/000000	Blue crane	81	\N
344	in tempus	68	27	pede ullamcorper augue a suscipit nulla elit ac nulla sed	7	Marvel	19	http://dummyimage.com/160x100.png/5fa2dd/ffffff	Kori bustard	6	\N
345	aliquet	49	81	pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis	73	DC	40	http://dummyimage.com/101x100.png/5fa2dd/ffffff	Tailless tenrec	92	\N
346	in est	43	9	in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus	47	Marvel	20	http://dummyimage.com/183x100.png/cc0000/ffffff	American black bear	48	\N
347	id consequat	54	97	nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt	40	DC	22	http://dummyimage.com/123x100.png/cc0000/ffffff	Long-billed corella	1	\N
348	id	66	80	lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris	40	DC	99	http://dummyimage.com/246x100.png/dddddd/000000	Elegant crested tinamou	62	\N
349	nulla	94	55	amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in	66	DC	20	http://dummyimage.com/160x100.png/ff4444/ffffff	Large-eared bushbaby	18	\N
350	ante ipsum	64	80	volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut	87	DC	79	http://dummyimage.com/150x100.png/ff4444/ffffff	Crane, sarus	97	\N
351	cursus	58	59	ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo	62	DC	62	http://dummyimage.com/204x100.png/dddddd/000000	Japanese macaque	88	\N
352	a pede	39	85	rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id	12	Marvel	23	http://dummyimage.com/102x100.png/ff4444/ffffff	Frog (unidentified)	100	\N
353	et	18	50	luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at	92	Marvel	64	http://dummyimage.com/122x100.png/ff4444/ffffff	Sulfur-crested cockatoo	78	\N
354	aliquam	85	61	vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id	92	Marvel	27	http://dummyimage.com/241x100.png/ff4444/ffffff	Eurasian hoopoe	22	\N
355	in	59	89	curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus	46	Marvel	69	http://dummyimage.com/185x100.png/cc0000/ffffff	Red-necked wallaby	11	\N
356	nulla	62	75	natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis	98	Marvel	69	http://dummyimage.com/173x100.png/ff4444/ffffff	Campo flicker	37	\N
357	praesent	43	85	cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla	72	DC	94	http://dummyimage.com/199x100.png/ff4444/ffffff	Stick insect	13	\N
358	porttitor lacus	56	92	libero quis orci nullam molestie nibh in lectus pellentesque at	82	DC	28	http://dummyimage.com/199x100.png/5fa2dd/ffffff	Heron, yellow-crowned night	72	\N
359	id nisl	76	17	duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut	93	Marvel	27	http://dummyimage.com/182x100.png/5fa2dd/ffffff	Common zorro	74	\N
360	lacinia	17	43	nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper	31	DC	83	http://dummyimage.com/196x100.png/dddddd/000000	Bird, secretary	10	\N
361	lacinia	21	52	amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci	35	DC	9	http://dummyimage.com/245x100.png/cc0000/ffffff	Brindled gnu	22	\N
362	vestibulum	69	57	faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum	7	DC	11	http://dummyimage.com/198x100.png/ff4444/ffffff	Mountain duck	47	\N
363	at	70	45	viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum	83	DC	65	http://dummyimage.com/112x100.png/dddddd/000000	Common wallaroo	99	\N
364	aliquam sit	73	53	semper porta volutpat quam pede lobortis ligula sit amet eleifend pede	6	DC	46	http://dummyimage.com/118x100.png/dddddd/000000	Deer, barasingha	64	\N
365	quam	33	35	molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec	77	DC	60	http://dummyimage.com/240x100.png/cc0000/ffffff	Caribou	17	\N
366	pretium	21	48	mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis	20	Marvel	7	http://dummyimage.com/140x100.png/dddddd/000000	Bunting, crested	26	\N
367	quam turpis	66	74	ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor eu	78	Marvel	21	http://dummyimage.com/209x100.png/cc0000/ffffff	Common melba finch	1	\N
368	ut dolor	38	39	nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat	38	Marvel	34	http://dummyimage.com/248x100.png/dddddd/000000	Possum, ring-tailed	77	\N
369	maecenas pulvinar	60	62	leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum	37	Marvel	89	http://dummyimage.com/172x100.png/dddddd/000000	Yellow-brown sungazer	57	\N
370	phasellus	48	38	sapien non mi integer ac neque duis bibendum morbi non	100	DC	67	http://dummyimage.com/126x100.png/cc0000/ffffff	Seven-banded armadillo	21	\N
371	habitasse	9	87	sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque	28	Marvel	13	http://dummyimage.com/173x100.png/5fa2dd/ffffff	Red-necked phalarope	71	\N
372	luctus et	83	82	tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec	40	Marvel	54	http://dummyimage.com/172x100.png/5fa2dd/ffffff	Legaan, Monitor (unidentified)	24	\N
373	libero non	45	72	morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed	36	DC	57	http://dummyimage.com/214x100.png/ff4444/ffffff	Grant's gazelle	2	\N
374	ut	82	70	velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien	93	DC	83	http://dummyimage.com/142x100.png/dddddd/000000	Tsessebe	56	\N
375	eget semper	100	54	donec semper sapien a libero nam dui proin leo odio porttitor id consequat in	35	Marvel	46	http://dummyimage.com/163x100.png/5fa2dd/ffffff	Mudskipper (unidentified)	7	\N
376	in quam	13	13	in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis	16	Marvel	81	http://dummyimage.com/135x100.png/dddddd/000000	Red brocket	96	\N
377	dui luctus	90	85	id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac	29	Marvel	91	http://dummyimage.com/250x100.png/ff4444/ffffff	Egyptian goose	22	\N
378	odio	91	60	ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis	9	Marvel	4	http://dummyimage.com/160x100.png/dddddd/000000	Grebe, little	51	\N
379	sed	84	59	at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac	51	Marvel	10	http://dummyimage.com/117x100.png/ff4444/ffffff	Desert tortoise	26	\N
380	felis	82	77	sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio	52	DC	77	http://dummyimage.com/209x100.png/cc0000/ffffff	Guerza	63	\N
381	sapien a	76	37	metus aenean fermentum donec ut mauris eget massa tempor convallis nulla	20	DC	78	http://dummyimage.com/120x100.png/cc0000/ffffff	Gull, kelp	29	\N
382	ligula	90	82	sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis	10	DC	17	http://dummyimage.com/221x100.png/5fa2dd/ffffff	Black vulture	57	\N
383	turpis	91	92	est et tempus semper est quam pharetra magna ac consequat metus sapien ut	8	DC	19	http://dummyimage.com/120x100.png/dddddd/000000	Madagascar fruit bat	70	\N
384	non	31	56	sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi	99	DC	40	http://dummyimage.com/119x100.png/cc0000/ffffff	European stork	89	\N
444	erat	26	65	a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus	83	Marvel	90	http://dummyimage.com/195x100.png/dddddd/000000	Denham's bustard	37	\N
385	in purus	49	53	orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec	97	DC	47	http://dummyimage.com/196x100.png/5fa2dd/ffffff	Green heron	91	\N
386	ultrices aliquet	38	71	arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor eu	56	Marvel	23	http://dummyimage.com/222x100.png/cc0000/ffffff	Pademelon, red-legged	11	\N
387	velit donec	44	77	libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum	86	DC	72	http://dummyimage.com/155x100.png/dddddd/000000	Steller sea lion	6	\N
388	nec euismod	7	88	suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue	87	Marvel	99	http://dummyimage.com/189x100.png/cc0000/ffffff	Pallas's fish eagle	75	\N
389	eget	63	84	sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero	98	DC	85	http://dummyimage.com/143x100.png/dddddd/000000	Blue and gold macaw	39	\N
390	in lectus	2	1	magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes	4	DC	45	http://dummyimage.com/101x100.png/5fa2dd/ffffff	Iguana, common green	23	\N
391	at	30	20	sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus	35	DC	80	http://dummyimage.com/162x100.png/5fa2dd/ffffff	American Virginia opossum	44	\N
392	sapien placerat	44	21	elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu	51	Marvel	56	http://dummyimage.com/235x100.png/ff4444/ffffff	Comb duck	33	\N
393	lobortis	62	78	felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel	37	DC	64	http://dummyimage.com/166x100.png/5fa2dd/ffffff	Hornbill, southern ground	84	\N
394	scelerisque mauris	27	66	cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla	75	DC	95	http://dummyimage.com/138x100.png/cc0000/ffffff	Desert spiny lizard	18	\N
395	ipsum	86	59	dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis	96	DC	84	http://dummyimage.com/164x100.png/5fa2dd/ffffff	Little cormorant	28	\N
396	eu	81	46	in felis donec semper sapien a libero nam dui proin	18	DC	45	http://dummyimage.com/241x100.png/cc0000/ffffff	Mountain goat	88	\N
397	eu	7	68	at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula	35	DC	11	http://dummyimage.com/122x100.png/ff4444/ffffff	Boa, malagasy ground	35	\N
398	vel	75	57	odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue	15	Marvel	37	http://dummyimage.com/161x100.png/dddddd/000000	Bunting, crested	99	\N
399	vitae ipsum	62	26	eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget	71	DC	23	http://dummyimage.com/157x100.png/cc0000/ffffff	Heron, striated	44	\N
400	tortor	92	6	lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus	75	Marvel	51	http://dummyimage.com/146x100.png/cc0000/ffffff	White-rumped vulture	40	\N
401	venenatis turpis	48	41	nunc purus phasellus in felis donec semper sapien a libero	58	DC	88	http://dummyimage.com/160x100.png/5fa2dd/ffffff	Booby, blue-footed	78	\N
402	semper sapien	29	5	lacus at turpis donec posuere metus vitae ipsum aliquam non	32	DC	76	http://dummyimage.com/169x100.png/dddddd/000000	Boa, mexican	63	\N
403	odio justo	98	16	pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id	29	DC	3	http://dummyimage.com/238x100.png/5fa2dd/ffffff	Yellow-billed hornbill	7	\N
404	ligula vehicula	43	13	cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus	80	Marvel	70	http://dummyimage.com/122x100.png/ff4444/ffffff	Admiral, indian red	34	\N
405	quis justo	3	58	eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod	12	Marvel	6	http://dummyimage.com/221x100.png/ff4444/ffffff	Buffalo, asian water	41	\N
406	platea	1	56	massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium	99	Marvel	22	http://dummyimage.com/189x100.png/dddddd/000000	King vulture	6	\N
407	proin	55	67	nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi	87	DC	36	http://dummyimage.com/169x100.png/dddddd/000000	Hornbill, southern ground	55	\N
408	dapibus	65	63	nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et	79	DC	100	http://dummyimage.com/163x100.png/ff4444/ffffff	Wild boar	79	\N
409	vitae	47	94	pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa	61	DC	58	http://dummyimage.com/239x100.png/5fa2dd/ffffff	Porcupine, north american	85	\N
410	auctor sed	76	14	ut erat id mauris vulputate elementum nullam varius nulla facilisi	18	Marvel	37	http://dummyimage.com/246x100.png/5fa2dd/ffffff	Anteater, australian spiny	51	\N
411	et eros	70	64	sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis	49	DC	22	http://dummyimage.com/110x100.png/ff4444/ffffff	Woodpecker, red-headed	86	\N
412	dapibus	30	78	sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed	93	DC	93	http://dummyimage.com/165x100.png/cc0000/ffffff	Common dolphin	81	\N
413	venenatis tristique	85	27	donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum	81	DC	59	http://dummyimage.com/147x100.png/cc0000/ffffff	Eagle, bateleur	48	\N
414	non mi	97	69	pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac	47	Marvel	86	http://dummyimage.com/144x100.png/5fa2dd/ffffff	Western patch-nosed snake	13	\N
415	vel dapibus	17	8	sem praesent id massa id nisl venenatis lacinia aenean sit amet justo	38	DC	58	http://dummyimage.com/226x100.png/5fa2dd/ffffff	African wild cat	100	\N
416	lacus	30	58	tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem	48	DC	9	http://dummyimage.com/210x100.png/5fa2dd/ffffff	Barbet, levaillant's	48	\N
417	erat	49	89	ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit	60	DC	98	http://dummyimage.com/130x100.png/dddddd/000000	Penguin, fairy	93	\N
418	ut at	94	66	elit ac nulla sed vel enim sit amet nunc viverra dapibus	17	DC	20	http://dummyimage.com/148x100.png/cc0000/ffffff	Goose, knob-nosed	97	\N
419	vestibulum eget	28	82	commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing	26	Marvel	67	http://dummyimage.com/194x100.png/ff4444/ffffff	Bat-eared fox	77	\N
420	nulla	3	70	ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla	95	DC	6	http://dummyimage.com/130x100.png/5fa2dd/ffffff	Colobus, white-mantled	55	\N
421	consequat	23	49	cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec	89	DC	95	http://dummyimage.com/201x100.png/5fa2dd/ffffff	Deer, white-tailed	47	\N
422	nisi vulputate	76	70	ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec	56	Marvel	41	http://dummyimage.com/136x100.png/5fa2dd/ffffff	Macaw, red and blue	98	\N
423	volutpat	22	92	ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis	69	DC	79	http://dummyimage.com/133x100.png/cc0000/ffffff	Whale, long-finned pilot	74	\N
424	nec	18	51	libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis	46	Marvel	67	http://dummyimage.com/230x100.png/cc0000/ffffff	Wild turkey	55	\N
425	vestibulum	39	63	nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede	31	Marvel	38	http://dummyimage.com/161x100.png/ff4444/ffffff	Dragon, frilled	41	\N
426	diam	38	91	vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel	78	DC	87	http://dummyimage.com/161x100.png/5fa2dd/ffffff	Anteater, australian spiny	72	\N
427	mauris eget	39	31	vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede	49	DC	11	http://dummyimage.com/219x100.png/ff4444/ffffff	Red-knobbed coot	90	\N
428	lobortis	10	21	mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor	80	Marvel	30	http://dummyimage.com/101x100.png/ff4444/ffffff	Blue and gold macaw	41	\N
429	sit	77	4	justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed	44	Marvel	79	http://dummyimage.com/223x100.png/5fa2dd/ffffff	Hawk, ferruginous	40	\N
430	pede lobortis	93	16	in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor	11	Marvel	52	http://dummyimage.com/116x100.png/ff4444/ffffff	Common brushtail possum	69	\N
431	odio	60	46	leo odio condimentum id luctus nec molestie sed justo pellentesque	80	Marvel	22	http://dummyimage.com/186x100.png/ff4444/ffffff	African black crake	94	\N
432	magna vulputate	59	51	donec posuere metus vitae ipsum aliquam non mauris morbi non lectus	85	Marvel	61	http://dummyimage.com/131x100.png/cc0000/ffffff	Goose, canada	14	\N
433	magna vestibulum	88	67	cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at	44	DC	52	http://dummyimage.com/180x100.png/5fa2dd/ffffff	American badger	87	\N
434	diam	80	7	vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis	14	Marvel	74	http://dummyimage.com/215x100.png/dddddd/000000	Eland, common	54	\N
435	accumsan	10	92	metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere	37	Marvel	22	http://dummyimage.com/126x100.png/ff4444/ffffff	Indian giant squirrel	22	\N
436	augue	14	43	ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit	46	DC	85	http://dummyimage.com/210x100.png/dddddd/000000	Canada goose	23	\N
437	tempus sit	34	36	amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec	9	DC	73	http://dummyimage.com/157x100.png/cc0000/ffffff	Woodcock, american	58	\N
438	magnis dis	83	47	congue etiam justo etiam pretium iaculis justo in hac habitasse	56	Marvel	32	http://dummyimage.com/185x100.png/5fa2dd/ffffff	Stork, jabiru	90	\N
439	lacus	64	73	tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis	68	Marvel	14	http://dummyimage.com/178x100.png/dddddd/000000	Bear, american black	28	\N
440	sit amet	17	92	quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at	30	DC	71	http://dummyimage.com/147x100.png/cc0000/ffffff	Malagasy ground boa	55	\N
441	quam sollicitudin	54	75	nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem	43	Marvel	4	http://dummyimage.com/246x100.png/dddddd/000000	Frog (unidentified)	1	\N
442	metus sapien	76	46	consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio	8	Marvel	46	http://dummyimage.com/128x100.png/5fa2dd/ffffff	Constrictor, eastern boa	76	\N
443	nam	68	2	nulla pede ullamcorper augue a suscipit nulla elit ac nulla	12	Marvel	49	http://dummyimage.com/209x100.png/ff4444/ffffff	Snake (unidentified)	43	\N
445	erat	76	93	fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit	70	Marvel	4	http://dummyimage.com/144x100.png/5fa2dd/ffffff	Anteater, giant	99	\N
446	risus praesent	48	54	mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum	6	Marvel	15	http://dummyimage.com/127x100.png/ff4444/ffffff	Flamingo, chilean	33	\N
447	massa id	77	89	sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla	41	DC	20	http://dummyimage.com/241x100.png/5fa2dd/ffffff	Cereopsis goose	45	\N
448	in	10	46	aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum	24	Marvel	82	http://dummyimage.com/125x100.png/cc0000/ffffff	Cat, jungle	44	\N
449	vulputate elementum	19	90	pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor	16	Marvel	59	http://dummyimage.com/155x100.png/5fa2dd/ffffff	Zorilla	7	\N
450	elementum	36	19	ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae	100	DC	19	http://dummyimage.com/174x100.png/dddddd/000000	White-fronted bee-eater	54	\N
451	mauris laoreet	50	59	sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales	21	Marvel	58	http://dummyimage.com/235x100.png/ff4444/ffffff	Parrot, hawk-headed	32	\N
452	non	62	36	posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere	13	Marvel	93	http://dummyimage.com/103x100.png/5fa2dd/ffffff	Langur, hanuman	92	\N
453	eget	70	36	sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in	60	Marvel	81	http://dummyimage.com/233x100.png/cc0000/ffffff	Dog, raccoon	58	\N
454	id	33	99	morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel	26	Marvel	28	http://dummyimage.com/207x100.png/5fa2dd/ffffff	Large cormorant	68	\N
455	nulla nunc	69	11	nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel	55	DC	50	http://dummyimage.com/162x100.png/ff4444/ffffff	Hyena, brown	70	\N
456	integer tincidunt	84	13	in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam	99	DC	97	http://dummyimage.com/192x100.png/ff4444/ffffff	Old world fruit bat (unidentified)	23	\N
457	interdum	75	5	risus auctor sed tristique in tempus sit amet sem fusce consequat nulla	13	DC	35	http://dummyimage.com/156x100.png/ff4444/ffffff	Bleu, blue-breasted cordon	73	\N
458	ipsum aliquam	34	40	in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis	94	DC	22	http://dummyimage.com/155x100.png/dddddd/000000	Nubian bee-eater	33	\N
459	cursus id	69	11	sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit	17	Marvel	4	http://dummyimage.com/119x100.png/ff4444/ffffff	Dove, mourning collared	63	\N
460	dolor	15	61	a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce	78	DC	97	http://dummyimage.com/167x100.png/dddddd/000000	Knob-nosed goose	48	\N
461	etiam	86	34	dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed	82	Marvel	24	http://dummyimage.com/163x100.png/dddddd/000000	Cheetah	96	\N
462	aenean	70	62	ornare consequat lectus in est risus auctor sed tristique in tempus sit	98	DC	12	http://dummyimage.com/103x100.png/5fa2dd/ffffff	Oryx, fringe-eared	42	\N
463	ut rhoncus	40	30	ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti	37	Marvel	34	http://dummyimage.com/146x100.png/dddddd/000000	Southern brown bandicoot	61	\N
464	quis libero	79	78	sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien	38	Marvel	52	http://dummyimage.com/197x100.png/5fa2dd/ffffff	Bustard, kori	75	\N
465	duis	85	23	congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in	46	Marvel	55	http://dummyimage.com/114x100.png/dddddd/000000	White stork	46	\N
466	pede posuere	74	26	vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae	73	DC	34	http://dummyimage.com/216x100.png/cc0000/ffffff	Red-legged pademelon	100	\N
467	curabitur gravida	87	44	ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus	18	Marvel	41	http://dummyimage.com/162x100.png/5fa2dd/ffffff	Otter, brazilian	29	\N
468	lectus	78	86	pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat	88	DC	40	http://dummyimage.com/183x100.png/dddddd/000000	Kafue flats lechwe	63	\N
469	donec	48	58	diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis	96	DC	53	http://dummyimage.com/152x100.png/cc0000/ffffff	Beaver, north american	96	\N
470	dis parturient	20	79	ac nibh fusce lacus purus aliquet at feugiat non pretium	91	Marvel	38	http://dummyimage.com/238x100.png/5fa2dd/ffffff	Bleeding heart monkey	29	\N
471	nisl	100	25	orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer	49	DC	59	http://dummyimage.com/184x100.png/5fa2dd/ffffff	Capybara	93	\N
472	eu interdum	10	1	blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel	41	DC	31	http://dummyimage.com/203x100.png/5fa2dd/ffffff	Swallow-tail gull	87	\N
473	vulputate	59	19	dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo	70	Marvel	94	http://dummyimage.com/172x100.png/cc0000/ffffff	Bat-eared fox	1	\N
474	volutpat	24	54	faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae	42	DC	69	http://dummyimage.com/120x100.png/cc0000/ffffff	Colobus, magistrate black	3	\N
475	cubilia	72	66	nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit	32	DC	65	http://dummyimage.com/211x100.png/5fa2dd/ffffff	Egret, great	73	\N
476	non	49	68	morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque	22	DC	20	http://dummyimage.com/142x100.png/5fa2dd/ffffff	Eastern grey kangaroo	57	\N
477	sed	78	60	viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere	73	Marvel	66	http://dummyimage.com/133x100.png/5fa2dd/ffffff	Jackal, black-backed	39	\N
478	mus vivamus	61	84	nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est	5	DC	29	http://dummyimage.com/154x100.png/ff4444/ffffff	Glider, squirrel	55	\N
479	odio	8	98	sit amet nulla quisque arcu libero rutrum ac lobortis vel	50	DC	75	http://dummyimage.com/234x100.png/ff4444/ffffff	Pelican, brown	26	\N
480	sem mauris	91	42	phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim	1	Marvel	21	http://dummyimage.com/203x100.png/5fa2dd/ffffff	Langur, hanuman	100	\N
481	sapien ut	40	59	vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel	56	DC	51	http://dummyimage.com/146x100.png/dddddd/000000	Macaw, scarlet	29	\N
482	non interdum	2	18	id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci	55	DC	95	http://dummyimage.com/156x100.png/ff4444/ffffff	Laughing dove	65	\N
483	eget nunc	13	31	vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas	44	Marvel	83	http://dummyimage.com/218x100.png/ff4444/ffffff	Stick insect	52	\N
484	accumsan	39	90	dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida	71	DC	97	http://dummyimage.com/120x100.png/cc0000/ffffff	Weaver, chestnut	46	\N
485	in hac	16	4	nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et	68	Marvel	18	http://dummyimage.com/183x100.png/dddddd/000000	Civet, common palm	91	\N
486	posuere	60	96	et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec	10	DC	84	http://dummyimage.com/246x100.png/cc0000/ffffff	Bat, madagascar fruit	13	\N
487	lobortis	23	35	nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo	62	DC	42	http://dummyimage.com/100x100.png/ff4444/ffffff	Badger, honey	61	\N
488	ut massa	89	35	molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus	30	DC	50	http://dummyimage.com/243x100.png/ff4444/ffffff	White-mantled colobus	75	\N
489	nulla	10	90	orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel	73	Marvel	24	http://dummyimage.com/196x100.png/cc0000/ffffff	Hornbill, leadbeateri's ground	99	\N
490	at	90	15	ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis	5	DC	22	http://dummyimage.com/155x100.png/dddddd/000000	Dragon, asian water	42	\N
491	ac est	53	64	ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia	80	DC	81	http://dummyimage.com/186x100.png/cc0000/ffffff	Mountain duck	24	\N
492	ac enim	31	74	cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem	13	DC	73	http://dummyimage.com/249x100.png/dddddd/000000	Bohor reedbuck	43	\N
493	augue	30	10	pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio	20	Marvel	38	http://dummyimage.com/133x100.png/dddddd/000000	Deer, swamp	73	\N
494	consectetuer adipiscing	6	71	morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem	16	DC	41	http://dummyimage.com/142x100.png/5fa2dd/ffffff	White-throated toucan	44	\N
495	consectetuer eget	75	27	interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac	26	DC	19	http://dummyimage.com/234x100.png/5fa2dd/ffffff	Galapagos hawk	90	\N
496	id consequat	58	64	eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis	7	DC	19	http://dummyimage.com/228x100.png/5fa2dd/ffffff	Rhea, common	69	\N
497	eget massa	38	42	ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi	42	DC	39	http://dummyimage.com/222x100.png/ff4444/ffffff	Phalarope, northern	96	\N
498	amet	85	52	ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi	23	DC	58	http://dummyimage.com/128x100.png/cc0000/ffffff	Lizard, collared	56	\N
499	nisi	36	47	et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis	1	Marvel	36	http://dummyimage.com/215x100.png/dddddd/000000	Red hartebeest	1	\N
500	ipsum aliquam	74	69	lectus suspendisse potenti in eleifend quam a odio in hac	2	Marvel	67	http://dummyimage.com/115x100.png/ff4444/ffffff	Indian star tortoise	30	\N
501	in	10	38	vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis	89	DC	51	http://dummyimage.com/107x100.png/dddddd/000000	Brown lemur	91	\N
502	condimentum	87	54	duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis	7	Marvel	31	http://dummyimage.com/168x100.png/ff4444/ffffff	Great egret	18	\N
503	tellus	3	22	sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas	18	Marvel	88	http://dummyimage.com/234x100.png/5fa2dd/ffffff	Burmese brown mountain tortoise	87	\N
504	vitae ipsum	17	44	sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia	29	DC	74	http://dummyimage.com/118x100.png/5fa2dd/ffffff	Netted rock dragon	54	\N
505	ut	57	30	nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis	48	DC	76	http://dummyimage.com/106x100.png/ff4444/ffffff	White-winged tern	48	\N
506	duis	92	48	suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl	7	Marvel	26	http://dummyimage.com/101x100.png/dddddd/000000	Albatross, waved	74	\N
507	ac	99	41	iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit	28	Marvel	23	http://dummyimage.com/143x100.png/cc0000/ffffff	Praying mantis (unidentified)	7	\N
508	potenti	66	26	ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo	10	Marvel	35	http://dummyimage.com/106x100.png/5fa2dd/ffffff	White-throated kingfisher	2	\N
509	turpis	1	28	adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum	51	Marvel	48	http://dummyimage.com/104x100.png/dddddd/000000	Greater blue-eared starling	27	\N
510	magna ac	53	62	augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id	43	Marvel	35	http://dummyimage.com/126x100.png/cc0000/ffffff	Jackal, silver-backed	92	\N
511	aliquam	73	82	sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque	92	Marvel	11	http://dummyimage.com/196x100.png/dddddd/000000	Stilt, black-winged	12	\N
512	erat vestibulum	97	71	volutpat convallis morbi odio odio elementum eu interdum eu tincidunt	35	DC	47	http://dummyimage.com/218x100.png/dddddd/000000	Spotted hyena	63	\N
513	erat	93	66	dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id	54	Marvel	52	http://dummyimage.com/199x100.png/dddddd/000000	Rhesus macaque	66	\N
514	risus	81	44	vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel	69	DC	25	http://dummyimage.com/121x100.png/5fa2dd/ffffff	Coot, red-knobbed	36	\N
515	morbi vel	96	24	facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus	30	DC	29	http://dummyimage.com/197x100.png/dddddd/000000	Short-beaked echidna	66	\N
516	pretium	97	80	turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu	72	Marvel	28	http://dummyimage.com/202x100.png/cc0000/ffffff	Cape raven	29	\N
517	vestibulum rutrum	79	7	cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat	60	Marvel	71	http://dummyimage.com/238x100.png/ff4444/ffffff	Rhea, gray	71	\N
518	etiam	3	55	interdum mauris non ligula pellentesque ultrices phasellus id sapien in	11	Marvel	16	http://dummyimage.com/172x100.png/dddddd/000000	Porcupine, crested	75	\N
519	in consequat	13	83	turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus	61	DC	58	http://dummyimage.com/139x100.png/5fa2dd/ffffff	Bandicoot, southern brown	77	\N
520	malesuada in	89	1	natoque penatibus et magnis dis parturient montes nascetur ridiculus mus	79	DC	13	http://dummyimage.com/188x100.png/cc0000/ffffff	Gambel's quail	84	\N
521	cras	11	19	mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus	52	DC	67	http://dummyimage.com/236x100.png/5fa2dd/ffffff	Small-toothed palm civet	61	\N
522	sit	64	84	nunc proin at turpis a pede posuere nonummy integer non	17	Marvel	4	http://dummyimage.com/206x100.png/ff4444/ffffff	Short-beaked echidna	97	\N
523	odio elementum	43	66	dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia	52	Marvel	9	http://dummyimage.com/166x100.png/cc0000/ffffff	Blue and yellow macaw	78	\N
524	primis in	43	63	turpis a pede posuere nonummy integer non velit donec diam neque vestibulum	72	DC	41	http://dummyimage.com/141x100.png/ff4444/ffffff	Frogmouth, tawny	95	\N
525	nulla sed	98	11	sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan	55	DC	71	http://dummyimage.com/201x100.png/cc0000/ffffff	Crested bunting	71	\N
526	quis	41	97	eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu	48	DC	69	http://dummyimage.com/105x100.png/ff4444/ffffff	Indian tree pie	98	\N
527	non sodales	26	40	id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique	81	Marvel	91	http://dummyimage.com/158x100.png/dddddd/000000	Hawk, galapagos	37	\N
528	diam erat	20	64	congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo	50	Marvel	47	http://dummyimage.com/115x100.png/cc0000/ffffff	Northern fur seal	44	\N
529	ac	20	2	purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id	13	Marvel	28	http://dummyimage.com/181x100.png/dddddd/000000	Pampa gray fox	74	\N
530	placerat ante	81	92	erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia	8	Marvel	82	http://dummyimage.com/164x100.png/5fa2dd/ffffff	Steller's sea lion	26	\N
531	eget eros	64	87	proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum	98	Marvel	63	http://dummyimage.com/164x100.png/ff4444/ffffff	Crow, pied	96	\N
562	ac est	88	61	quam sapien varius ut blandit non interdum in ante vestibulum	34	DC	69	http://dummyimage.com/115x100.png/dddddd/000000	Common seal	71	\N
532	lacus morbi	85	78	elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula	75	Marvel	77	http://dummyimage.com/166x100.png/ff4444/ffffff	Hornbill, red-billed	5	\N
533	felis	71	87	nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio	47	DC	31	http://dummyimage.com/191x100.png/dddddd/000000	Bottle-nose dolphin	68	\N
534	pede ac	37	3	lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse	16	DC	51	http://dummyimage.com/121x100.png/cc0000/ffffff	Albatross, galapagos	54	\N
535	quis	28	13	duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim	38	DC	2	http://dummyimage.com/207x100.png/cc0000/ffffff	Snake-necked turtle	62	\N
536	mi	63	31	elit ac nulla sed vel enim sit amet nunc viverra dapibus	48	DC	45	http://dummyimage.com/179x100.png/cc0000/ffffff	Thirteen-lined squirrel	9	\N
537	sit amet	69	91	vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed	34	Marvel	3	http://dummyimage.com/132x100.png/dddddd/000000	Goliath heron	37	\N
538	diam	57	35	blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede	21	Marvel	86	http://dummyimage.com/184x100.png/cc0000/ffffff	Square-lipped rhinoceros	14	\N
539	eget	1	68	auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi	44	DC	11	http://dummyimage.com/229x100.png/5fa2dd/ffffff	Coqui partridge	71	\N
540	consequat dui	67	10	hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt	9	DC	53	http://dummyimage.com/171x100.png/5fa2dd/ffffff	Goanna lizard	19	\N
541	id	24	71	morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede	28	DC	55	http://dummyimage.com/173x100.png/cc0000/ffffff	Sugar glider	70	\N
542	sapien arcu	76	49	quam nec dui luctus rutrum nulla tellus in sagittis dui	97	DC	33	http://dummyimage.com/152x100.png/ff4444/ffffff	Black-tailed tree creeper	81	\N
543	et magnis	25	50	risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed	28	Marvel	80	http://dummyimage.com/116x100.png/cc0000/ffffff	Opossum, american virginia	77	\N
544	tempus semper	22	46	eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien	8	DC	26	http://dummyimage.com/182x100.png/dddddd/000000	Lion, southern sea	42	\N
545	duis	1	66	leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut	97	DC	3	http://dummyimage.com/169x100.png/dddddd/000000	Owl, burrowing	70	\N
546	in	26	78	rutrum neque aenean auctor gravida sem praesent id massa id	27	DC	53	http://dummyimage.com/147x100.png/cc0000/ffffff	Beaver, american	50	\N
547	sit	48	58	erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst	100	DC	37	http://dummyimage.com/206x100.png/ff4444/ffffff	Squirrel, golden-mantled ground	23	\N
548	in	71	40	ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est	15	Marvel	77	http://dummyimage.com/230x100.png/5fa2dd/ffffff	Burchell's gonolek	11	\N
549	aliquam	65	6	natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque	48	DC	35	http://dummyimage.com/228x100.png/5fa2dd/ffffff	American black bear	24	\N
550	id	6	7	ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies	45	Marvel	3	http://dummyimage.com/124x100.png/cc0000/ffffff	Sun gazer	78	\N
551	non	67	68	lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum	78	Marvel	34	http://dummyimage.com/170x100.png/5fa2dd/ffffff	Sun gazer	89	\N
552	ut	80	57	euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc	79	Marvel	23	http://dummyimage.com/143x100.png/ff4444/ffffff	Dove, emerald-spotted wood	28	\N
553	neque	58	77	aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a	26	Marvel	75	http://dummyimage.com/198x100.png/dddddd/000000	Eastern white pelican	50	\N
554	amet	54	35	a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet	66	DC	23	http://dummyimage.com/162x100.png/dddddd/000000	Flamingo, roseat	35	\N
555	volutpat	88	88	sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in	46	DC	85	http://dummyimage.com/144x100.png/cc0000/ffffff	Lilac-breasted roller	83	\N
556	libero	85	4	nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue	79	DC	34	http://dummyimage.com/157x100.png/5fa2dd/ffffff	Chacma baboon	18	\N
557	convallis eget	2	43	justo eu massa donec dapibus duis at velit eu est congue elementum in	94	Marvel	19	http://dummyimage.com/125x100.png/cc0000/ffffff	Francolin, coqui	7	\N
558	integer	16	40	sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae	31	Marvel	83	http://dummyimage.com/115x100.png/cc0000/ffffff	Ring-tailed coatimundi	10	\N
559	egestas metus	99	14	mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel	53	DC	98	http://dummyimage.com/192x100.png/5fa2dd/ffffff	Rhea, common	53	\N
560	morbi	55	17	id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et	18	DC	97	http://dummyimage.com/144x100.png/ff4444/ffffff	Grey heron	16	\N
561	fusce	37	50	ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh	99	Marvel	32	http://dummyimage.com/235x100.png/cc0000/ffffff	Toddy cat	93	\N
563	id	21	35	amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices	41	DC	86	http://dummyimage.com/176x100.png/5fa2dd/ffffff	Hummingbird (unidentified)	35	\N
564	aliquet pulvinar	32	49	nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at	37	DC	32	http://dummyimage.com/104x100.png/ff4444/ffffff	Vulture, egyptian	98	\N
565	sodales scelerisque	8	14	eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante	68	DC	13	http://dummyimage.com/166x100.png/dddddd/000000	Blue catfish	38	\N
566	etiam pretium	3	53	in porttitor pede justo eu massa donec dapibus duis at	70	Marvel	9	http://dummyimage.com/241x100.png/5fa2dd/ffffff	Porcupine, tree	71	\N
567	sit	69	9	in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl	97	DC	19	http://dummyimage.com/106x100.png/ff4444/ffffff	Common long-nosed armadillo	4	\N
568	ac	98	9	interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec	64	DC	42	http://dummyimage.com/217x100.png/ff4444/ffffff	Phalarope, grey	54	\N
569	non pretium	61	86	justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit	96	DC	16	http://dummyimage.com/222x100.png/dddddd/000000	Denham's bustard	23	\N
570	ultrices enim	13	72	adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus	61	DC	96	http://dummyimage.com/112x100.png/5fa2dd/ffffff	Great horned owl	21	\N
571	est	17	100	eu felis fusce posuere felis sed lacus morbi sem mauris laoreet	58	DC	48	http://dummyimage.com/156x100.png/ff4444/ffffff	Vulture, bengal	94	\N
572	neque	61	42	fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo	2	Marvel	21	http://dummyimage.com/249x100.png/cc0000/ffffff	Stork, white-necked	69	\N
573	erat tortor	94	40	sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis	39	Marvel	100	http://dummyimage.com/161x100.png/cc0000/ffffff	Topi	88	\N
574	libero	67	86	massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies	87	DC	84	http://dummyimage.com/137x100.png/cc0000/ffffff	White-throated toucan	99	\N
575	odio in	49	61	placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem	39	Marvel	49	http://dummyimage.com/180x100.png/cc0000/ffffff	Mouflon	84	\N
576	porta volutpat	37	59	adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget	89	Marvel	24	http://dummyimage.com/194x100.png/5fa2dd/ffffff	Genet, small-spotted	81	\N
577	integer	98	33	volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus	79	Marvel	42	http://dummyimage.com/167x100.png/dddddd/000000	Albatross, galapagos	32	\N
578	consectetuer	73	51	leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras	89	DC	87	http://dummyimage.com/190x100.png/ff4444/ffffff	Deer, red	97	\N
579	suscipit	37	71	turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue	100	DC	37	http://dummyimage.com/192x100.png/ff4444/ffffff	Long-nosed bandicoot	50	\N
580	mi	74	87	eleifend quam a odio in hac habitasse platea dictumst maecenas	1	DC	73	http://dummyimage.com/134x100.png/dddddd/000000	Great cormorant	67	\N
581	placerat	35	80	natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum	45	DC	79	http://dummyimage.com/242x100.png/dddddd/000000	Squirrel, malabar	18	\N
582	condimentum id	72	63	vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis	33	DC	29	http://dummyimage.com/109x100.png/dddddd/000000	European badger	54	\N
583	nonummy maecenas	93	73	justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi	97	DC	1	http://dummyimage.com/157x100.png/ff4444/ffffff	Sungazer, yellow-brown	20	\N
584	porta	51	45	hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent	47	DC	85	http://dummyimage.com/208x100.png/cc0000/ffffff	Bald eagle	99	\N
585	dui maecenas	7	76	maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis	66	Marvel	32	http://dummyimage.com/215x100.png/ff4444/ffffff	Heron, striated	85	\N
586	ligula	66	99	dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus	23	DC	83	http://dummyimage.com/205x100.png/ff4444/ffffff	Pintail, white-cheeked	43	\N
587	ut mauris	59	47	vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum	28	DC	53	http://dummyimage.com/122x100.png/ff4444/ffffff	Possum, ring-tailed	23	\N
588	integer	65	95	turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante	82	DC	32	http://dummyimage.com/125x100.png/ff4444/ffffff	Heron, green	61	\N
589	at velit	19	59	in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero	19	DC	15	http://dummyimage.com/245x100.png/dddddd/000000	Quail, gambel's	69	\N
590	dapibus nulla	6	17	nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at	57	DC	17	http://dummyimage.com/129x100.png/cc0000/ffffff	Blue duck	43	\N
591	ac	33	38	sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum	14	Marvel	28	http://dummyimage.com/148x100.png/dddddd/000000	Harbor seal	49	\N
592	posuere	72	85	ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie	17	Marvel	66	http://dummyimage.com/207x100.png/cc0000/ffffff	Egyptian viper	64	\N
593	non lectus	87	72	consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar	58	Marvel	38	http://dummyimage.com/230x100.png/cc0000/ffffff	Buffalo, asian water	3	\N
594	curae duis	80	29	fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat	92	DC	12	http://dummyimage.com/219x100.png/5fa2dd/ffffff	Indian star tortoise	25	\N
595	curabitur	29	75	in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam	33	Marvel	11	http://dummyimage.com/192x100.png/5fa2dd/ffffff	Heron, striated	72	\N
596	at velit	92	33	amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque	5	Marvel	56	http://dummyimage.com/244x100.png/5fa2dd/ffffff	Wild boar	59	\N
597	lacinia	97	84	in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu	19	Marvel	29	http://dummyimage.com/202x100.png/cc0000/ffffff	Quoll, eastern	14	\N
598	suspendisse	67	58	mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus	18	DC	20	http://dummyimage.com/234x100.png/dddddd/000000	Gorilla, western lowland	83	\N
599	vivamus metus	20	91	curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin	84	DC	95	http://dummyimage.com/115x100.png/5fa2dd/ffffff	Cormorant, pied	53	\N
600	ut suscipit	8	70	quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id	9	Marvel	13	http://dummyimage.com/185x100.png/5fa2dd/ffffff	Bushbaby, large-eared	20	\N
601	at turpis	34	50	cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque	52	Marvel	93	http://dummyimage.com/248x100.png/5fa2dd/ffffff	Western palm tanager (unidentified)	30	\N
602	congue	40	77	cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam	24	Marvel	29	http://dummyimage.com/217x100.png/5fa2dd/ffffff	Rhesus macaque	83	\N
603	tristique tortor	22	19	duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend	19	Marvel	31	http://dummyimage.com/199x100.png/5fa2dd/ffffff	Urial	83	\N
604	sociis	24	27	primis in faucibus orci luctus et ultrices posuere cubilia curae nulla	82	Marvel	58	http://dummyimage.com/241x100.png/cc0000/ffffff	Brazilian otter	9	\N
605	tortor	16	98	sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis	32	DC	55	http://dummyimage.com/130x100.png/ff4444/ffffff	Eagle, tawny	57	\N
606	quis	66	39	lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor	3	DC	13	http://dummyimage.com/209x100.png/5fa2dd/ffffff	Cockatoo, sulfur-crested	4	\N
607	eu	65	90	sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo	33	DC	85	http://dummyimage.com/218x100.png/cc0000/ffffff	Mongoose, banded	38	\N
608	orci	73	68	posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in	11	DC	82	http://dummyimage.com/235x100.png/dddddd/000000	Wolf, mexican	57	\N
609	ridiculus mus	67	21	libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien	98	Marvel	77	http://dummyimage.com/123x100.png/ff4444/ffffff	House crow	34	\N
610	luctus	1	66	condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras	75	Marvel	2	http://dummyimage.com/124x100.png/ff4444/ffffff	Crane, stanley	34	\N
611	eget eros	94	41	nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut	5	Marvel	43	http://dummyimage.com/192x100.png/5fa2dd/ffffff	Amazon parrot (unidentified)	50	\N
612	curabitur	82	89	eros vestibulum ac est lacinia nisi venenatis tristique fusce congue	88	DC	59	http://dummyimage.com/239x100.png/5fa2dd/ffffff	Horned puffin	13	\N
613	imperdiet sapien	48	73	quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum	34	DC	94	http://dummyimage.com/229x100.png/dddddd/000000	Buffalo, wild water	54	\N
614	purus phasellus	66	22	ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse	39	Marvel	29	http://dummyimage.com/129x100.png/dddddd/000000	White-throated robin	27	\N
615	eget	66	30	nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis	76	Marvel	56	http://dummyimage.com/246x100.png/5fa2dd/ffffff	Raccoon, crab-eating	37	\N
616	hac habitasse	9	7	ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna	49	Marvel	99	http://dummyimage.com/179x100.png/cc0000/ffffff	Horned lark	92	\N
617	donec	24	86	leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien	62	DC	95	http://dummyimage.com/220x100.png/5fa2dd/ffffff	Eagle, pallas's fish	39	\N
618	tempus vel	12	29	tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras	81	Marvel	12	http://dummyimage.com/203x100.png/ff4444/ffffff	White-bellied sea eagle	26	\N
619	pede	64	77	massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas	44	DC	77	http://dummyimage.com/126x100.png/ff4444/ffffff	Ibis, glossy	15	\N
620	lacinia eget	28	93	nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec	46	Marvel	79	http://dummyimage.com/213x100.png/5fa2dd/ffffff	North American river otter	40	\N
621	ante ipsum	16	42	quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus	59	DC	74	http://dummyimage.com/159x100.png/5fa2dd/ffffff	Common palm civet	94	\N
622	molestie	13	3	pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis	11	Marvel	48	http://dummyimage.com/195x100.png/ff4444/ffffff	Australian pelican	43	\N
623	potenti	71	6	lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam	86	DC	73	http://dummyimage.com/173x100.png/cc0000/ffffff	Legaan, ground	83	\N
624	mi integer	59	89	ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at	87	DC	64	http://dummyimage.com/228x100.png/dddddd/000000	Bat, asian false vampire	82	\N
625	sed tincidunt	12	87	lacinia sapien quis libero nullam sit amet turpis elementum ligula	41	DC	69	http://dummyimage.com/225x100.png/5fa2dd/ffffff	African pied wagtail	15	\N
626	tincidunt eu	65	37	et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id	44	Marvel	60	http://dummyimage.com/154x100.png/dddddd/000000	Eagle, bald	71	\N
627	libero	12	89	sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget	34	DC	9	http://dummyimage.com/213x100.png/cc0000/ffffff	Pademelon, red-legged	8	\N
628	et ultrices	19	98	massa id nisl venenatis lacinia aenean sit amet justo morbi	35	DC	5	http://dummyimage.com/190x100.png/5fa2dd/ffffff	Puma	22	\N
629	felis	38	16	ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam	31	Marvel	1	http://dummyimage.com/211x100.png/cc0000/ffffff	Fox, blue	39	\N
630	consequat nulla	72	66	sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia	43	DC	6	http://dummyimage.com/168x100.png/cc0000/ffffff	Boa, malagasy ground	12	\N
631	et	51	25	vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam	94	Marvel	27	http://dummyimage.com/140x100.png/5fa2dd/ffffff	Heron, green	71	\N
632	justo	12	72	ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum	28	DC	100	http://dummyimage.com/218x100.png/5fa2dd/ffffff	Brown and yellow marshbird	94	\N
633	sapien non	55	36	nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra	80	DC	21	http://dummyimage.com/217x100.png/cc0000/ffffff	Badger, honey	3	\N
634	aliquam	36	85	at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices	8	Marvel	79	http://dummyimage.com/163x100.png/5fa2dd/ffffff	Skimmer, four-spotted	50	\N
635	ac consequat	10	96	sit amet nunc viverra dapibus nulla suscipit ligula in lacus	31	Marvel	95	http://dummyimage.com/239x100.png/5fa2dd/ffffff	Royal tern	1	\N
636	mi	13	43	sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus	4	Marvel	95	http://dummyimage.com/177x100.png/cc0000/ffffff	Springhare	24	\N
637	ut	40	40	cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien	25	Marvel	98	http://dummyimage.com/212x100.png/ff4444/ffffff	Barbet, crested	85	\N
638	lectus aliquam	85	15	tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed	66	DC	82	http://dummyimage.com/131x100.png/cc0000/ffffff	Eastern fox squirrel	33	\N
639	erat	28	64	imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit	99	Marvel	67	http://dummyimage.com/234x100.png/5fa2dd/ffffff	Yellow baboon	77	\N
640	erat nulla	40	71	luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin	24	DC	63	http://dummyimage.com/118x100.png/cc0000/ffffff	Galapagos tortoise	25	\N
641	metus	91	26	pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem	24	Marvel	97	http://dummyimage.com/215x100.png/5fa2dd/ffffff	Screamer, southern	57	\N
642	donec ut	95	40	adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci	74	DC	89	http://dummyimage.com/184x100.png/cc0000/ffffff	Rabbit, eastern cottontail	58	\N
643	ac	31	56	pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus	77	DC	76	http://dummyimage.com/193x100.png/ff4444/ffffff	Openbill, asian	81	\N
644	sapien arcu	70	48	pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum	8	Marvel	14	http://dummyimage.com/134x100.png/cc0000/ffffff	Plains zebra	64	\N
645	augue	72	89	nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit	79	Marvel	92	http://dummyimage.com/144x100.png/cc0000/ffffff	Wild turkey	4	\N
646	integer ac	53	85	arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis	19	Marvel	25	http://dummyimage.com/166x100.png/dddddd/000000	Admiral, indian red	33	\N
647	lacinia	54	87	orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem	50	DC	7	http://dummyimage.com/199x100.png/cc0000/ffffff	White-cheeked pintail	64	\N
648	scelerisque	36	94	proin interdum mauris non ligula pellentesque ultrices phasellus id sapien	37	DC	94	http://dummyimage.com/201x100.png/dddddd/000000	Roseat flamingo	48	\N
649	ac	40	58	donec vitae nisi nam ultrices libero non mattis pulvinar nulla	22	Marvel	20	http://dummyimage.com/202x100.png/5fa2dd/ffffff	Pelican, eastern white	91	\N
885	id nisl	28	96	magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu	96	Marvel	48	http://dummyimage.com/183x100.png/5fa2dd/ffffff	Arctic tern	84	\N
650	congue	4	87	dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices	96	Marvel	37	http://dummyimage.com/188x100.png/5fa2dd/ffffff	Western spotted skunk	82	\N
651	convallis eget	11	44	orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus	34	Marvel	53	http://dummyimage.com/237x100.png/5fa2dd/ffffff	Yellow-headed caracara	18	\N
652	risus	85	45	porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem	12	DC	42	http://dummyimage.com/125x100.png/dddddd/000000	Brush-tailed rat kangaroo	87	\N
653	nascetur ridiculus	19	43	quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus	39	DC	87	http://dummyimage.com/239x100.png/ff4444/ffffff	Red sheep	51	\N
654	felis	59	34	tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst	69	DC	99	http://dummyimage.com/168x100.png/ff4444/ffffff	Dragon, frilled	68	\N
655	dis parturient	64	3	at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit	27	DC	69	http://dummyimage.com/132x100.png/ff4444/ffffff	Spotted hyena	76	\N
656	vestibulum rutrum	95	6	vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est	49	Marvel	90	http://dummyimage.com/242x100.png/dddddd/000000	Bare-faced go away bird	74	\N
657	faucibus orci	23	92	aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus	29	Marvel	56	http://dummyimage.com/124x100.png/cc0000/ffffff	Amazon parrot (unidentified)	75	\N
658	sit amet	7	24	ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non	48	DC	61	http://dummyimage.com/232x100.png/cc0000/ffffff	Defassa waterbuck	75	\N
659	ac nulla	64	56	ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et	53	Marvel	4	http://dummyimage.com/222x100.png/ff4444/ffffff	Red meerkat	69	\N
660	diam	51	29	magnis dis parturient montes nascetur ridiculus mus etiam vel augue	41	Marvel	35	http://dummyimage.com/216x100.png/ff4444/ffffff	Common zorro	60	\N
661	purus	91	76	luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst	14	Marvel	38	http://dummyimage.com/243x100.png/ff4444/ffffff	Goose, spur-winged	63	\N
662	tincidunt	59	31	elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla	20	Marvel	84	http://dummyimage.com/172x100.png/5fa2dd/ffffff	Mocking cliffchat	84	\N
663	faucibus orci	32	27	faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum	30	DC	85	http://dummyimage.com/195x100.png/ff4444/ffffff	Little brown dove	49	\N
664	ultrices	49	32	lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas	9	Marvel	69	http://dummyimage.com/195x100.png/5fa2dd/ffffff	Urial	63	\N
665	suspendisse	61	6	eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt	33	Marvel	15	http://dummyimage.com/148x100.png/5fa2dd/ffffff	Hummingbird (unidentified)	93	\N
666	erat	75	32	sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est	42	Marvel	46	http://dummyimage.com/227x100.png/dddddd/000000	Indian star tortoise	19	\N
667	pellentesque at	67	47	est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id	63	Marvel	39	http://dummyimage.com/177x100.png/ff4444/ffffff	Turtle, long-necked	50	\N
668	elementum eu	58	31	eget massa tempor convallis nulla neque libero convallis eget eleifend	49	Marvel	92	http://dummyimage.com/184x100.png/dddddd/000000	Defassa waterbuck	60	\N
669	convallis	62	85	curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam	5	Marvel	44	http://dummyimage.com/186x100.png/dddddd/000000	Pale-throated three-toed sloth	78	\N
670	erat	59	69	imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet	6	DC	97	http://dummyimage.com/189x100.png/cc0000/ffffff	Least chipmunk	16	\N
671	nunc	96	44	ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum	76	DC	34	http://dummyimage.com/111x100.png/5fa2dd/ffffff	Gray rhea	74	\N
672	placerat praesent	24	15	eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse	99	Marvel	55	http://dummyimage.com/122x100.png/dddddd/000000	Seal, harbor	13	\N
673	donec ut	61	29	tristique est et tempus semper est quam pharetra magna ac consequat metus	28	DC	91	http://dummyimage.com/169x100.png/ff4444/ffffff	Black-capped capuchin	20	\N
674	rutrum	81	13	sit amet cursus id turpis integer aliquet massa id lobortis	2	DC	74	http://dummyimage.com/150x100.png/cc0000/ffffff	Numbat	29	\N
675	nulla	33	29	arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac	74	Marvel	83	http://dummyimage.com/144x100.png/ff4444/ffffff	Lizard, blue-tongued	67	\N
676	eu felis	78	6	vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec	59	Marvel	4	http://dummyimage.com/229x100.png/cc0000/ffffff	Lesser flamingo	66	\N
677	vitae quam	34	16	metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh	11	DC	67	http://dummyimage.com/217x100.png/ff4444/ffffff	Green-winged trumpeter	18	\N
678	enim	50	22	turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam	17	Marvel	73	http://dummyimage.com/151x100.png/dddddd/000000	Onager	98	\N
679	ut nunc	82	77	amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at	16	Marvel	55	http://dummyimage.com/171x100.png/cc0000/ffffff	Sheep, stone	50	\N
680	morbi sem	76	56	sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae	64	Marvel	7	http://dummyimage.com/124x100.png/cc0000/ffffff	Australian sea lion	93	\N
681	ac	86	55	est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis	23	DC	24	http://dummyimage.com/247x100.png/cc0000/ffffff	Long-crested hawk eagle	63	\N
682	nunc donec	72	17	integer ac neque duis bibendum morbi non quam nec dui luctus rutrum	63	DC	90	http://dummyimage.com/103x100.png/dddddd/000000	Pelican, brown	12	\N
683	non sodales	12	74	nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor	81	Marvel	78	http://dummyimage.com/209x100.png/dddddd/000000	Indian peacock	77	\N
684	habitasse platea	31	66	ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet	78	Marvel	48	http://dummyimage.com/116x100.png/cc0000/ffffff	Tyrant flycatcher	26	\N
685	morbi ut	16	63	vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit	99	DC	74	http://dummyimage.com/174x100.png/5fa2dd/ffffff	Azara's zorro	54	\N
686	pretium quis	9	12	purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac	48	DC	83	http://dummyimage.com/111x100.png/5fa2dd/ffffff	Dama wallaby	58	\N
687	interdum mauris	81	68	nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in	46	Marvel	42	http://dummyimage.com/141x100.png/cc0000/ffffff	Hoopoe, eurasian	18	\N
688	tristique est	99	14	ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae	52	Marvel	90	http://dummyimage.com/165x100.png/cc0000/ffffff	Grey phalarope	4	\N
689	tempus semper	78	59	phasellus sit amet erat nulla tempus vivamus in felis eu	85	DC	69	http://dummyimage.com/104x100.png/ff4444/ffffff	Red-knobbed coot	27	\N
690	malesuada in	84	33	augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus	61	Marvel	29	http://dummyimage.com/199x100.png/ff4444/ffffff	Rattlesnake, horned	35	\N
691	in	66	41	quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus	67	DC	50	http://dummyimage.com/139x100.png/cc0000/ffffff	Robin, white-throated	43	\N
692	interdum mauris	100	18	id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas	98	DC	100	http://dummyimage.com/118x100.png/5fa2dd/ffffff	Vervet monkey	94	\N
693	cum	26	74	libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus	27	Marvel	100	http://dummyimage.com/235x100.png/ff4444/ffffff	Roller, lilac-breasted	75	\N
694	fringilla	35	78	nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et	66	DC	38	http://dummyimage.com/142x100.png/dddddd/000000	Nine-banded armadillo	90	\N
695	eget	71	86	vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam	54	Marvel	5	http://dummyimage.com/245x100.png/dddddd/000000	Lemming, collared	23	\N
696	ac	14	40	eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra	30	Marvel	6	http://dummyimage.com/156x100.png/5fa2dd/ffffff	Long-tailed jaeger	22	\N
697	congue	11	96	rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id	43	DC	59	http://dummyimage.com/238x100.png/ff4444/ffffff	Gorilla, western lowland	62	\N
698	sed vestibulum	21	3	posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat	51	Marvel	52	http://dummyimage.com/165x100.png/dddddd/000000	Black rhinoceros	1	\N
699	nisl nunc	1	66	euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis	15	Marvel	88	http://dummyimage.com/109x100.png/dddddd/000000	Brocket, brown	9	\N
700	turpis	41	2	platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer	33	Marvel	85	http://dummyimage.com/231x100.png/5fa2dd/ffffff	Hyrax	71	\N
701	velit	13	21	metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae	4	DC	50	http://dummyimage.com/127x100.png/ff4444/ffffff	Black-crowned night heron	16	\N
702	nullam	16	1	consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer	29	DC	80	http://dummyimage.com/138x100.png/ff4444/ffffff	Goldeneye, common	99	\N
703	nunc purus	15	11	congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum	22	DC	29	http://dummyimage.com/183x100.png/ff4444/ffffff	Gazelle, thomson's	32	\N
704	nulla pede	9	32	diam erat fermentum justo nec condimentum neque sapien placerat ante nulla	15	DC	68	http://dummyimage.com/235x100.png/dddddd/000000	Tortoise, indian star	82	\N
705	curae duis	94	37	turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus	85	Marvel	88	http://dummyimage.com/150x100.png/dddddd/000000	Crane, black-crowned	20	\N
706	eu interdum	80	47	et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien	31	Marvel	77	http://dummyimage.com/175x100.png/cc0000/ffffff	Small-toothed palm civet	75	\N
707	lacus morbi	47	55	ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae	41	DC	14	http://dummyimage.com/105x100.png/dddddd/000000	Yellow-necked spurfowl	12	\N
708	nisi	83	81	in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae	60	DC	86	http://dummyimage.com/230x100.png/ff4444/ffffff	Finch, common melba	87	\N
709	mattis	38	4	consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus	26	DC	50	http://dummyimage.com/164x100.png/dddddd/000000	Weaver, red-billed buffalo	68	\N
710	diam	81	96	luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum	64	DC	73	http://dummyimage.com/176x100.png/cc0000/ffffff	Northern elephant seal	76	\N
711	nec	81	47	leo odio porttitor id consequat in consequat ut nulla sed	9	DC	60	http://dummyimage.com/243x100.png/ff4444/ffffff	Turkey, common	50	\N
712	morbi vel	66	93	sed justo pellentesque viverra pede ac diam cras pellentesque volutpat	88	DC	64	http://dummyimage.com/130x100.png/5fa2dd/ffffff	Red squirrel	67	\N
713	mattis odio	64	63	in libero ut massa volutpat convallis morbi odio odio elementum	16	Marvel	41	http://dummyimage.com/101x100.png/dddddd/000000	Tortoise, asian foreset	48	\N
714	ligula in	91	96	ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl	82	Marvel	22	http://dummyimage.com/240x100.png/5fa2dd/ffffff	Rufous-collared sparrow	93	\N
715	rutrum neque	98	65	ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus	79	Marvel	61	http://dummyimage.com/123x100.png/5fa2dd/ffffff	Stilt, black-winged	76	\N
716	sapien	55	38	sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero	57	Marvel	91	http://dummyimage.com/144x100.png/dddddd/000000	Kingfisher, pied	79	\N
717	convallis	94	1	vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc	17	DC	25	http://dummyimage.com/172x100.png/ff4444/ffffff	Black bear	66	\N
718	id	77	69	quam sapien varius ut blandit non interdum in ante vestibulum	66	DC	95	http://dummyimage.com/122x100.png/dddddd/000000	Turkey, wild	56	\N
719	venenatis turpis	98	40	parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur	91	DC	79	http://dummyimage.com/118x100.png/5fa2dd/ffffff	Violet-eared waxbill	25	\N
720	rutrum nulla	55	7	parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum	74	DC	66	http://dummyimage.com/169x100.png/ff4444/ffffff	Burmese black mountain tortoise	70	\N
721	orci	60	65	sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit	93	Marvel	96	http://dummyimage.com/147x100.png/cc0000/ffffff	Campo flicker	89	\N
722	nisi	19	6	aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo	32	DC	85	http://dummyimage.com/184x100.png/dddddd/000000	Bat-eared fox	7	\N
723	justo sit	48	37	mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in	18	DC	43	http://dummyimage.com/190x100.png/cc0000/ffffff	Oryx, fringe-eared	71	\N
724	duis	29	75	neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui	52	Marvel	33	http://dummyimage.com/136x100.png/cc0000/ffffff	Wombat, common	77	\N
725	sapien	42	73	in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea	16	Marvel	39	http://dummyimage.com/189x100.png/5fa2dd/ffffff	Golden jackal	68	\N
726	in libero	86	83	ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante	90	DC	44	http://dummyimage.com/115x100.png/cc0000/ffffff	Mouse, four-striped grass	90	\N
727	pharetra	38	23	in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla	31	Marvel	77	http://dummyimage.com/134x100.png/ff4444/ffffff	Water monitor	19	\N
728	facilisi cras	31	28	quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut	92	Marvel	3	http://dummyimage.com/184x100.png/5fa2dd/ffffff	Heron, giant	33	\N
729	vehicula	77	72	odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut	6	DC	27	http://dummyimage.com/147x100.png/cc0000/ffffff	Hanuman langur	100	\N
730	nibh in	36	65	convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices	70	Marvel	5	http://dummyimage.com/129x100.png/dddddd/000000	Praying mantis (unidentified)	7	\N
731	amet	58	99	ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus	17	DC	73	http://dummyimage.com/214x100.png/cc0000/ffffff	Bandicoot, long-nosed	60	\N
732	sapien	18	74	urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi	11	DC	25	http://dummyimage.com/204x100.png/dddddd/000000	Sociable weaver	35	\N
733	in libero	26	73	pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non	18	Marvel	32	http://dummyimage.com/190x100.png/dddddd/000000	Rhinoceros, black	89	\N
734	nullam varius	99	30	velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra	12	DC	96	http://dummyimage.com/246x100.png/cc0000/ffffff	Raccoon dog	52	\N
735	sodales	20	50	diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus	78	DC	63	http://dummyimage.com/140x100.png/cc0000/ffffff	Levaillant's barbet	12	\N
736	amet nunc	24	56	pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit	66	Marvel	55	http://dummyimage.com/163x100.png/cc0000/ffffff	Lizard, mexican beaded	26	\N
737	vel augue	95	93	lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero	29	DC	66	http://dummyimage.com/183x100.png/5fa2dd/ffffff	European wild cat	19	\N
738	volutpat	2	86	erat id mauris vulputate elementum nullam varius nulla facilisi cras non	60	Marvel	94	http://dummyimage.com/193x100.png/dddddd/000000	Hornbill, leadbeateri's ground	63	\N
739	cras in	66	44	tortor risus dapibus augue vel accumsan tellus nisi eu orci	71	DC	3	http://dummyimage.com/195x100.png/cc0000/ffffff	Zebra, common	51	\N
740	interdum	32	84	pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus	47	DC	71	http://dummyimage.com/101x100.png/5fa2dd/ffffff	African wild dog	60	\N
741	amet lobortis	76	72	ante ipsum primis in faucibus orci luctus et ultrices posuere	79	Marvel	18	http://dummyimage.com/121x100.png/dddddd/000000	Southern white-crowned shrike	38	\N
742	consequat	69	86	eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo	72	DC	51	http://dummyimage.com/244x100.png/5fa2dd/ffffff	Eastern box turtle	72	\N
743	in	39	79	quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at	41	DC	63	http://dummyimage.com/150x100.png/cc0000/ffffff	Bushbuck	13	\N
744	lectus	98	43	cum sociis natoque penatibus et magnis dis parturient montes nascetur	55	DC	3	http://dummyimage.com/181x100.png/5fa2dd/ffffff	Short-beaked echidna	28	\N
745	porttitor lorem	14	89	habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla	16	DC	17	http://dummyimage.com/192x100.png/dddddd/000000	Coke's hartebeest	25	\N
746	pede	44	88	felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in	73	Marvel	90	http://dummyimage.com/121x100.png/ff4444/ffffff	Macaque, bonnet	8	\N
747	pede justo	95	84	nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui	31	DC	31	http://dummyimage.com/167x100.png/dddddd/000000	Pelican, great white	48	\N
748	praesent	72	28	suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus	74	DC	19	http://dummyimage.com/197x100.png/cc0000/ffffff	Boa, emerald green tree	91	\N
749	volutpat	95	8	ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet	33	DC	54	http://dummyimage.com/224x100.png/ff4444/ffffff	Baboon, gelada	9	\N
750	nascetur ridiculus	17	62	semper sapien a libero nam dui proin leo odio porttitor id	64	Marvel	47	http://dummyimage.com/225x100.png/cc0000/ffffff	European wild cat	98	\N
751	lorem	90	94	ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id	60	Marvel	78	http://dummyimage.com/240x100.png/cc0000/ffffff	Squirrel glider	82	\N
752	posuere cubilia	86	47	dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus	30	DC	91	http://dummyimage.com/169x100.png/dddddd/000000	Long-crested hawk eagle	75	\N
753	ante	86	74	amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus	97	DC	44	http://dummyimage.com/109x100.png/dddddd/000000	Mara	34	\N
754	tortor	67	95	laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui	2	Marvel	25	http://dummyimage.com/211x100.png/ff4444/ffffff	Buttermilk snake	65	\N
755	tortor sollicitudin	98	29	lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et	45	Marvel	17	http://dummyimage.com/159x100.png/ff4444/ffffff	Coqui partridge	17	\N
756	ante ipsum	42	35	dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam	73	DC	90	http://dummyimage.com/227x100.png/dddddd/000000	Old world fruit bat (unidentified)	82	\N
757	tincidunt	71	41	aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque	58	DC	95	http://dummyimage.com/166x100.png/dddddd/000000	Violet-crested turaco	58	\N
758	ligula nec	8	75	ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae	50	DC	85	http://dummyimage.com/180x100.png/5fa2dd/ffffff	Duck, mountain	26	\N
759	ut dolor	29	49	imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue	72	Marvel	98	http://dummyimage.com/229x100.png/dddddd/000000	American badger	26	\N
760	sed lacus	1	20	at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus	30	DC	58	http://dummyimage.com/205x100.png/ff4444/ffffff	Denham's bustard	86	\N
761	posuere cubilia	61	66	consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien	60	Marvel	56	http://dummyimage.com/214x100.png/cc0000/ffffff	Blue peacock	78	\N
762	nulla	9	29	sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac	89	Marvel	11	http://dummyimage.com/125x100.png/dddddd/000000	Snake, green vine	31	\N
763	nisl duis	20	78	magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus	4	Marvel	89	http://dummyimage.com/218x100.png/dddddd/000000	Kingfisher, white-throated	80	\N
764	hac	13	89	sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a	6	Marvel	96	http://dummyimage.com/104x100.png/5fa2dd/ffffff	Green heron	52	\N
765	nibh fusce	42	46	varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices	49	Marvel	34	http://dummyimage.com/128x100.png/dddddd/000000	Civet cat	31	\N
766	tortor	36	63	vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy	58	DC	50	http://dummyimage.com/124x100.png/cc0000/ffffff	Rock dove	45	\N
767	rhoncus	67	76	penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue	41	DC	65	http://dummyimage.com/243x100.png/ff4444/ffffff	Mallard	37	\N
768	est quam	45	13	a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas	99	DC	73	http://dummyimage.com/171x100.png/cc0000/ffffff	Otter, canadian river	51	\N
769	a	15	42	vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio	13	Marvel	30	http://dummyimage.com/111x100.png/dddddd/000000	Puna ibis	84	\N
770	cum	77	63	odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi	80	Marvel	14	http://dummyimage.com/204x100.png/ff4444/ffffff	Lorikeet, scaly-breasted	92	\N
771	ipsum primis	66	50	nisl aenean lectus pellentesque eget nunc donec quis orci eget	73	Marvel	68	http://dummyimage.com/187x100.png/ff4444/ffffff	Tokay gecko	94	\N
772	enim blandit	1	9	habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum	36	Marvel	13	http://dummyimage.com/216x100.png/ff4444/ffffff	Penguin, galapagos	53	\N
773	sit	46	95	felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar	80	Marvel	24	http://dummyimage.com/162x100.png/5fa2dd/ffffff	Darwin ground finch (unidentified)	10	\N
774	quisque erat	25	8	proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum	70	Marvel	76	http://dummyimage.com/117x100.png/cc0000/ffffff	Owl, great horned	30	\N
775	pellentesque	52	75	justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id	65	Marvel	82	http://dummyimage.com/234x100.png/cc0000/ffffff	Dolphin, common	73	\N
776	lorem id	21	77	justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra	29	DC	60	http://dummyimage.com/189x100.png/5fa2dd/ffffff	Indian tree pie	49	\N
777	eleifend	45	4	magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus	14	Marvel	12	http://dummyimage.com/122x100.png/ff4444/ffffff	Owl, madagascar hawk	25	\N
778	rhoncus mauris	92	18	auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl	60	DC	58	http://dummyimage.com/188x100.png/5fa2dd/ffffff	Red sheep	27	\N
779	adipiscing molestie	86	75	odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce	25	DC	6	http://dummyimage.com/170x100.png/dddddd/000000	Wombat, southern hairy-nosed	29	\N
780	at	83	62	libero rutrum ac lobortis vel dapibus at diam nam tristique	66	Marvel	89	http://dummyimage.com/206x100.png/ff4444/ffffff	Long-billed corella	16	\N
781	sit amet	90	77	cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes	62	DC	10	http://dummyimage.com/188x100.png/ff4444/ffffff	Dove, white-winged	98	\N
782	donec	17	64	id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie	76	DC	37	http://dummyimage.com/106x100.png/dddddd/000000	Brindled gnu	32	\N
783	curae mauris	57	15	eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis	73	Marvel	9	http://dummyimage.com/225x100.png/5fa2dd/ffffff	Giant heron	74	\N
784	sagittis dui	19	24	quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed	66	DC	2	http://dummyimage.com/157x100.png/ff4444/ffffff	Stork, jabiru	37	\N
785	dictumst	24	50	condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas	60	Marvel	82	http://dummyimage.com/235x100.png/5fa2dd/ffffff	Rat, white-faced tree	49	\N
786	lacinia sapien	41	91	ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue	88	Marvel	36	http://dummyimage.com/124x100.png/5fa2dd/ffffff	Possum, golden brush-tailed	60	\N
787	ligula in	58	35	vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa	38	DC	19	http://dummyimage.com/188x100.png/dddddd/000000	Shrew, mandras tree	47	\N
788	neque duis	14	60	nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus	14	DC	12	http://dummyimage.com/144x100.png/5fa2dd/ffffff	Heron, green-backed	95	\N
789	semper porta	21	79	vel est donec odio justo sollicitudin ut suscipit a feugiat et	53	DC	49	http://dummyimage.com/150x100.png/ff4444/ffffff	Penguin, fairy	94	\N
790	lorem quisque	94	26	odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae	21	Marvel	18	http://dummyimage.com/168x100.png/ff4444/ffffff	Chimpanzee	81	\N
791	tellus nisi	68	75	dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis	50	Marvel	99	http://dummyimage.com/184x100.png/ff4444/ffffff	Crested bunting	27	\N
792	nullam molestie	52	50	massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien	88	Marvel	8	http://dummyimage.com/246x100.png/5fa2dd/ffffff	Glider, squirrel	49	\N
793	nisl nunc	23	18	nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta	42	DC	6	http://dummyimage.com/176x100.png/cc0000/ffffff	Elephant, african	25	\N
794	id	31	59	morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed	90	DC	22	http://dummyimage.com/241x100.png/5fa2dd/ffffff	Horned puffin	61	\N
795	aliquet pulvinar	43	43	velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit	21	Marvel	63	http://dummyimage.com/245x100.png/dddddd/000000	Purple grenadier	63	\N
796	phasellus	90	80	blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget	78	Marvel	94	http://dummyimage.com/188x100.png/cc0000/ffffff	Golden-mantled ground squirrel	21	\N
797	purus eu	92	17	in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at	65	DC	74	http://dummyimage.com/100x100.png/cc0000/ffffff	Gull, dusky	46	\N
798	penatibus et	55	59	phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim	72	Marvel	87	http://dummyimage.com/104x100.png/cc0000/ffffff	Squirrel, eastern fox	78	\N
799	consequat	31	13	amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum	48	Marvel	85	http://dummyimage.com/208x100.png/5fa2dd/ffffff	Pelican, brown	19	\N
800	convallis	26	39	magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus	7	Marvel	31	http://dummyimage.com/162x100.png/cc0000/ffffff	Phalarope, grey	33	\N
801	leo	99	62	eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse	80	DC	14	http://dummyimage.com/168x100.png/5fa2dd/ffffff	Mongoose, yellow	53	\N
802	sed vel	71	44	accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit	32	Marvel	13	http://dummyimage.com/230x100.png/5fa2dd/ffffff	Numbat	7	\N
803	justo in	40	1	ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae	97	Marvel	60	http://dummyimage.com/225x100.png/cc0000/ffffff	Javan gold-spotted mongoose	63	\N
804	platea	100	85	eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio	91	DC	91	http://dummyimage.com/132x100.png/cc0000/ffffff	Raccoon, crab-eating	41	\N
805	nec condimentum	89	42	metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque	16	Marvel	75	http://dummyimage.com/101x100.png/cc0000/ffffff	Horned rattlesnake	32	\N
806	lacus morbi	38	90	pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam	49	DC	87	http://dummyimage.com/111x100.png/5fa2dd/ffffff	Glider, squirrel	39	\N
807	at turpis	21	57	consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris	63	Marvel	60	http://dummyimage.com/109x100.png/dddddd/000000	Common goldeneye	63	\N
808	erat	65	28	lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum	64	DC	52	http://dummyimage.com/151x100.png/dddddd/000000	Cardinal, black-throated	42	\N
809	justo in	19	1	mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit	17	Marvel	36	http://dummyimage.com/184x100.png/ff4444/ffffff	Southern elephant seal	81	\N
810	blandit	1	46	amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue	23	Marvel	53	http://dummyimage.com/243x100.png/5fa2dd/ffffff	Elephant, asian	95	\N
811	at	96	31	in lectus pellentesque at nulla suspendisse potenti cras in purus eu	6	DC	42	http://dummyimage.com/188x100.png/ff4444/ffffff	Frilled dragon	97	\N
812	sit	15	16	tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget	90	DC	63	http://dummyimage.com/129x100.png/cc0000/ffffff	Crown of thorns starfish	86	\N
813	erat id	11	5	eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti	15	DC	35	http://dummyimage.com/138x100.png/ff4444/ffffff	Spotted deer	78	\N
814	amet cursus	56	47	magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis	83	DC	99	http://dummyimage.com/199x100.png/cc0000/ffffff	Woodchuck	85	\N
815	habitasse platea	43	8	nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam	26	DC	25	http://dummyimage.com/114x100.png/cc0000/ffffff	Baboon, chacma	42	\N
816	sapien	71	41	odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla	98	DC	32	http://dummyimage.com/173x100.png/cc0000/ffffff	Nelson ground squirrel	81	\N
817	potenti	71	36	ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat	64	DC	35	http://dummyimage.com/141x100.png/cc0000/ffffff	Chickadee, black-capped	29	\N
818	ligula sit	20	5	habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi	59	DC	40	http://dummyimage.com/194x100.png/5fa2dd/ffffff	Squirrel, richardson's ground	27	\N
819	turpis	88	58	vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur	100	Marvel	11	http://dummyimage.com/163x100.png/dddddd/000000	Red-necked wallaby	63	\N
820	ultrices	2	18	accumsan felis ut at dolor quis odio consequat varius integer ac	49	DC	89	http://dummyimage.com/230x100.png/cc0000/ffffff	American bighorn sheep	78	\N
821	curae	63	67	diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus	52	Marvel	1	http://dummyimage.com/122x100.png/dddddd/000000	Barrows goldeneye	91	\N
822	mattis	75	98	et tempus semper est quam pharetra magna ac consequat metus sapien	100	DC	84	http://dummyimage.com/145x100.png/cc0000/ffffff	Small-spotted genet	62	\N
823	porttitor	45	77	sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget	30	Marvel	47	http://dummyimage.com/171x100.png/cc0000/ffffff	Bahama pintail	15	\N
824	at vulputate	60	9	quisque porta volutpat erat quisque erat eros viverra eget congue	25	DC	80	http://dummyimage.com/171x100.png/ff4444/ffffff	Warthog	82	\N
825	sem sed	24	13	ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus	46	Marvel	35	http://dummyimage.com/162x100.png/cc0000/ffffff	Black-footed ferret	26	\N
826	pede	38	75	sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in	95	Marvel	88	http://dummyimage.com/200x100.png/cc0000/ffffff	Emerald green tree boa	76	\N
827	sit amet	22	56	ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac	75	Marvel	48	http://dummyimage.com/100x100.png/5fa2dd/ffffff	Sheep, stone	78	\N
828	leo odio	28	10	lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio	79	Marvel	39	http://dummyimage.com/184x100.png/dddddd/000000	Crowned eagle	45	\N
829	amet	22	49	aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in	37	DC	3	http://dummyimage.com/144x100.png/dddddd/000000	Pocket gopher (unidentified)	82	\N
830	porttitor lorem	73	94	vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes	14	DC	20	http://dummyimage.com/144x100.png/5fa2dd/ffffff	Arctic fox	16	\N
831	turpis	23	42	nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in	94	DC	34	http://dummyimage.com/180x100.png/5fa2dd/ffffff	Langur, hanuman	78	\N
832	sapien	54	3	eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea	73	DC	61	http://dummyimage.com/191x100.png/dddddd/000000	Common wombat	31	\N
833	turpis enim	29	13	proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis	36	DC	90	http://dummyimage.com/126x100.png/cc0000/ffffff	Starling, greater blue-eared	78	\N
834	cubilia	26	44	morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis	12	DC	29	http://dummyimage.com/205x100.png/5fa2dd/ffffff	Nubian bee-eater	20	\N
835	natoque penatibus	73	54	luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at	17	Marvel	51	http://dummyimage.com/238x100.png/dddddd/000000	Skunk, striped	92	\N
836	ac	52	57	rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo	3	DC	44	http://dummyimage.com/173x100.png/5fa2dd/ffffff	Great white pelican	38	\N
837	leo pellentesque	75	11	etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat	96	Marvel	93	http://dummyimage.com/219x100.png/cc0000/ffffff	Cormorant, javanese	40	\N
838	nunc nisl	58	19	penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis	11	DC	65	http://dummyimage.com/184x100.png/dddddd/000000	Magpie, black-backed	82	\N
839	tellus in	7	65	accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit	25	Marvel	50	http://dummyimage.com/104x100.png/ff4444/ffffff	Openbill stork	62	\N
840	vivamus vestibulum	42	43	vel ipsum praesent blandit lacinia erat vestibulum sed magna at	73	Marvel	53	http://dummyimage.com/197x100.png/dddddd/000000	Collared lizard	20	\N
841	eleifend luctus	32	16	turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor	86	Marvel	21	http://dummyimage.com/166x100.png/ff4444/ffffff	Rabbit, eastern cottontail	39	\N
842	donec	40	55	nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante	22	DC	63	http://dummyimage.com/117x100.png/5fa2dd/ffffff	Toddy cat	3	\N
843	donec pharetra	58	18	congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium	71	DC	45	http://dummyimage.com/225x100.png/dddddd/000000	Rattlesnake, eastern diamondback	91	\N
844	est	83	80	lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse	61	DC	53	http://dummyimage.com/248x100.png/5fa2dd/ffffff	Savannah deer (unidentified)	24	\N
845	quam nec	75	64	sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci	28	Marvel	77	http://dummyimage.com/231x100.png/ff4444/ffffff	Monitor, water	60	\N
846	tempor	52	60	semper est quam pharetra magna ac consequat metus sapien ut nunc	59	DC	8	http://dummyimage.com/209x100.png/ff4444/ffffff	Blue shark	39	\N
847	nunc	69	7	donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in	100	DC	53	http://dummyimage.com/238x100.png/5fa2dd/ffffff	Square-lipped rhinoceros	21	\N
848	cras	18	94	est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl	95	DC	29	http://dummyimage.com/114x100.png/ff4444/ffffff	Least chipmunk	28	\N
849	suscipit nulla	34	29	lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis	2	Marvel	32	http://dummyimage.com/138x100.png/5fa2dd/ffffff	Black-faced kangaroo	41	\N
850	platea	81	56	sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec	53	Marvel	94	http://dummyimage.com/163x100.png/5fa2dd/ffffff	Wagtail, african pied	11	\N
851	eu tincidunt	28	12	maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat	71	Marvel	21	http://dummyimage.com/245x100.png/cc0000/ffffff	Common dolphin	61	\N
852	non	40	18	ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus	21	DC	87	http://dummyimage.com/183x100.png/ff4444/ffffff	Puma	34	\N
853	at	36	41	eu orci mauris lacinia sapien quis libero nullam sit amet turpis	39	Marvel	71	http://dummyimage.com/119x100.png/dddddd/000000	Burmese black mountain tortoise	5	\N
854	vestibulum sed	57	48	sapien arcu sed augue aliquam erat volutpat in congue etiam	33	Marvel	59	http://dummyimage.com/234x100.png/ff4444/ffffff	Heron, grey	14	\N
855	luctus	75	96	suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et	16	DC	25	http://dummyimage.com/234x100.png/dddddd/000000	Starling, greater blue-eared	7	\N
856	ligula in	20	56	convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia	84	DC	43	http://dummyimage.com/123x100.png/dddddd/000000	Pale-throated three-toed sloth	68	\N
857	nibh	76	56	elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum	36	Marvel	16	http://dummyimage.com/231x100.png/cc0000/ffffff	Squirrel, richardson's ground	12	\N
858	consectetuer	7	20	velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget	70	DC	17	http://dummyimage.com/143x100.png/5fa2dd/ffffff	Musk ox	56	\N
859	elit	45	89	ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor	32	Marvel	98	http://dummyimage.com/173x100.png/dddddd/000000	Bald eagle	100	\N
860	vestibulum ante	79	5	elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum	14	Marvel	69	http://dummyimage.com/124x100.png/ff4444/ffffff	Boa, cook's tree	46	\N
861	sit amet	42	74	congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis	73	Marvel	40	http://dummyimage.com/202x100.png/dddddd/000000	White-rumped vulture	21	\N
862	maecenas rhoncus	96	82	eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula	53	Marvel	95	http://dummyimage.com/172x100.png/dddddd/000000	Ass, asiatic wild	14	\N
863	in faucibus	17	58	lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet	83	DC	89	http://dummyimage.com/162x100.png/ff4444/ffffff	Mouse, four-striped grass	13	\N
864	elementum	56	56	luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus	54	DC	41	http://dummyimage.com/184x100.png/5fa2dd/ffffff	Comb duck	57	\N
865	sociis natoque	2	37	erat eros viverra eget congue eget semper rutrum nulla nunc	17	Marvel	53	http://dummyimage.com/173x100.png/cc0000/ffffff	African wild dog	27	\N
866	sit amet	96	12	laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam	4	Marvel	4	http://dummyimage.com/231x100.png/5fa2dd/ffffff	Kori bustard	18	\N
867	pede	51	54	placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse	75	Marvel	47	http://dummyimage.com/139x100.png/cc0000/ffffff	Otter, cape clawless	16	\N
868	dui maecenas	84	91	sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium	94	DC	100	http://dummyimage.com/128x100.png/ff4444/ffffff	Marabou stork	66	\N
869	eget	8	98	erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis	4	Marvel	68	http://dummyimage.com/154x100.png/dddddd/000000	Vulture, egyptian	4	\N
870	nulla	92	97	natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et	27	DC	97	http://dummyimage.com/104x100.png/dddddd/000000	Lion, galapagos sea	12	\N
871	sapien	44	81	quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus	40	Marvel	90	http://dummyimage.com/216x100.png/cc0000/ffffff	Kangaroo, western grey	52	\N
872	fringilla rhoncus	91	97	sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed	69	DC	47	http://dummyimage.com/201x100.png/cc0000/ffffff	Squirrel, smith's bush	90	\N
873	enim	46	92	venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi	23	Marvel	37	http://dummyimage.com/133x100.png/ff4444/ffffff	Nyala	6	\N
874	vel	31	64	vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus	35	Marvel	15	http://dummyimage.com/233x100.png/ff4444/ffffff	Cormorant, king	41	\N
875	volutpat quam	11	29	donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus	49	DC	75	http://dummyimage.com/180x100.png/ff4444/ffffff	Phalarope, red	78	\N
876	nam tristique	57	27	volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut	20	DC	77	http://dummyimage.com/165x100.png/ff4444/ffffff	Lesser masked weaver	55	\N
877	lorem	31	91	morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel	35	DC	72	http://dummyimage.com/129x100.png/5fa2dd/ffffff	Starling, superb	80	\N
878	justo	7	25	sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio	52	Marvel	69	http://dummyimage.com/193x100.png/dddddd/000000	Frilled dragon	84	\N
879	mattis odio	32	81	nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean	16	Marvel	3	http://dummyimage.com/106x100.png/5fa2dd/ffffff	Kingfisher, malachite	2	\N
880	nisi eu	35	64	placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris	9	DC	63	http://dummyimage.com/121x100.png/dddddd/000000	Sage hen	38	\N
881	interdum	40	98	iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus	79	DC	24	http://dummyimage.com/242x100.png/ff4444/ffffff	Lemur, ring-tailed	76	\N
882	erat quisque	28	94	ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed	89	DC	59	http://dummyimage.com/237x100.png/dddddd/000000	Crowned hawk-eagle	5	\N
883	libero non	50	76	fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum	41	DC	45	http://dummyimage.com/113x100.png/dddddd/000000	Eagle, white-bellied sea	70	\N
884	posuere	53	68	sapien non mi integer ac neque duis bibendum morbi non	94	DC	88	http://dummyimage.com/194x100.png/dddddd/000000	Bottle-nose dolphin	79	\N
886	nulla	69	80	ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam	90	DC	90	http://dummyimage.com/151x100.png/cc0000/ffffff	Pintail, bahama	75	\N
887	platea dictumst	85	82	rutrum nulla nunc purus phasellus in felis donec semper sapien a libero	66	Marvel	36	http://dummyimage.com/143x100.png/cc0000/ffffff	Red-headed woodpecker	51	\N
888	vestibulum ante	100	100	mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel	77	DC	14	http://dummyimage.com/244x100.png/5fa2dd/ffffff	White-necked stork	99	\N
889	nunc viverra	84	70	platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer	2	DC	58	http://dummyimage.com/100x100.png/dddddd/000000	Butterfly, canadian tiger swallowtail	27	\N
890	pharetra magna	60	5	enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus	22	DC	9	http://dummyimage.com/158x100.png/cc0000/ffffff	Python, carpet	100	\N
891	ultrices	16	12	fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam	12	Marvel	56	http://dummyimage.com/106x100.png/dddddd/000000	Laughing dove	38	\N
892	justo	31	62	dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante	81	DC	27	http://dummyimage.com/135x100.png/dddddd/000000	Mynah, indian	25	\N
893	in	75	53	aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam	70	DC	20	http://dummyimage.com/145x100.png/ff4444/ffffff	Nubian bee-eater	69	\N
894	praesent lectus	77	75	nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris	46	DC	38	http://dummyimage.com/173x100.png/dddddd/000000	White-lipped peccary	18	\N
895	nulla	48	62	amet cursus id turpis integer aliquet massa id lobortis convallis tortor	36	DC	5	http://dummyimage.com/141x100.png/ff4444/ffffff	Starling, greater blue-eared	18	\N
896	justo	31	95	proin at turpis a pede posuere nonummy integer non velit donec diam	76	DC	35	http://dummyimage.com/169x100.png/dddddd/000000	Heron, green-backed	5	\N
897	sit amet	50	54	quis orci eget orci vehicula condimentum curabitur in libero ut massa	88	Marvel	9	http://dummyimage.com/168x100.png/dddddd/000000	Owl, madagascar hawk	60	\N
898	primis in	57	71	sit amet eleifend pede libero quis orci nullam molestie nibh	24	DC	72	http://dummyimage.com/153x100.png/cc0000/ffffff	Monkey, vervet	23	\N
899	elementum	54	31	dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est	27	DC	86	http://dummyimage.com/217x100.png/ff4444/ffffff	Ibex	85	\N
900	pretium iaculis	47	27	sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non	47	Marvel	44	http://dummyimage.com/148x100.png/5fa2dd/ffffff	Fox, crab-eating	84	\N
901	sociis natoque	12	4	convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia	27	Marvel	95	http://dummyimage.com/107x100.png/5fa2dd/ffffff	Indian mynah	1	\N
902	lacinia sapien	95	25	lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum	5	Marvel	65	http://dummyimage.com/133x100.png/5fa2dd/ffffff	Egyptian cobra	45	\N
903	odio	4	14	est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in	99	Marvel	97	http://dummyimage.com/163x100.png/cc0000/ffffff	Cormorant, little	33	\N
904	pellentesque	79	62	cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec	58	DC	4	http://dummyimage.com/154x100.png/cc0000/ffffff	Glider, sugar	28	\N
905	condimentum neque	82	55	nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor	86	Marvel	88	http://dummyimage.com/220x100.png/ff4444/ffffff	Leopard	9	\N
906	nec	47	22	molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna	89	Marvel	89	http://dummyimage.com/168x100.png/5fa2dd/ffffff	Capybara	70	\N
907	ridiculus	55	72	sit amet justo morbi ut odio cras mi pede malesuada	97	Marvel	1	http://dummyimage.com/137x100.png/ff4444/ffffff	Gecko, barking	67	\N
908	nulla	40	54	sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc	26	DC	19	http://dummyimage.com/144x100.png/5fa2dd/ffffff	Capuchin, white-fronted	53	\N
909	donec ut	57	73	habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie	91	DC	49	http://dummyimage.com/136x100.png/ff4444/ffffff	Southern ground hornbill	91	\N
910	cum sociis	72	14	sapien cursus vestibulum proin eu mi nulla ac enim in	14	DC	43	http://dummyimage.com/109x100.png/dddddd/000000	Pine squirrel	7	\N
911	nisi	73	63	tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit	62	DC	95	http://dummyimage.com/217x100.png/cc0000/ffffff	Dabchick	78	\N
912	duis	14	17	curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam	49	DC	82	http://dummyimage.com/139x100.png/5fa2dd/ffffff	Booby, blue-footed	46	\N
913	pulvinar	51	66	ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque	11	Marvel	59	http://dummyimage.com/178x100.png/ff4444/ffffff	Common brushtail possum	74	\N
914	consequat morbi	86	42	in blandit ultrices enim lorem ipsum dolor sit amet consectetuer	40	DC	61	http://dummyimage.com/205x100.png/5fa2dd/ffffff	Cormorant, king	11	\N
915	sociis	92	90	pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas	94	DC	89	http://dummyimage.com/109x100.png/ff4444/ffffff	Lourie, grey	68	\N
916	ligula	50	94	interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus	57	Marvel	85	http://dummyimage.com/154x100.png/ff4444/ffffff	Hummingbird (unidentified)	35	\N
917	dapibus nulla	45	12	tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc	15	Marvel	78	http://dummyimage.com/172x100.png/5fa2dd/ffffff	Pallas's fish eagle	66	\N
918	dictumst morbi	32	34	odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit	62	DC	86	http://dummyimage.com/126x100.png/ff4444/ffffff	Capuchin, white-fronted	43	\N
919	congue diam	85	43	nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem	70	DC	15	http://dummyimage.com/188x100.png/ff4444/ffffff	Langur, hanuman	84	\N
920	aenean auctor	39	27	erat quisque erat eros viverra eget congue eget semper rutrum	49	Marvel	71	http://dummyimage.com/236x100.png/ff4444/ffffff	Dove, white-winged	86	\N
921	ridiculus	52	26	diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere	6	DC	84	http://dummyimage.com/202x100.png/cc0000/ffffff	Herring gull	27	\N
922	aliquet maecenas	41	96	vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam	93	DC	59	http://dummyimage.com/144x100.png/ff4444/ffffff	White-eye, cape	43	\N
923	curabitur	3	33	ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices	86	DC	81	http://dummyimage.com/233x100.png/5fa2dd/ffffff	Fox, savanna	13	\N
924	porttitor pede	93	42	nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas	91	DC	26	http://dummyimage.com/212x100.png/cc0000/ffffff	Cormorant, neotropic	4	\N
925	tellus	54	52	porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer	68	DC	92	http://dummyimage.com/247x100.png/5fa2dd/ffffff	Bird, secretary	56	\N
926	dignissim	80	66	dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices	72	Marvel	33	http://dummyimage.com/175x100.png/5fa2dd/ffffff	Greater roadrunner	83	\N
927	posuere	55	19	suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien	17	DC	40	http://dummyimage.com/182x100.png/cc0000/ffffff	Tern, arctic	83	\N
928	risus	14	84	hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in	100	Marvel	54	http://dummyimage.com/148x100.png/cc0000/ffffff	Coqui partridge	74	\N
929	ultrices	41	72	morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie	57	Marvel	38	http://dummyimage.com/128x100.png/cc0000/ffffff	Crocodile, nile	39	\N
930	erat	80	43	sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris	91	DC	8	http://dummyimage.com/225x100.png/ff4444/ffffff	Violet-eared waxbill	6	\N
931	hac	46	62	suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec	70	Marvel	86	http://dummyimage.com/186x100.png/5fa2dd/ffffff	Black swan	75	\N
932	in felis	87	48	convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien	82	DC	21	http://dummyimage.com/243x100.png/ff4444/ffffff	Ostrich	24	\N
933	tristique	77	11	vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis	34	DC	39	http://dummyimage.com/143x100.png/cc0000/ffffff	Jungle cat	65	\N
934	nam	80	44	adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in	82	DC	11	http://dummyimage.com/226x100.png/5fa2dd/ffffff	Western lowland gorilla	28	\N
935	mollis	13	53	ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus	16	Marvel	56	http://dummyimage.com/152x100.png/cc0000/ffffff	Common boubou shrike	38	\N
936	eleifend	82	56	id lobortis convallis tortor risus dapibus augue vel accumsan tellus	9	Marvel	80	http://dummyimage.com/215x100.png/ff4444/ffffff	Cormorant (unidentified)	34	\N
937	in	9	45	lacinia sapien quis libero nullam sit amet turpis elementum ligula	56	DC	32	http://dummyimage.com/183x100.png/ff4444/ffffff	Owl, white-browed	30	\N
938	quis	89	53	lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas	90	DC	65	http://dummyimage.com/206x100.png/dddddd/000000	Blackbird, red-winged	86	\N
939	sollicitudin	64	76	pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices	60	Marvel	9	http://dummyimage.com/102x100.png/5fa2dd/ffffff	Indian red admiral	54	\N
940	morbi	90	18	magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum	41	DC	58	http://dummyimage.com/219x100.png/dddddd/000000	Goose, canada	92	\N
941	ipsum	91	43	eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper	88	Marvel	91	http://dummyimage.com/193x100.png/5fa2dd/ffffff	Goose, cereopsis	86	\N
942	ipsum praesent	73	24	in faucibus orci luctus et ultrices posuere cubilia curae donec	50	Marvel	53	http://dummyimage.com/123x100.png/ff4444/ffffff	Scarlet macaw	35	\N
943	vel	16	11	aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor	30	Marvel	10	http://dummyimage.com/154x100.png/cc0000/ffffff	White-rumped vulture	19	\N
944	lectus in	21	29	tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero	74	DC	58	http://dummyimage.com/227x100.png/dddddd/000000	Langur, gray	22	\N
945	diam in	93	33	felis eu sapien cursus vestibulum proin eu mi nulla ac	46	DC	73	http://dummyimage.com/246x100.png/5fa2dd/ffffff	Bison, american	11	\N
946	lectus pellentesque	14	52	consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus	41	DC	68	http://dummyimage.com/215x100.png/ff4444/ffffff	Squirrel, nelson ground	52	\N
947	nulla integer	46	69	mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id	16	Marvel	91	http://dummyimage.com/153x100.png/cc0000/ffffff	Javan gold-spotted mongoose	45	\N
948	ultrices enim	86	39	odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar	58	DC	15	http://dummyimage.com/190x100.png/dddddd/000000	Antelope ground squirrel	11	\N
949	sed	68	11	quisque ut erat curabitur gravida nisi at nibh in hac	49	Marvel	45	http://dummyimage.com/181x100.png/cc0000/ffffff	Burrowing owl	45	\N
950	ut	30	96	cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque	28	DC	76	http://dummyimage.com/214x100.png/cc0000/ffffff	Eagle, bateleur	98	\N
951	id	91	37	ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus	23	DC	9	http://dummyimage.com/202x100.png/cc0000/ffffff	Blue fox	88	\N
952	consequat morbi	91	70	ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi	51	DC	63	http://dummyimage.com/176x100.png/dddddd/000000	White-lipped peccary	45	\N
953	duis consequat	63	15	non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit	45	Marvel	84	http://dummyimage.com/169x100.png/ff4444/ffffff	South American meadowlark (unidentified)	35	\N
954	cras in	18	55	vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in	29	Marvel	12	http://dummyimage.com/175x100.png/cc0000/ffffff	Lesser double-collared sunbird	49	\N
955	justo aliquam	11	44	pede lobortis ligula sit amet eleifend pede libero quis orci	94	DC	52	http://dummyimage.com/130x100.png/ff4444/ffffff	Cliffchat, mocking	38	\N
956	turpis	87	61	habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat	53	DC	40	http://dummyimage.com/248x100.png/cc0000/ffffff	Swainson's francolin	60	\N
957	eget	84	79	posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl	80	Marvel	79	http://dummyimage.com/138x100.png/dddddd/000000	Sable antelope	76	\N
958	pede venenatis	39	99	porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper	54	DC	46	http://dummyimage.com/206x100.png/5fa2dd/ffffff	Lizard, goanna	40	\N
959	interdum	39	7	suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut	17	Marvel	55	http://dummyimage.com/102x100.png/5fa2dd/ffffff	Wild turkey	41	\N
960	eu nibh	81	16	vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget	95	Marvel	19	http://dummyimage.com/126x100.png/dddddd/000000	Tiger	90	\N
961	a	2	17	integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc	64	DC	9	http://dummyimage.com/118x100.png/cc0000/ffffff	Black-throated butcher bird	19	\N
962	orci nullam	27	23	odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor	28	Marvel	98	http://dummyimage.com/233x100.png/ff4444/ffffff	Horned puffin	35	\N
963	cras	67	64	vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat	24	Marvel	43	http://dummyimage.com/201x100.png/cc0000/ffffff	Long-billed corella	67	\N
964	ac	14	94	ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non	43	Marvel	44	http://dummyimage.com/145x100.png/5fa2dd/ffffff	Hudsonian godwit	96	\N
965	quis augue	15	18	nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et	64	DC	16	http://dummyimage.com/224x100.png/dddddd/000000	Lion, african	58	\N
966	platea dictumst	27	64	sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam	76	DC	47	http://dummyimage.com/192x100.png/5fa2dd/ffffff	Asian water dragon	62	\N
967	sem sed	75	69	amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus	24	DC	42	http://dummyimage.com/242x100.png/cc0000/ffffff	Lion, southern sea	86	\N
968	ipsum dolor	29	9	rutrum neque aenean auctor gravida sem praesent id massa id	82	DC	26	http://dummyimage.com/241x100.png/cc0000/ffffff	Black-winged stilt	33	\N
969	tortor	79	6	vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo	68	Marvel	98	http://dummyimage.com/213x100.png/ff4444/ffffff	Hyena, striped	88	\N
970	libero ut	84	64	lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed	16	Marvel	19	http://dummyimage.com/136x100.png/cc0000/ffffff	Gnu, brindled	88	\N
971	viverra	4	4	sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim	50	DC	2	http://dummyimage.com/206x100.png/ff4444/ffffff	Cockatoo, red-tailed	7	\N
972	duis mattis	24	22	massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est	3	Marvel	92	http://dummyimage.com/192x100.png/5fa2dd/ffffff	Water monitor	38	\N
973	in faucibus	28	61	posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar	4	Marvel	81	http://dummyimage.com/154x100.png/5fa2dd/ffffff	Galapagos mockingbird	72	\N
974	eget	16	70	fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet	76	Marvel	77	http://dummyimage.com/207x100.png/cc0000/ffffff	Greater kudu	40	\N
975	turpis integer	97	61	maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc	98	Marvel	69	http://dummyimage.com/107x100.png/dddddd/000000	Lark, horned	93	\N
976	porttitor id	76	86	porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse	33	Marvel	97	http://dummyimage.com/222x100.png/5fa2dd/ffffff	Eurasian badger	70	\N
977	elementum	32	35	sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor eu pede	46	Marvel	24	http://dummyimage.com/229x100.png/dddddd/000000	Asiatic wild ass	24	\N
978	id	5	30	posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam	32	Marvel	6	http://dummyimage.com/135x100.png/5fa2dd/ffffff	Tern, royal	32	\N
979	nunc	100	25	orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus	42	DC	84	http://dummyimage.com/209x100.png/5fa2dd/ffffff	Bat-eared fox	76	\N
980	in quis	42	74	iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean	66	DC	34	http://dummyimage.com/110x100.png/ff4444/ffffff	Dragon, komodo	72	\N
981	dictumst	2	35	vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus	86	DC	70	http://dummyimage.com/157x100.png/ff4444/ffffff	Gull, dusky	83	\N
982	turpis	36	15	mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel	28	DC	40	http://dummyimage.com/185x100.png/5fa2dd/ffffff	Tropical buckeye butterfly	67	\N
983	vel lectus	13	26	condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu	68	DC	94	http://dummyimage.com/150x100.png/ff4444/ffffff	Eastern fox squirrel	62	\N
984	sem duis	40	63	pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam	83	Marvel	10	http://dummyimage.com/174x100.png/dddddd/000000	Gonolek, burchell's	96	\N
985	vestibulum aliquet	78	19	suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet	79	Marvel	28	http://dummyimage.com/153x100.png/dddddd/000000	Crab-eating raccoon	80	\N
986	volutpat	74	31	rutrum at lorem integer tincidunt ante vel ipsum praesent blandit	97	Marvel	31	http://dummyimage.com/243x100.png/dddddd/000000	Python, carpet	89	\N
987	lorem	55	64	ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut	91	DC	19	http://dummyimage.com/149x100.png/ff4444/ffffff	Sloth, pale-throated three-toed	36	\N
988	justo nec	62	84	vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim	22	Marvel	98	http://dummyimage.com/223x100.png/cc0000/ffffff	Little cormorant	90	\N
989	sed	91	99	metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere	12	DC	86	http://dummyimage.com/126x100.png/cc0000/ffffff	Sungazer, yellow-brown	14	\N
990	primis	51	12	et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat	88	DC	76	http://dummyimage.com/182x100.png/dddddd/000000	Spoonbill, european	55	\N
991	at lorem	54	99	sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia	34	DC	93	http://dummyimage.com/166x100.png/ff4444/ffffff	Macaque, rhesus	41	\N
992	sit	2	63	orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit	47	Marvel	30	http://dummyimage.com/212x100.png/dddddd/000000	Bear, american black	36	\N
993	ut suscipit	46	96	molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna	29	Marvel	16	http://dummyimage.com/190x100.png/ff4444/ffffff	Sparrow, rufous-collared	92	\N
994	sit amet	6	54	mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam	78	DC	92	http://dummyimage.com/250x100.png/ff4444/ffffff	Bat, little brown	8	\N
995	nam	63	96	leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a	16	DC	80	http://dummyimage.com/210x100.png/cc0000/ffffff	Otter, cape clawless	5	\N
996	ligula in	76	82	lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat	52	Marvel	51	http://dummyimage.com/201x100.png/dddddd/000000	Grey heron	46	\N
997	blandit	22	80	donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis	23	Marvel	43	http://dummyimage.com/202x100.png/dddddd/000000	Eastern box turtle	13	\N
998	nisi	50	70	congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu	38	Marvel	39	http://dummyimage.com/203x100.png/ff4444/ffffff	Otter, small-clawed	18	\N
999	tincidunt	91	72	aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam	91	Marvel	85	http://dummyimage.com/116x100.png/cc0000/ffffff	Sage grouse	71	\N
1000	imperdiet et	27	69	orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis	13	DC	20	http://dummyimage.com/116x100.png/dddddd/000000	Black-throated cardinal	33	\N
1	mauris	23	100	sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada	35	Marvel	82	http://dummyimage.com/188x100.png/ff4444/ffffff	Flightless cormorant	94	2
49	phasellus in	41	2	cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel	100	DC	75	http://dummyimage.com/149x100.png/dddddd/000000	Little blue penguin	91	2
\.


--
-- Data for Name: user_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_entity (user_id, firstname, lastname, login, money, password) FROM stdin;
1	Théo	Notin	Theo	5000	618dd78bfedd6eb6bf525a2d37ae30ec
2	a	a	a	4461	4124bc0a9335c27f086f24ba207a4912
\.


--
-- Name: card_entity_card_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.card_entity_card_id_seq', 1000, true);


--
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hibernate_sequence', 1, true);


--
-- Name: user_entity_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_entity_user_id_seq', 2, true);


--
-- Name: card_entity card_entity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.card_entity
    ADD CONSTRAINT card_entity_pkey PRIMARY KEY (card_id);


--
-- Name: user_entity user_entity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_entity
    ADD CONSTRAINT user_entity_pkey PRIMARY KEY (user_id);


--
-- Name: card_entity fk5bkjlapt94djacsrc6o6bvghf; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.card_entity
    ADD CONSTRAINT fk5bkjlapt94djacsrc6o6bvghf FOREIGN KEY (user_id) REFERENCES public.user_entity(user_id);


--
-- PostgreSQL database dump complete
--

