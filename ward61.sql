--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

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
-- Name: postgis; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;


--
-- Name: EXTENSION postgis; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis IS 'PostGIS geometry, geography, and raster spatial types and functions';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: ward61user
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO ward61user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: ward61user
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO ward61user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ward61user
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: ward61user
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO ward61user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ward61user
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO ward61user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ward61user
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: ward61user
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO ward61user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: ward61user
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO ward61user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ward61user
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: ward61user
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO ward61user;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: ward61user
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO ward61user;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: ward61user
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO ward61user;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ward61user
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: ward61user
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO ward61user;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ward61user
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: ward61user
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO ward61user;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ward61user
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO ward61user;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ward61user
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: ward61user
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO ward61user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: ward61user
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO ward61user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ward61user
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: ward61user
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO ward61user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: ward61user
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO ward61user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ward61user
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: ward61user
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO ward61user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: ward61user
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO ward61user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ward61user
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: ward61user
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO ward61user;

--
-- Name: employee_details; Type: TABLE; Schema: public; Owner: ward61user
--

CREATE TABLE public.employee_details (
    id integer NOT NULL,
    adminward character varying(50) NOT NULL,
    councillorward character varying(100) NOT NULL,
    region character varying(100) NOT NULL,
    emp_category character varying(100) NOT NULL,
    emp_name character varying(100) NOT NULL,
    emp_mobile integer NOT NULL
);


ALTER TABLE public.employee_details OWNER TO ward61user;

--
-- Name: employee_details_id_seq; Type: SEQUENCE; Schema: public; Owner: ward61user
--

CREATE SEQUENCE public.employee_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employee_details_id_seq OWNER TO ward61user;

--
-- Name: employee_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ward61user
--

ALTER SEQUENCE public.employee_details_id_seq OWNED BY public.employee_details.id;


--
-- Name: osm_buildings_29oct21; Type: TABLE; Schema: public; Owner: ward61user
--

CREATE TABLE public.osm_buildings_29oct21 (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,4326) NOT NULL,
    fid numeric NOT NULL,
    osm_id numeric NOT NULL,
    addrstreet character varying(200),
    building character varying(80),
    name character varying(80),
    num_flats bigint,
    wings bigint,
    region character varying(50)
);


ALTER TABLE public.osm_buildings_29oct21 OWNER TO ward61user;

--
-- Name: osm_buildings_29oct21_id_seq; Type: SEQUENCE; Schema: public; Owner: ward61user
--

CREATE SEQUENCE public.osm_buildings_29oct21_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.osm_buildings_29oct21_id_seq OWNER TO ward61user;

--
-- Name: osm_buildings_29oct21_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ward61user
--

ALTER SEQUENCE public.osm_buildings_29oct21_id_seq OWNED BY public.osm_buildings_29oct21.id;


--
-- Name: ward61_buildings_osm_2nov2021; Type: TABLE; Schema: public; Owner: ward61user
--

CREATE TABLE public.ward61_buildings_osm_2nov2021 (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,4326),
    osm_id numeric,
    name character varying(97),
    addrstreet character varying(91),
    building character varying(80),
    roofmateri character varying(80),
    osmward character varying(100),
    num_flat integer,
    num_shops integer,
    wing character varying(100),
    region character varying(100)
);


ALTER TABLE public.ward61_buildings_osm_2nov2021 OWNER TO ward61user;

--
-- Name: ward61_buildings_osm_2nov2021_id_seq; Type: SEQUENCE; Schema: public; Owner: ward61user
--

CREATE SEQUENCE public.ward61_buildings_osm_2nov2021_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ward61_buildings_osm_2nov2021_id_seq OWNER TO ward61user;

--
-- Name: ward61_buildings_osm_2nov2021_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ward61user
--

ALTER SEQUENCE public.ward61_buildings_osm_2nov2021_id_seq OWNED BY public.ward61_buildings_osm_2nov2021.id;


--
-- Name: ward61_osm_buildings_id_seq; Type: SEQUENCE; Schema: public; Owner: ward61user
--

CREATE SEQUENCE public.ward61_osm_buildings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ward61_osm_buildings_id_seq OWNER TO ward61user;

--
-- Name: waste_segregation_details; Type: TABLE; Schema: public; Owner: ward61user
--

CREATE TABLE public.waste_segregation_details (
    track_id integer NOT NULL,
    region character varying,
    building_cluster character varying,
    category character varying,
    num_wings character varying,
    wing_name character varying,
    building_type character varying,
    population character varying,
    num_households_premises character varying,
    num_shops_premises character varying,
    type_waste_generator character varying,
    waste_segregation character varying,
    wet_waste_before_segregation character varying,
    dry_waste_before_segregation character varying,
    hazardous_waste character varying,
    compostable_waste character varying,
    recyclable_waste character varying,
    rejected_waste character varying,
    composting_type character varying,
    compost_bin_by_mcgm character varying,
    date_notice_issued character varying,
    name_number character varying,
    coll_date date
);


ALTER TABLE public.waste_segregation_details OWNER TO ward61user;

--
-- Name: waste_segregation_details_track_id_seq; Type: SEQUENCE; Schema: public; Owner: ward61user
--

CREATE SEQUENCE public.waste_segregation_details_track_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.waste_segregation_details_track_id_seq OWNER TO ward61user;

--
-- Name: waste_segregation_details_track_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ward61user
--

ALTER SEQUENCE public.waste_segregation_details_track_id_seq OWNED BY public.waste_segregation_details.track_id;


--
-- Name: zerowaste_grievance; Type: TABLE; Schema: public; Owner: ward61user
--

CREATE TABLE public.zerowaste_grievance (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(254) NOT NULL,
    mobile character varying(15),
    grievance text NOT NULL,
    uploaded_at timestamp with time zone NOT NULL
);


ALTER TABLE public.zerowaste_grievance OWNER TO ward61user;

--
-- Name: zerowaste_grievance_id_seq; Type: SEQUENCE; Schema: public; Owner: ward61user
--

CREATE SEQUENCE public.zerowaste_grievance_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.zerowaste_grievance_id_seq OWNER TO ward61user;

--
-- Name: zerowaste_grievance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ward61user
--

ALTER SEQUENCE public.zerowaste_grievance_id_seq OWNED BY public.zerowaste_grievance.id;


--
-- Name: zerowaste_rating; Type: TABLE; Schema: public; Owner: ward61user
--

CREATE TABLE public.zerowaste_rating (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    mobile character varying(10),
    email character varying(100),
    service_swk integer NOT NULL,
    timing_swk integer,
    mobile_swk integer,
    compost_kit_garden integer,
    communicate_swk integer,
    solid_waste_man integer,
    service_workers integer,
    segregation integer,
    recycle_process integer,
    awareness integer,
    role character varying(10) NOT NULL
);


ALTER TABLE public.zerowaste_rating OWNER TO ward61user;

--
-- Name: zerowaste_rating_id_seq; Type: SEQUENCE; Schema: public; Owner: ward61user
--

CREATE SEQUENCE public.zerowaste_rating_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.zerowaste_rating_id_seq OWNER TO ward61user;

--
-- Name: zerowaste_rating_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ward61user
--

ALTER SEQUENCE public.zerowaste_rating_id_seq OWNED BY public.zerowaste_rating.id;


--
-- Name: zerowaste_report; Type: TABLE; Schema: public; Owner: ward61user
--

CREATE TABLE public.zerowaste_report (
    id integer NOT NULL,
    coll_date date NOT NULL,
    recyclable_waste double precision,
    compostable_waste double precision,
    dry_waste_bf double precision,
    hazardous_waste double precision,
    region_name character varying(100) NOT NULL,
    wet_waste_bf double precision,
    rejected_waste double precision,
    building_name character varying(100) NOT NULL
);


ALTER TABLE public.zerowaste_report OWNER TO ward61user;

--
-- Name: zerowaste_report_id_seq; Type: SEQUENCE; Schema: public; Owner: ward61user
--

CREATE SEQUENCE public.zerowaste_report_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.zerowaste_report_id_seq OWNER TO ward61user;

--
-- Name: zerowaste_report_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ward61user
--

ALTER SEQUENCE public.zerowaste_report_id_seq OWNED BY public.zerowaste_report.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: employee_details id; Type: DEFAULT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.employee_details ALTER COLUMN id SET DEFAULT nextval('public.employee_details_id_seq'::regclass);


--
-- Name: osm_buildings_29oct21 id; Type: DEFAULT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.osm_buildings_29oct21 ALTER COLUMN id SET DEFAULT nextval('public.osm_buildings_29oct21_id_seq'::regclass);


--
-- Name: ward61_buildings_osm_2nov2021 id; Type: DEFAULT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.ward61_buildings_osm_2nov2021 ALTER COLUMN id SET DEFAULT nextval('public.ward61_buildings_osm_2nov2021_id_seq'::regclass);


--
-- Name: waste_segregation_details track_id; Type: DEFAULT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.waste_segregation_details ALTER COLUMN track_id SET DEFAULT nextval('public.waste_segregation_details_track_id_seq'::regclass);


--
-- Name: zerowaste_grievance id; Type: DEFAULT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.zerowaste_grievance ALTER COLUMN id SET DEFAULT nextval('public.zerowaste_grievance_id_seq'::regclass);


--
-- Name: zerowaste_rating id; Type: DEFAULT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.zerowaste_rating ALTER COLUMN id SET DEFAULT nextval('public.zerowaste_rating_id_seq'::regclass);


--
-- Name: zerowaste_report id; Type: DEFAULT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.zerowaste_report ALTER COLUMN id SET DEFAULT nextval('public.zerowaste_report_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: ward61user
--

COPY public.auth_group (id, name) FROM stdin;
1	Editor
2	Ward61Manager
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: ward61user
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	1	1
2	1	2
3	1	3
4	1	4
5	1	5
6	1	6
7	1	7
8	1	8
9	1	9
10	1	10
11	1	11
12	1	12
13	1	13
14	1	14
15	1	15
16	1	16
17	1	17
18	1	18
19	1	19
20	1	20
21	1	21
22	1	22
23	1	23
24	1	24
25	1	25
26	1	26
27	1	27
28	1	28
29	1	29
30	1	30
31	1	31
32	1	32
33	1	33
34	1	34
35	1	35
36	1	36
37	1	37
38	1	38
39	1	39
40	1	40
41	1	41
42	1	42
43	1	43
44	1	44
45	1	45
46	1	46
47	1	47
48	1	48
49	1	49
50	1	50
51	1	51
52	1	52
53	1	53
54	1	54
55	1	55
56	1	56
57	1	57
58	1	58
59	1	59
60	1	60
61	1	61
62	1	62
63	1	63
64	1	64
65	1	65
66	1	66
67	1	67
68	1	68
69	1	69
70	1	70
71	1	71
72	1	72
73	1	73
74	1	74
75	1	75
76	1	76
77	1	77
78	1	78
79	1	79
80	1	80
81	1	81
82	1	82
83	1	83
84	1	84
85	1	85
86	1	86
87	1	87
88	1	88
89	1	89
90	1	90
91	1	91
92	1	92
93	2	96
94	2	89
95	2	90
96	2	91
97	2	92
98	2	93
99	2	94
100	2	95
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: ward61user
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add auth group	7	add_authgroup
26	Can change auth group	7	change_authgroup
27	Can delete auth group	7	delete_authgroup
28	Can view auth group	7	view_authgroup
29	Can add auth group permissions	8	add_authgrouppermissions
30	Can change auth group permissions	8	change_authgrouppermissions
31	Can delete auth group permissions	8	delete_authgrouppermissions
32	Can view auth group permissions	8	view_authgrouppermissions
33	Can add auth permission	9	add_authpermission
34	Can change auth permission	9	change_authpermission
35	Can delete auth permission	9	delete_authpermission
36	Can view auth permission	9	view_authpermission
37	Can add auth user	10	add_authuser
38	Can change auth user	10	change_authuser
39	Can delete auth user	10	delete_authuser
40	Can view auth user	10	view_authuser
41	Can add auth user groups	11	add_authusergroups
42	Can change auth user groups	11	change_authusergroups
43	Can delete auth user groups	11	delete_authusergroups
44	Can view auth user groups	11	view_authusergroups
45	Can add auth user user permissions	12	add_authuseruserpermissions
46	Can change auth user user permissions	12	change_authuseruserpermissions
47	Can delete auth user user permissions	12	delete_authuseruserpermissions
48	Can view auth user user permissions	12	view_authuseruserpermissions
49	Can add django admin log	13	add_djangoadminlog
50	Can change django admin log	13	change_djangoadminlog
51	Can delete django admin log	13	delete_djangoadminlog
52	Can view django admin log	13	view_djangoadminlog
53	Can add django content type	14	add_djangocontenttype
54	Can change django content type	14	change_djangocontenttype
55	Can delete django content type	14	delete_djangocontenttype
56	Can view django content type	14	view_djangocontenttype
57	Can add django migrations	15	add_djangomigrations
58	Can change django migrations	15	change_djangomigrations
59	Can delete django migrations	15	delete_djangomigrations
60	Can view django migrations	15	view_djangomigrations
61	Can add django session	16	add_djangosession
62	Can change django session	16	change_djangosession
63	Can delete django session	16	delete_djangosession
64	Can view django session	16	view_djangosession
65	Can add grievance	17	add_grievance
66	Can change grievance	17	change_grievance
67	Can delete grievance	17	delete_grievance
68	Can view grievance	17	view_grievance
69	Can add rating	18	add_rating
70	Can change rating	18	change_rating
71	Can delete rating	18	delete_rating
72	Can view rating	18	view_rating
73	Can add report	19	add_report
74	Can change report	19	change_report
75	Can delete report	19	delete_report
76	Can view report	19	view_report
77	Can add osm buildings29 oct21	20	add_osmbuildings29oct21
78	Can change osm buildings29 oct21	20	change_osmbuildings29oct21
79	Can delete osm buildings29 oct21	20	delete_osmbuildings29oct21
80	Can view osm buildings29 oct21	20	view_osmbuildings29oct21
81	Can add ward61 osm buildings	21	add_ward61osmbuildings
82	Can change ward61 osm buildings	21	change_ward61osmbuildings
83	Can delete ward61 osm buildings	21	delete_ward61osmbuildings
84	Can view ward61 osm buildings	21	view_ward61osmbuildings
85	Can add ward61 buildings osm2 nov2021	22	add_ward61buildingsosm2nov2021
86	Can change ward61 buildings osm2 nov2021	22	change_ward61buildingsosm2nov2021
87	Can delete ward61 buildings osm2 nov2021	22	delete_ward61buildingsosm2nov2021
88	Can view ward61 buildings osm2 nov2021	22	view_ward61buildingsosm2nov2021
89	Can add waste segregation details	23	add_wastesegregationdetails
90	Can change waste segregation details	23	change_wastesegregationdetails
91	Can delete waste segregation details	23	delete_wastesegregationdetails
92	Can view waste segregation details	23	view_wastesegregationdetails
93	Can add employee details	24	add_employeedetails
94	Can change employee details	24	change_employeedetails
95	Can delete employee details	24	delete_employeedetails
96	Can view employee details	24	view_employeedetails
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: ward61user
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
3	pbkdf2_sha256$260000$QDpVf19DDpN9dGXkCZMQXF$Eu85hOe7AyTk/ajT63FtYjVQLkwOXbRTUDdwZiiXPYM=	2021-12-03 11:46:23.893404+01	f	test			test@gmail.com	f	t	2021-12-03 11:46:23.665015+01
6	pbkdf2_sha256$260000$g6f145jobwRIsGII6tygwO$oN3D4AbmAQW1dEwbEASRF4C6NWtHzQfZdT+8K4BKSeY=	2021-12-08 07:21:04.892344+01	f	jitendra			jituviju@gmail.com	t	t	2021-12-03 13:58:10+01
2	pbkdf2_sha256$260000$Dl4pmtaEkSByvVTVcm9l9q$eoahmCiMFPmminkSJoWCcUGy/ggmsnWailcUVLd3Li0=	2021-11-12 16:31:09+01	t	mumbai61admin			monikapatira@gmail.com	t	t	2021-11-12 16:30:29+01
1	pbkdf2_sha256$260000$JGBwDxKHi1YB4FkQdJXA0K$dfV+lk8vUW/NYJMPtwK9d8DbQ1XcG6lW3nXpyQ3M/no=	2021-12-08 12:17:07.768028+01	t	admin			monikapatira@gmail.com	t	t	2021-10-29 21:35:34+02
5	pbkdf2_sha256$260000$HPTfbWzIdkFd4TeiyBUL6l$srGFW+Y17Ig7lNABZ4AWsPMD4AOzPSBenEnrcgWYAX4=	2021-12-03 13:35:40.853726+01	f	user			user@gmail.com	f	t	2021-12-03 13:35:40.650381+01
7	pbkdf2_sha256$260000$BgcmWDDA8WAxQWirjEal3M$shku90q3oyYwo0uN8G/6wvLI+tbdbLwN8pFr9qCbl0E=	2021-12-04 08:20:27.51301+01	f	RenukaNaik			renuka@gmail.com	f	t	2021-12-04 08:19:58.220739+01
8	pbkdf2_sha256$260000$UvriXCOH693NoPbLwYYr0d$ep6zWWgXORC0+W5Tq2+wSFCkgqwRB3QdWcpWdlMI1Xg=	2021-12-04 10:55:09+01	f	reena61			reenaswmjo@gmail.com	t	t	2021-12-04 10:12:03+01
4	pbkdf2_sha256$260000$Pwv43f6rVojibGRDRjTLAe$gNFbTOIReG8cPgbdi74plxvvz5Qv1J8bZdxjfQIh288=	2021-12-03 12:00:56+01	t	Monika			monikapatira@gmail.com	t	t	2021-12-03 12:00:32+01
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: ward61user
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
1	2	1
2	1	1
3	4	1
4	8	1
5	8	2
6	6	1
7	6	2
8	4	2
9	1	2
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: ward61user
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
1	1	1
2	1	2
3	1	3
4	1	4
5	1	5
6	1	6
7	1	7
8	1	8
9	1	9
10	1	10
11	1	11
12	1	12
13	1	13
14	1	14
15	1	15
16	1	16
17	1	17
18	1	18
19	1	19
20	1	20
21	1	21
22	1	22
23	1	23
24	1	24
25	1	25
26	1	26
27	1	27
28	1	28
29	1	29
30	1	30
31	1	31
32	1	32
33	1	33
34	1	34
35	1	35
36	1	36
37	1	37
38	1	38
39	1	39
40	1	40
41	1	41
42	1	42
43	1	43
44	1	44
45	1	45
46	1	46
47	1	47
48	1	48
49	1	49
50	1	50
51	1	51
52	1	52
53	1	53
54	1	54
55	1	55
56	1	56
57	1	57
58	1	58
59	1	59
60	1	60
61	1	61
62	1	62
63	1	63
64	1	64
65	1	65
66	1	66
67	1	67
68	1	68
69	1	69
70	1	70
71	1	71
72	1	72
73	1	73
74	1	74
75	1	75
76	1	76
77	1	77
78	1	78
79	1	79
80	1	80
81	1	81
82	1	82
83	1	83
84	1	84
85	1	85
86	1	86
87	1	87
88	1	88
89	1	89
90	1	90
91	1	91
92	1	92
93	8	89
94	8	90
95	8	91
96	8	92
97	8	96
98	8	93
99	8	94
100	8	95
101	6	96
102	6	89
103	6	90
104	6	91
105	6	92
106	6	93
107	6	94
108	6	95
109	4	1
110	4	2
111	4	3
112	4	4
113	4	5
114	4	6
115	4	7
116	4	8
117	4	9
118	4	10
119	4	11
120	4	12
121	4	13
122	4	14
123	4	15
124	4	16
125	4	17
126	4	18
127	4	19
128	4	20
129	4	21
130	4	22
131	4	23
132	4	24
133	4	25
134	4	26
135	4	27
136	4	28
137	4	29
138	4	30
139	4	31
140	4	32
141	4	33
142	4	34
143	4	35
144	4	36
145	4	37
146	4	38
147	4	39
148	4	40
149	4	41
150	4	42
151	4	43
152	4	44
153	4	45
154	4	46
155	4	47
156	4	48
157	4	49
158	4	50
159	4	51
160	4	52
161	4	53
162	4	54
163	4	55
164	4	56
165	4	57
166	4	58
167	4	59
168	4	60
169	4	61
170	4	62
171	4	63
172	4	64
173	4	65
174	4	66
175	4	67
176	4	68
177	4	69
178	4	70
179	4	71
180	4	72
181	4	73
182	4	74
183	4	75
184	4	76
185	4	77
186	4	78
187	4	79
188	4	80
189	4	81
190	4	82
191	4	83
192	4	84
193	4	85
194	4	86
195	4	87
196	4	88
197	4	89
198	4	90
199	4	91
200	4	92
201	4	93
202	4	94
203	4	95
204	4	96
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: ward61user
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-12-03 11:58:13.866841+01	1	Editor	1	[{"added": {}}]	3	1
2	2021-12-03 11:59:19.297767+01	1	admin	2	[{"changed": {"fields": ["User permissions"]}}]	4	1
3	2021-12-03 11:59:30.280944+01	2	mumbai61admin	2	[{"changed": {"fields": ["Groups"]}}]	4	1
4	2021-12-03 11:59:42.383893+01	1	admin	2	[{"changed": {"fields": ["Groups"]}}]	4	1
5	2021-12-03 12:02:10.571199+01	4	Monika	2	[{"changed": {"fields": ["Staff status", "Superuser status", "Groups"]}}]	4	1
6	2021-12-04 10:13:54.427078+01	8	reena61	2	[{"changed": {"fields": ["Staff status", "Groups", "User permissions"]}}]	4	1
7	2021-12-06 10:55:54.306865+01	2	Ward61Manager	1	[{"added": {}}]	3	1
8	2021-12-06 10:56:32.328652+01	8	reena61	2	[{"changed": {"fields": ["Groups", "User permissions"]}}]	4	1
9	2021-12-06 10:57:55.778828+01	6	jitendra	2	[{"changed": {"fields": ["Staff status", "Groups", "User permissions"]}}]	4	1
10	2021-12-06 10:58:10.88294+01	4	Monika	2	[{"changed": {"fields": ["Groups", "User permissions"]}}]	4	1
11	2021-12-06 10:59:20.706629+01	1	admin	2	[{"changed": {"fields": ["Groups"]}}]	4	1
12	2021-12-07 10:18:01.390479+01	1	TEst	3		24	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: ward61user
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	zerowaste	authgroup
8	zerowaste	authgrouppermissions
9	zerowaste	authpermission
10	zerowaste	authuser
11	zerowaste	authusergroups
12	zerowaste	authuseruserpermissions
13	zerowaste	djangoadminlog
14	zerowaste	djangocontenttype
15	zerowaste	djangomigrations
16	zerowaste	djangosession
17	zerowaste	grievance
18	zerowaste	rating
19	zerowaste	report
20	zerowaste	osmbuildings29oct21
21	map	ward61osmbuildings
22	map	ward61buildingsosm2nov2021
23	zerowaste	wastesegregationdetails
24	zerowaste	employeedetails
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: ward61user
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-10-28 14:41:29.187004+02
2	auth	0001_initial	2021-10-28 14:41:29.245008+02
3	admin	0001_initial	2021-10-28 14:41:29.344835+02
4	admin	0002_logentry_remove_auto_add	2021-10-28 14:41:29.367415+02
5	admin	0003_logentry_add_action_flag_choices	2021-10-28 14:41:29.387662+02
6	contenttypes	0002_remove_content_type_name	2021-10-28 14:41:29.422811+02
7	auth	0002_alter_permission_name_max_length	2021-10-28 14:41:29.444509+02
8	auth	0003_alter_user_email_max_length	2021-10-28 14:41:29.457725+02
9	auth	0004_alter_user_username_opts	2021-10-28 14:41:29.468494+02
10	auth	0005_alter_user_last_login_null	2021-10-28 14:41:29.480816+02
11	auth	0006_require_contenttypes_0002	2021-10-28 14:41:29.484723+02
12	auth	0007_alter_validators_add_error_messages	2021-10-28 14:41:29.495972+02
13	auth	0008_alter_user_username_max_length	2021-10-28 14:41:29.513516+02
14	auth	0009_alter_user_last_name_max_length	2021-10-28 14:41:29.529319+02
15	auth	0010_alter_group_name_max_length	2021-10-28 14:41:29.551691+02
16	auth	0011_update_proxy_permissions	2021-10-28 14:41:29.566885+02
17	auth	0012_alter_user_first_name_max_length	2021-10-28 14:41:29.578507+02
18	sessions	0001_initial	2021-10-28 14:41:29.59204+02
19	zerowaste	0001_initial	2021-10-28 14:41:29.651214+02
20	zerowaste	0002_auto_20211028_1213	2021-10-28 14:41:29.699574+02
21	zerowaste	0003_report_rejected_waste	2021-10-28 14:41:29.714971+02
22	zerowaste	0004_auto_20211029_1906	2021-10-29 21:11:12.851097+02
23	map	0001_initial	2021-11-02 09:26:31.370488+01
24	map	0002_ward61buildingsosm2nov2021	2021-11-03 09:24:25.247814+01
25	map	0002_buildings2nov	2021-11-10 12:27:35.307238+01
26	map	0003_auto_20211103_0757	2021-11-10 12:27:35.321508+01
27	zerowaste	0002_delete_osmbuildings29oct21	2021-11-10 12:27:35.329269+01
28	zerowaste	0002_wastesegregationdetails	2021-11-18 07:38:07.533995+01
29	zerowaste	0002_employeedetails	2021-12-06 10:54:24.653654+01
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: ward61user
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
p8v76ayiegbin726ddxv1i4obtet0ij4	.eJxVjEEOwiAQRe_C2hAYCgWX7j0DAWZGqoYmpV0Z765NutDtf-_9l4hpW2vcOi1xQnEWIE6_W07lQW0HeE_tNssyt3WZstwVedAurzPS83K4fwc19fqthwSKwabAozaBITjyOLB2xStvMTATjoQlGwSjAA0hOG80ZCpsrRHvD-npOD8:1mlYWD:MTjO0sIfx1ywq882EEEh4QW6Tv0ImnXVLRWarinOcjw	2021-11-26 16:31:09.47293+01
cpd4t1t959xhozy6solq7oh9nam0puqk	.eJxVjDsOwjAQBe_iGln-m1DS5wzWeneNA8iR4qRC3B0ipYD2zcx7iQTbWtPWeUkTiYvw4vS7ZcAHtx3QHdptlji3dZmy3BV50C7Hmfh5Pdy_gwq9fmuHvkQTtQONzpD2OCgdSygUIBT2Sg3ILqC1ztuc7Rk0G81QIiliZ8T7A9twN_M:1mt7mu:WQsBZfcVT9TWw0R7G7Cv6LAfj-jszdE638OQGSkgrBA	2021-12-17 13:35:40.856936+01
r350no0zd20zhgtvgyo55zdqj5fz37zu	.eJxVjMEOwiAQRP-FsyHQIhSP3v0GsssuUjWQlPZk_HdL0oOeZjJvZt4iwLbmsDVewkziIrQ4_WYI8cmlA3pAuVcZa1mXGWWvyIM2eavEr-vR_TvI0PK-HpWn5KOdYBg4AiM6r9AkRJy0Pe-qvTNondWRlEFloRtMTvNIHsXnCwdROOI:1mtPSq:4cNZk3Fp-K-PUQDU9Dx5TAZ75dSU5oiwYKDTGSlyinQ	2021-12-18 08:28:08.99536+01
xywd9mpz6s0260s3n4nwkzjoyfhe0sv4	.eJxVjcsOgjAURP-la9Nc2nKpLt37DeQ-WkENTSisjP8uJCx0O-fMzNv0tC5Dv9Y096Oai4nm9JsxyTNNO9AHTfdipUzLPLLdFXvQam9F0-t6uH8DA9Vha0tMXhk7yblRpz5zasgDiCOOgDG0GUPSFlrJkIld6NAhSoDtA-FsPl8QsTiC:1mtRl7:wG3ypGWlef0cImTkM_t7LqYZkBQHUmk5-xpu0D3fvos	2021-12-18 10:55:09.620273+01
m7s4htyoglboujszr4pje3kauz1f7j13	.eJxVjDsOwjAQBe_iGlm7_gRMSc8Zol17jQPIluKkQtwdIqWA9s3Me6mR1qWMa5d5nJI6q0Edfjem-JC6gXSnems6trrME-tN0Tvt-tqSPC-7-3dQqJdvzdmiY8sGJFqfRQJmgaPJSVBcFIMGT0YEggeIPASHRBAwWPIZ2Kn3B_z5OBU:1muqK8:B52VrEZRdWnAup-V3hT3R_oVs45PzECgbTFdEeoEz78	2021-12-22 07:21:04.91546+01
z01hy6nfq88rh73em9yf88j6b3yjmnfz	.eJxVjMEOwiAQRP-FsyHQIhSP3v0GsssuUjWQlPZk_HdL0oOeZjJvZt4iwLbmsDVewkziIrQ4_WYI8cmlA3pAuVcZa1mXGWWvyIM2eavEr-vR_TvI0PK-HpWn5KOdYBg4AiM6r9AkRJy0Pe-qvTNondWRlEFloRtMTvNIHsXnCwdROOI:1muuwd:zbibirCbLFio23FMZKD9yYZkOCf2OAk8s9IWFLWSfaA	2021-12-22 12:17:07.782522+01
\.


--
-- Data for Name: employee_details; Type: TABLE DATA; Schema: public; Owner: ward61user
--

COPY public.employee_details (id, adminward, councillorward, region, emp_category, emp_name, emp_mobile) FROM stdin;
\.


--
-- Data for Name: osm_buildings_29oct21; Type: TABLE DATA; Schema: public; Owner: ward61user
--

COPY public.osm_buildings_29oct21 (id, geom, fid, osm_id, addrstreet, building, name, num_flats, wings, region) FROM stdin;
1	0106000020E610000001000000010300000001000000050000002268B48333355240FF4E40346B243340E95E457433355240C814CB8976243340F12900C633355240B2E0D97976243340D49D279E333552403A03232F6B2433402268B48333355240FF4E40346B243340	1	120514823	\N	yes	Sangam Apartments	\N	\N	\N
2	0106000020E61000000100000001030000000100000005000000D508FD4C3D3552403AA3F7D73C2433408690F3FE3F35524052CB20883D243340264003A040355240ABD3DC651A243340AB58A1ED3D35524094ABB3B519243340D508FD4C3D3552403AA3F7D73C243340	2	193632127	\N	office	Morya Estate	\N	\N	\N
3	0106000020E610000001000000010300000001000000050000003555415681355240B4FBFAC67C2533405CA8A1B28635524037EE83E27D2533405CA8A1B286355240A64CC521762533404DC52176813552403B6EF8DD742533403555415681355240B4FBFAC67C253340	3	202061691	\N	commercial	Transit Camp, Behram Baug	\N	\N	\N
6	0106000020E61000000100000001030000000100000005000000AE437C2F583552409A86FF97012433408488D66954355240FE58401D032433408E68F118543552406182BF0413243340382D78D157355240967BDC1214243340AE437C2F583552409A86FF9701243340	6	202660312	\N	office	Shalimar Morya Park	\N	\N	\N
7	0106000020E610000001000000010300000001000000070000006743FE9941355240AB7246393D243340A06010A2463552408D2551D43E243340BE03F2DB4635524062B197B7342433405AA0DD21453552408C78FC28342433408FE1B19F453552403263C0481E243340BA27B45142355240FD69A33A1D2433406743FE9941355240AB7246393D243340	7	206963600	\N	office	\N	\N	\N	\N
8	0106000020E6100000010000000103000000010000000E00000054C6A6A54F35524082081C090524334029378C314D355240D9714C060624334036BC3D674C355240B35A65550624334062D45A3D4C3552407C7A11120E24334005F5D2B947355240A0281AB50C2433402FE6A4D247355240A7DADA1F082433404A6D26BA44355240B3C2B35509243340123933B04435524089EC832C0B243340AC18B10E423552401A42EB600A2433406F0B2FBF3C355240D7B874740C2433408E452E933C3552409C38149914243340E3BD0FAC4F355240B1D8CB5B1A243340BFE4901E50355240986A662D0524334054C6A6A54F35524082081C0905243340	8	206963603	\N	office	Crystal Plaza	\N	\N	\N
9	0106000020E610000001000000010300000001000000050000001CEC4D0C4935524014984EEB362433400D5762F94E35524001F9122A38243340FB8CB04D4F355240A72B8EB9212433400A229C6049355240BACAC97A202433401CEC4D0C4935524014984EEB36243340	9	206963606	\N	office	\N	\N	\N	\N
10	0106000020E61000000100000001030000000100000005000000C9642772773552400E4350DAC0243340B680D07A7835524058A8DA13C9243340F74F81DD7A3552404EDEB6A5C42433407446EFAF79355240B77FC05EBC243340C9642772773552400E4350DAC0243340	10	227895886	\N	residential	\N	\N	\N	\N
11	0106000020E6100000010000000103000000010000000D000000F33977BB5E355240E076B2E5A625334087C503256035524038B64368A9253340AC730CC85E3552400F400F5AB4253340DB087A5E603552403757282DB72533402273C009603552402484A2D4B9253340B6E74361613552408ED20039BC2533402697B5036435524045E0FE12A725334003B0011162355240291B7B9BA3253340B657D5816235524043DF8211A0253340C8DF073161355240268A90BA9D2533408763A76961355240B6EE8BF09B2533400A8D1656603552402EE3A6069A253340F33977BB5E355240E076B2E5A6253340	11	227895887	\N	apartments	Evershine Greens	\N	\N	\N
12	0106000020E6100000010000000103000000010000000600000063E06F6A563552409016C2C5E52533408C5F1D6C563552402050EC57F0253340338AE59656355240A1C6736CF32533409916500361355240D73B9281F225334069A9BC1D6135524038FF0AF4E425334063E06F6A563552409016C2C5E5253340	12	227895889	\N	apartments	\N	\N	\N	\N
13	0106000020E6100000010000000103000000010000000B00000077F3F9CD6935524072474959D0253340CFDC9E7B6A355240951D2CADD025334017A3096F6A35524086432564D62533405EF00E956B355240C22DC48FD6253340A5CD829A6B3552407640C868D3253340693C6C7D6C3552401D3D7E6FD32533408195438B6C355240FB5E9E29CF25334034D021156B3552409CFA40F2CE2533408EEA74206B3552402C5F3C28CD253340BEE776E569355240E46ABF10CD25334077F3F9CD6935524072474959D0253340	13	227895891	\N	residential	\N	\N	\N	\N
14	0106000020E610000001000000010300000001000000050000009365D2F07735524094E81B87B0243340E52C47237A355240C394922FB2243340C17E3E807B3552408F9E6C14A3243340094E7D207935524008C7D1C19F2433409365D2F07735524094E81B87B0243340	14	227895892	\N	residential	\N	\N	\N	\N
15	0106000020E6100000010000000103000000010000000D0000001D3D7E6F53355240AAB8718BF925334035AD5E8F53355240329985D10726334081446EE154355240853BBC8C07263340F2CEA10C55355240D4409880042633409E85F35F56355240D44098800426334003D8367B56355240CDD3145C07263340AF8E88CE573552404A511D610726334080DCD9B257355240FDB6CC8EF92533405DC47762563552406F72AE17F92533403F219628563552407457C04EFB25334093AF5F0B55355240EBCFD95DFB25334087495DD754355240FD5AA846F92533401D3D7E6F53355240AAB8718BF9253340	15	227895894	\N	residential	\N	\N	\N	\N
16	0106000020E6100000010000000103000000010000000B0000005432A59A7E355240AA381FE8B224334012B00C608035524056D22FB6B5243340B8F1DD9C8035524045E33F93B32433404D2146BE81355240DFFDF15EB524334010D54AD7823552403D6D437BAB24334053FE5A0380355240E6A9B3FFA624334012B3A8997F355240DE509DB3AA243340B279C14C803552408AC2D3D0AB2433405FDA26CB7F355240FFFA3262B0243340F59C99057F3552408F177728AF2433405432A59A7E355240AA381FE8B2243340	16	227895895	\N	residential	\N	\N	\N	\N
17	0106000020E610000001000000010300000001000000090000002AB80EC468355240E22EB1E88C243340ED7CE47B6B355240A09B470F8D243340643A19C16B355240F64CE5A37B243340956B651D69355240EB76514F7A24334077F695076935524059E6087481243340B8CB7EDD69355240A63B99C98124334011E6D1E8693552400F6A1A6F86243340DCECB4DA68355240FDFE2845862433402AB80EC468355240E22EB1E88C243340	17	227895896	\N	residential	\N	\N	\N	\N
18	0106000020E610000001000000010300000001000000110000006B285A5E5E35524003ED0E29062633403A2B58995F355240741882D2062633402EC2B92B603552407FEE152708263340C8B1F50C613552403D6F19260926334022CC4818613552406842EE7D0526334057DF0A726135524003ED0E29062633403F2773E26135524003ED0E2906263340573893806235524057D7FC5305263340A4761AC462355240F01989D00826334044B060D16335524003ED0E2906263340C674D7C86435524003ED0E2906263340144031B264355240783CD285FD253340685E6974623552408AA7C3AFFD2533407B59C97D61355240A950DD5CFC2533406348A9DF603552408AA7C3AFFD253340C442AD695E355240D7FC5305FE2533406B285A5E5E35524003ED0E2906263340	18	227895898	\N	residential	\N	\N	\N	\N
19	0106000020E6100000010000000103000000010000000500000009E643AB6E35524049DCBEA2B6243340F1A0D9756F355240E5F7EC6FBF243340D85537CD71355240A6B8AAECBB243340F09AA1027135524057F20C75B324334009E643AB6E35524049DCBEA2B6243340	19	227895899	\N	residential	\N	\N	\N	\N
20	0106000020E6100000010000000103000000010000000D0000009434DA055E355240608A17B089253340FF40B96D5F35524059C16F438C253340A09740005F3552400A18B8978F253340BDD8C57E6035524014BA015592253340EC9B453962355240E6F0A4E084253340C367EBE06035524088AC24688225334015771783623552409485AFAF752533403496FAC360355240FB9E477B722533407BCF92116135524061CC4C1F70253340D53439C65F35524075FBF6BF6D2533406BFA473A5E355240CE774BCD79253340935CB4B65F355240851B3A877C2533409434DA055E355240608A17B089253340	20	227895902	\N	apartments	Evershine Greens	\N	\N	\N
21	0106000020E6100000010000000103000000010000000800000001B562C9663552402504ABEAE52533400C8BF61D6835524067F3380CE625334041B225506935524013F5DD08E62533400C299A6269355240EB0896D9D625334007E863E36635524063258BA0D6253340CB2BD7DB66355240A230838CDB253340C50FDFD36635524058B49487E025334001B562C9663552402504ABEAE5253340	21	227895903	\N	residential	\N	\N	\N	\N
22	0106000020E61000000100000001030000000100000005000000746B88E06E3552400DD7B49C952433406D18AA0771355240CB57B89B96243340F069F3A47135524079B878D3882433407423D1706F35524026A6B0F787243340746B88E06E3552400DD7B49C95243340	22	227895904	\N	residential	\N	\N	\N	\N
23	0106000020E61000000100000001030000000100000005000000A26AAADD653552403F98CA91842533400624AB6C693552400F84BFBA85253340B8CB7EDD6935524039E686F079253340D87D6C37663552407B6583F178253340A26AAADD653552403F98CA9184253340	23	227895905	\N	residential	\N	\N	\N	\N
24	0106000020E6100000010000000103000000010000000B0000004828C7AE7E355240D10D034CCF2433405F4D54258035524025688297CF243340D0A9752C80355240EA5509BBCD24334005FFB6828135524097B3D2FFCD243340F90BE2A881355240A26C8088C3243340CBD8D0CD7E35524025372FF3C2243340E91F8EBF7E355240FFC46DD9C624334012407B3F7F355240713898F2C6243340A7E8482E7F3552401551B8C3CB243340952133BC7E355240CD5C3BACCB2433404828C7AE7E355240D10D034CCF243340	24	227895908	\N	residential	\N	\N	\N	\N
25	0106000020E610000001000000010300000001000000050000002AAD1ADF72355240EC8C4A45BE24334018B2BAD573355240C47EAA65C62433400B88FF2A76355240D2246717C2243340D68EE21C75355240E21E4B1FBA2433402AAD1ADF72355240EC8C4A45BE243340	25	227895909	\N	residential	\N	\N	\N	\N
26	0106000020E6100000010000000103000000010000000B00000095BFD6008035524043C5DDC5A02433407689EAAD81355240B9C1F5CDA224334076B7FCD181355240E318C91EA12433407B88A1308335524012C53FC7A224334093DEDC04843552400B2769FE98243340B8A9262D81355240965E9B8D95243340176D44E680355240D03CCAD2982433408881AE7D81355240B7E0568B9924334023EA4F2C81355240D301FF4A9D243340A76FE360803552400F7C0C569C24334095BFD6008035524043C5DDC5A0243340	26	227895910	\N	residential	\N	\N	\N	\N
27	0106000020E61000000100000001030000000100000005000000D9EE79596E3552406CBD95DBAC243340C691BD9470355240122ADD02AE2433405B09DD2571355240D2E1218C9F2433405C40C3F66E355240A9F2E2699E243340D9EE79596E3552406CBD95DBAC243340	27	227895911	\N	residential	\N	\N	\N	\N
28	0106000020E61000000100000001030000000100000011000000B8B7B64B763552400C3ECDC98B24334052AA8E66763552409521D8028C2433408E4F125C76355240957DFC4A8C243340323784CF7B3552407D2A02F7972433405B9F28BF7B355240E8F46162982433406D663E317C355240AC7A545799243340C0304F9D7D355240F836FDD98F2433408B7C4DC57C3552400B1EF00A8E243340EA8486B47C3552401CE5057D8E243340A3D8C00C7C3552404798FD158D243340CD295CEA7B35524094A5D6FB8D243340736EC9607B355240EE388FD48C243340C1221A387B355240763007E68D2433401630815B773552400951BEA0852433402E443D337735524068C988B086243340C9F1F91777355240B566D07586243340B8B7B64B763552400C3ECDC98B243340	28	227895912	\N	residential	\N	\N	\N	\N
29	0106000020E6100000010000000103000000010000000D000000BD71529877355240845B881FAD253340DF556A517A355240E31B0A9FAD25334044BFB67E7A3552408DC98745B1253340E4C4B2F47C3552408DC98745B1253340E4C4B2F47C355240B207FFC7AE253340776110FD7F355240A19C0D9EAE2533401E47BDF17F355240D3212697B5253340638BEE6A83355240D3212697B52533400A719B5F83355240C190D5AD9E253340B45483D57D35524085A636829E2533405A3A30CA7D355240ADBD4F55A1253340B19586D0773552406068BFFFA0253340BD71529877355240845B881FAD253340	29	227895914	\N	yes	\N	\N	\N	\N
30	0106000020E61000000100000001030000000100000014000000902A2F9E66355240E5C06158B42533400613DACD673552403216F2ADB4253340602D2DD967355240BAED8C00B82533401C74AECD6B355240BAED8C00B8253340B77D8FFA6B355240DF2B0483B52533405DBCC4FD6C35524091D6732DB5253340C225112B6D355240F2E1A30FA72533409908C0E46B3552403F373465A72533401C74AECD6B35524022F6AEE6A5253340A68B039E6A355240108BBDBCA52533404095E4CA6A3552408B24308CAA2533402FFCE07C6A3552402467BC08AE2533401805662A693552402467BC08AE253340E2F1A3D0683552401AF9BCE2A925334030BDFDB96835524022F6AEE6A525334030BDFDB968355240BDD41929A5253340ADCA749E67355240BDD41929A5253340ADCA749E6735524057A71485A7253340E94482A96635524057A71485A7253340902A2F9E66355240E5C06158B4253340	30	227895915	\N	school	Raigad Military School	\N	\N	\N
31	0106000020E61000000100000001030000000100000007000000F2D47EC660355240E658DE550F263340C96CDAD6603552407DFF8B0C17263340B0F3250A63355240834C3272162633403E7D5FB76335524018DEF64E162633408571DCCE633552408CEDFF2D12263340924DA896633552400B630B410E263340F2D47EC660355240E658DE550F263340	31	227895916	\N	residential	\N	\N	\N	\N
32	0106000020E6100000010000000103000000010000000F0000005C829DAC62355240A4D5DA45E22533405C829DAC62355240AFAB6E9AE3253340B69CF0B76235524097B4988EEF253340682A1FDD63355240A91F8AB8EF253340D2C3D0EA64355240D933958FEE253340D2D73DC3653552402C465D6BEF253340E384AEE966355240D3E6EE29EF253340C50FDFD366355240006A0F20E825334001B562C9663552402504ABEAE5253340DD239BAB66355240A431FF8DE22533409604A8A965355240A4D5DA45E225334091D442C964355240C11660C4E3253340C14472E863355240B640CC6FE22533401B62612D63355240FDD8243FE22533405C829DAC62355240A4D5DA45E2253340	32	227895917	\N	residential	\N	\N	\N	\N
33	0106000020E6100000010000000103000000010000001D000000CDD4DAEA283552400E3CAD9113263340C7E6F40629355240B64D4C721B26334020CDFD7A2A355240ABE7493E1B2633407324E18C2B355240480FE8F120263340193268322D355240FD5536621C26334049A297512C355240E881340818263340966A55012D355240AF67BE391226334049A297512C3552404BD6975B10263340ADC32C0F2D355240114020860C2633407706578A2E355240774D486B0C26334059BF99982E355240A2C4F87A0826334065DDE45C2F355240202E94A707263340A03AB1E22F3552403DB7D095082633406BCBCA402F355240E393A9DD0A2633403B5B9B2130355240935A83520F263340B1F8F2A7323552404FDA0A50092633402DD21FF5323552401E75CF1500263340A03AB1E22F3552405025B9B2FA253340D04B20802F3552401E75CF15002633407D53FDEF2D355240E88F1FE0FF253340E8C138132E355240E05EE34405263340966A55012D355240EBC4E57805263340EA0F28F62B355240B867A730002633400874266D2A35524028E3CE3B0426334085EE92382B3552403DB7D095082633407FBE2D582A3552409A93BCDF0D2633407383A10E2B355240A47DBD0C1026334014F131B32A355240856C0F3114263340CDD4DAEA283552400E3CAD9113263340	33	249860328	\N	yes	\N	\N	\N	\N
34	0106000020E610000001000000010300000001000000220000002BD252711E35524070855ADBE3253340EFDA5CD51E35524002334601F7253340AF22484A1F355240F90505EFF52533402B9DB415203552409E66DC2FFA253340AB612B0C1F3552407A5FDF4D01263340EFC0690C1F355240980C7259012633408A8EE4F21F35524034D93F4F03263340AF22484A1F355240E49F19C4072633408409052F1F3552402A0442C5072633404466B8641F355240DEB909BC1126334084A0FE0E203552409C4C817115263340F53E9F1221355240FC2CE0AF13263340CBBC55D721355240ED3E6C8E18263340070951BE20355240BA1281EA1F2633403CBAB65C22355240711294EC2226334083948E28233552409E0546031D263340C3633F8B2535524003136EE81C263340C951256F25355240A109B9F71526334071CADC7C23355240363F598C15263340C56FAF71223552404C66063B0F26334054D10E6E21355240BC5D2F4D11263340786572C5203552408E2DBAAB0D263340E962D34A213552400C1357DF0A263340C5CE6FF3213552406385B6F704263340669BC0192135524099E667340326334048F542A6213552408F78680EFF253340F491EFAD233552400DE2033BFE253340FA7FD591233552408159A148F725334054724EEC21355240E766C92DF72533407E5358A920355240F6D03E56F02533401F20A9CF1F35524036A0EFB8F22533402C5B35191F35524021CCED5EEE2533408A8EE4F21F35524096438B6CE72533402BD252711E35524070855ADBE3253340	34	249860330	\N	yes	\N	\N	\N	\N
35	0106000020E610000001000000010300000001000000050000005D0BC4FC26355240B18C68965F253340A45B655C27355240901C9F7F712533407F901B342A355240910832A77025334038407AD429355240B278FBBD5E2533405D0BC4FC26355240B18C68965F253340	35	249860331	\N	apartments	\N	\N	\N	\N
36	0106000020E610000001000000010300000001000000060000005DBA211033355240FCD0649EA72633405B27A81A36355240169AB9B39D26334026C1C01836355240B5E8537D9D2633407CA3B15131355240BA151D249F2633407B16DFAB313552408C16FB26A82633405DBA211033355240FCD0649EA7263340	36	249860335	\N	yes	\N	\N	\N	\N
37	0106000020E6100000010000000103000000010000000600000073BA70113035524073B2E413DC243340E043937C2E355240ADE2A54DE22433400C981B672E3552405D18E945ED243340F81D1E1D3235524075E4EDADED243340046D173F32355240188FF74FDC24334073BA70113035524073B2E413DC243340	37	249860338	\N	yes	\N	\N	\N	\N
38	0106000020E610000001000000010300000001000000050000006478EC67313552408F3E41BD742633408765D8CD31355240173F32C280263340794CEEC135355240B3AD0BE47E263340565F025C353552402AAD1ADF722633406478EC67313552408F3E41BD74263340	38	249860339	\N	apartments	Sanskar	\N	\N	\N
39	0106000020E610000001000000010300000001000000050000006E5974A1283552405E4887873026334033F90BE2283552408ED59C723B2633405AF047F62D35524036AA78C83926334060B01BB62D355240DC9DB5DB2E2633406E5974A1283552405E48878730263340	39	249860342	\N	yes	\N	\N	\N	\N
40	0106000020E6100000010000000103000000010000001D000000D162844B2235524055450257C3253340B31BC7592235524018F3CEFCC5253340D1A79F8122355240F47810F1C5253340D1BEA893223552407B50AB43C9253340418EF7F422355240B7DE2527C9253340F4C29D0B23355240BB473657CD253340B993E3A9223552407FB9BB73CD253340890F47B22235524013735A01CF2533406B836E8A2235524037ED180DCF25334083DC45982235524006A5C39ED1253340183D5C17233552407640C868D3253340CA575DE2233552409A5E622CD32533401D56B8E523355240E10A28D4D3253340F9799D1E25355240C3393476D3253340E798E26025355240F4F11A05D22533403A80345225355240EF54C03DCF253340881D7C1725355240BACB3450CF253340C3ABF6FA24355240C2FC70EBC92533406A6391CB2435524010F6DCF8C9253340BE4AE3BC2435524088D68A36C7253340179348EC243552403BDD1E29C72533404617E5E324355240CB9D3EA7C5253340F9799D1E253552400027CA94C525334005847B0A25355240440E5BC4C1253340E7B287AC24355240A44ADE4AC02533407D02CD8C23355240F19F6EA0C02533409A60939023355240D943FB58C1253340DC0DA2B52235524032A3699AC1253340D162844B2235524055450257C3253340	40	249860343	\N	apartments	Tarapore Towers	\N	\N	\N
41	0106000020E6100000010000000103000000010000000500000059F388763A355240FDD2478556263340187728AF3A3552403F13060A61263340514F1F813F35524070CBEC985F26334092CB7F483F3552402E8B2E145526334059F388763A355240FDD2478556263340	41	249860345.00000003	\N	apartments	\N	\N	\N	\N
42	0106000020E6100000010000000103000000010000000500000055AC753D2C3552407C5F01F15F25334031BCED9D2C355240195CCE007225334023788DA72F355240A2CF471971253340476815472F35524005D37A095F25334055AC753D2C3552407C5F01F15F253340	42	249860355	\N	apartments	\N	\N	\N	\N
43	0106000020E61000000100000001030000000100000005000000653909A52F355240D63CA29D2E263340413278F32F35524013C0289C38263340397AA125343552407FAA65C6362633405D8132D7333552404227DFC72C263340653909A52F355240D63CA29D2E263340	43	249860365	\N	apartments	\N	\N	\N	\N
44	0106000020E61000000100000001030000000100000005000000AE79FAAD4235524058135509602633406DFD99E642355240A0E870636926334047FE052747355240FA1F05F467263340887A66EE46355240DCC9969B5E263340AE79FAAD423552405813550960263340	44	249860369	\N	apartments	\N	\N	\N	\N
45	0106000020E61000000100000001030000000100000005000000035E66D82835524019C5724BAB253340A3B151312935524064F72EEFBB253340E4C51DCA2B35524005DB8827BB253340437232712B355240BBA8CC83AA253340035E66D82835524019C5724BAB253340	45	249860374	\N	apartments	\N	\N	\N	\N
46	0106000020E610000001000000010300000001000000050000000617862323355240DB81DF2B5F26334077CFCB7223355240338232326D2633404B89C9C026355240528770276C263340DAD08371263552402306CB225E2633400617862323355240DB81DF2B5F263340	46	249860375	\N	apartments	\N	\N	\N	\N
47	0106000020E61000000100000001030000000100000005000000ED4A260230355240CD98DDEE40263340F3D94B64303552402D9622F94A263340F7FD405E343552404C2BCFCD48263340F16E1BFC33355240EC2D8AC33E263340ED4A260230355240CD98DDEE40263340	47	249860383	\N	apartments	\N	\N	\N	\N
48	0106000020E61000000100000001030000000100000005000000E8C715CD393552402C7BB71E2A263340415596323A35524093A641D13C263340B73709EF3C355240E7902FFC3B263340944A1D893C3552408065A54929263340E8C715CD393552402C7BB71E2A263340	48	249860384	\N	apartments	Sargam	\N	\N	\N
49	0106000020E61000000100000001030000000100000004000000E73B44654A3552406C2FAB5769263340DA865EC64A355240BC0FB98068263340BC81B8614A35524042CCCA9B68263340E73B44654A3552406C2FAB5769263340	49	249860386	\N	apartments	\N	\N	\N	\N
50	0106000020E610000001000000010300000001000000050000009567B9C72D355240BCC8A942A8253340001B10212E3552402A7524F2B82533408E565AEB303552407E5F121DB825334023A303923035524010B3976DA72533409567B9C72D355240BCC8A942A8253340	50	249860389	\N	apartments	Marigold Apartments	\N	\N	\N
51	0106000020E61000000100000001030000000100000005000000163A652431355240E06AF8718F263340BD923F7331355240ED5575A09826334050296508363552403C6FBE6C96263340DF701FB9353552402F84413E8D263340163A652431355240E06AF8718F263340	51	249860394.00000003	\N	yes	Link Way	\N	\N	\N
52	0106000020E61000000100000001030000000100000005000000696677923E3552409865F448282633401B0E4B033F355240F9FB20263C2633407980DD9F413552404DE60E513B263340FC789E2E41355240EC4FE27327263340696677923E3552409865F44828263340	52	249860396	\N	apartments	\N	\N	\N	\N
53	0106000020E61000000100000001030000000100000004000000640C763043355240CACC504B792633404EC7CEA54635524069EE84A371263340B408201043355240A8CEFE9B72263340640C763043355240CACC504B79263340	53	249860398	\N	apartments	\N	\N	\N	\N
54	0106000020E610000001000000010300000001000000040000004C71A6CD3B355240125B231E8B2633406818ECEB3B355240B6BF6CBB8A263340F988F3CB3B355240A7C013C48A2633404C71A6CD3B355240125B231E8B263340	54	249860398.99999997	\N	yes	\N	\N	\N	\N
55	0106000020E61000000100000001030000000100000005000000CBF044B52D355240ABB35A608F253340BF428B112E355240BA0FE5B0A02533402E200FD8303552400DFAD2DB9F2533403BCEC87B30355240281DF68C8E253340CBF044B52D355240ABB35A608F253340	55	249860402	\N	apartments	\N	\N	\N	\N
56	0106000020E61000000100000001030000000100000005000000CA856F0624355240F45FD67A752633401D9BD31B243552402DFFC64384263340F8E6920527355240289EB30584263340DA71C3EF26355240EEFEC23C75263340CA856F0624355240F45FD67A75263340	56	249860408	\N	apartments	\N	\N	\N	\N
57	0106000020E61000000100000001030000000100000005000000E904D95743355240B065434827263340C0266BD4433552401891CDFA39263340E266A7D5463552406C1F97DD382633400C4515594635524004F40C2B26263340E904D95743355240B065434827263340	57	249860410	\N	apartments	\N	\N	\N	\N
58	0106000020E6100000010000000103000000010000000500000011B4B8B53B35524094FB78437526334011F9D3EB3B355240CAE9A16C8026334009861854403552402A82493B7F263340D3A0681E40355240F49320127426334011B4B8B53B35524094FB784375263340	58	249860412.00000003	\N	apartments	\N	\N	\N	\N
59	0106000020E6100000010000000103000000010000000500000074BD23192835524015A6947C91253340F1AD5978283552405F48E240A3253340B45B261E2B355240AD2DE175A2253340386BF0BE2A3552408C0A41B39025334074BD23192835524015A6947C91253340	59	249860415	\N	apartments	\N	\N	\N	\N
60	0106000020E610000001000000010300000001000000050000008785FF194A355240B7121505552633409E23F25D4A355240A9BD88B66326334044FD2E6C4D355240212235ED622633402C5F3C284D3552402E77C13B542633408785FF194A355240B712150555263340	60	249860418	\N	apartments	\N	\N	\N	\N
61	0106000020E610000001000000010300000001000000050000001A41745229355240679C86A8C22533400E93BAAE293552404C7963F7D32533407E703E752C355240CAE2FE23D32533408A1EF8182C355240BB8674D3C12533401A41745229355240679C86A8C2253340	61	249860421	\N	apartments	\N	\N	\N	\N
62	0106000020E610000001000000010300000001000000050000007E8747872C3552407B4963B48E2633408F1DAF9B2D355240F480C355AF263340647B88A130355240773705E8AD26334053E5208D2F355240FFFFA4468D2633407E8747872C3552407B4963B48E263340	62	249860424	\N	yes	\N	\N	\N	\N
63	0106000020E6100000010000000103000000010000000500000000A5468D2E3552409D11A5BDC12533405316CFEA2E35524011D77B3BD3253340BD923F733135524059B78B7AD22533406A21B71531355240E5F1B4FCC025334000A5468D2E3552409D11A5BDC1253340	63	249860425.00000003	\N	apartments	\N	\N	\N	\N
64	0106000020E610000001000000010300000001000000050000001DD8E033483552408D333CAC26263340A52E19C74835524013F4723337263340BC1F5CA64B355240C12962C73526334033C923134B3552403A692B40252633401DD8E033483552408D333CAC26263340	64	249860428	\N	apartments	\N	\N	\N	\N
65	0106000020E61000000100000001030000000100000005000000C478CDAB3A355240E94482A9662633407DE074DC3A3552401ABE2ABC70263340F762DE993F355240326255736F2633403FFB36693F35524002E9AC6065263340C478CDAB3A355240E94482A966263340	65	249860429	\N	apartments	\N	\N	\N	\N
66	0106000020E6100000010000000103000000010000000500000047AA944330355240E2F9563552263340B25DEB9C303552404E017A2B5C263340805479F1343552406D9626005A2633404A41B79734355240018F030A5026334047AA944330355240E2F9563552263340	66	249860432	\N	apartments	Utsav	\N	\N	\N
67	0106000020E61000000100000001030000000100000005000000B60B72BC27355240392E3E6079253340D4DC651A283552401E673FF78A253340674BB1FE2A355240A2D5C9198A253340497ABDA02A355240BC9CC88278253340B60B72BC27355240392E3E6079253340	67	249860433	\N	apartments	\N	\N	\N	\N
68	0106000020E610000001000000010300000001000000050000000BCE853625355240C3EA347799263340D5A01E9125355240534145D5AF263340AAFEF796283552406598C926AF263340E02B5F3C28355240D641B9C8982633400BCE853625355240C3EA347799263340	68	249860438	\N	school	Rajrani Malhotra Vidyalaya	\N	\N	\N
69	0106000020E61000000100000001030000000100000005000000A690758247355240A1C5089744263340BE2E68C647355240267156444D2633408BDD3EAB4C3552403F0114234B263340743F4C674C35524091D6187442263340A690758247355240A1C5089744263340	69	249860444	\N	apartments	\N	\N	\N	\N
70	0106000020E610000001000000010300000001000000050000009A91E634303552404320F2F164263340A60EF27A303552402DEDD45C6E26334080C7A64B35355240876C205D6C263340744A9B0535355240742090F0622633409A91E634303552404320F2F164263340	70	249860449	\N	apartments	Rajnigandha	\N	\N	\N
71	0106000020E61000000100000001030000000100000005000000BFA4E7CC2C355240DAC9E028792533406614CB2D2D355240A1455B3A8B253340F93DFBDB2F355240C5ABAC6D8A2533401D2E837B2F355240FE2F325C78253340BFA4E7CC2C355240DAC9E02879253340	71	249860451	\N	apartments	\N	\N	\N	\N
72	0106000020E61000000100000001030000000100000005000000D9C4138B29355240CFFF06488F263340BBA8CC832A3552408AD640A9AC263340014CBE7E2D3552408B0A8B40AB26334054089A852C355240CF3351DF8D263340D9C4138B29355240CFFF06488F263340	72	249860456	\N	yes	\N	\N	\N	\N
73	0106000020E610000001000000010300000001000000050000007D4D2036223552406F7F2E1A32263340EE05668522355240622AA2CB40263340EDF9F59E253552401B22B8DB3F26334046A11B502535524052F6F12B312633407D4D2036223552406F7F2E1A32263340	73	249860462	\N	apartments	\N	\N	\N	\N
74	0106000020E61000000100000001030000000100000005000000F4893C493A355240533C2EAA45263340B20DDC813A355240AE7C3B2E4F263340CE42F1193F355240C0BF52A74D2633400FBF51E13E355240667F452344263340F4893C493A355240533C2EAA45263340	74	249860465.99999997	\N	apartments	Kaveri	\N	\N	\N
75	0106000020E61000000100000001030000000100000005000000EE7893DF223552403AC0DDA348263340B84B2C3A233552403ED6427F57263340E77E3D15263552402752F58656263340E70B10BB25355240233C90AB47263340EE7893DF223552403AC0DDA348263340	75	249860469	\N	apartments	\N	\N	\N	\N
76	0106000020E6100000010000000103000000010000002F000000C9C1B68F263552400E10CCD1E325334016E934C126355240269D92BDEF25334027F5656927355240AF6C301EEF25334081F8AF622735524022ECCA1DEC2533408099EFE02735524022ECCA1DEC253340F19650662835524087F9F202EC2533406ECF3D3528355240157A5803EF2533406294B1EB28355240788F7DDAF225334026E9F5822A3552405C8242F3EF25334073B1B3322B355240DD9CA5BFF2253340A3C222D02A3552405FB7088CF52533402C369CE829355240B2A1F6B6F4253340C7B546A92935524069A109B9F7253340B43EE5982C355240C67DF502FD253340B3DF24172D355240748B0AE6F9253340D185A28A2C355240E0D16B58F82533404E5FCFD72C35524070DA4246F62533406BB75D682E355240E70AA5E5F62533406BB75D682E355240015F1B3BF2253340F40D96FB2E355240C01369D1F1253340B23275B22F355240B2A1F6B6F425334000EA61C32E355240F370A719F7253340D07932A42F355240FD5AA846F92533405D7061383235524014FE56FCF0253340052B9842313552404A5F0839EF2533407099D365313552402E52CD51EC2533405D706138323552403F75070CED253340B614EBAF323552409A982EC4EA2533406BF9DC642F35524073A1F2AFE5253340FAFB7BDF2E35524059C97D61E8253340B8205B962F355240F33F5475EA2533408F4BC1BF2D355240E21C1ABBE92533401213D4F02D3552408BAABAA2EF253340428303102D355240F6741A0EF0253340E4AE14B82B355240350708E6E82533400E901E752A355240EC8A19E1ED253340506B3FBE2935524010C99063EB253340AFFDAE192A355240BFD6A546E82533408B694BC22A355240F4BB557CE8253340EAFBBA1D2B355240E9D1544FE625334062F3716D2835524028E84020E12533407AAB09FD273552400E10CCD1E3253340C773C7AC28355240CC481861E5253340D34F9374283552402B1D07B9E6253340985187702735524084C42C6AE6253340210780852735524079DA2B3DE4253340C9C1B68F263552400E10CCD1E3253340	76	249860471	\N	yes	\N	\N	\N	\N
77	0106000020E61000000100000001030000000100000011000000B70E34BE1D355240361C7792C125334023A3C5351E355240E2845475D8253340B558E59D1E355240DFCA6D56D8253340975643E21E3552406EE7B11CD725334020C720C11E355240CB02DCE2D02533400E7338A91E3552409B7E3FEBD02533405B559BA41E3552401EEDC90DD0253340915154EC1E3552400178FAF7CF253340913A4BDA1E355240A31F0DA7CC25334038F2E5AA1E3552401A9826B6CC2533403EF7D4A01E3552406308A5D4CA2533409DE8047E1E3552405D03B6DECA2533406D4D5F741E35524016E75E16C92533400E5C2F971E3552401CEC4D0CC9253340A3EDF3731E3552407FB04280C22533407912222A1E3552404AB72572C1253340B70E34BE1D355240361C7792C1253340	77	249860500	\N	apartments	Tarapore Towers	\N	\N	\N
78	0106000020E610000001000000010300000001000000050000000158D3AB373552408D203AA9D425334060A527D137355240550F3DCED92533404C981F6E3D355240AF326486D725334022EB5F483D355240E8436161D22533400158D3AB373552408D203AA9D4253340	78	249897536	\N	yes	\N	\N	\N	\N
79	0106000020E61000000100000001030000000100000005000000BDE6B05648355240EC9804B9D5253340D584A39A483552407C0679E2DE253340B5E9BE524C35524065CAE259DD2533409E4BCC0E4C355240ABDDC02ED4253340BDE6B05648355240EC9804B9D5253340	79	249897537	\N	yes	\N	\N	\N	\N
80	0106000020E610000001000000010300000001000000070000001F679AB07D355240D526A9A7EA253340A18735F07E355240719EFBBCF325334022403C0183355240581932C3EB25334094B6025482355240EF8E8CD5E6253340E214675680355240C91CCBBBEA253340B9DD70C47F355240C0AECB95E62533401F679AB07D355240D526A9A7EA253340	80	249897540	\N	yes	\N	\N	\N	\N
81	0106000020E6100000010000000103000000010000000700000059D537D57F355240B433F1B33626334089111D5D8035524069F349383E263340CAE6053381355240635EEC623F2633404C384FD08135524059D306712F263340D64FA4A080355240D63CA29D2E263340A1C9B4EC7F355240B1FE2A1B3126334059D537D57F355240B433F1B336263340	81	249897546	\N	yes	\N	\N	\N	\N
82	0106000020E6100000010000000103000000010000000A000000352FE2966A355240049E6AE33E263340157DF43C6E355240A5DDE8633E263340157DF43C6E3552409E488B8E3F263340266F80996F35524051F3FA383F26334032BE79BB6F355240BB89100D4126334097523CD37035524062BA10AB3F2633401A06E22B703552402503401537263340324B4C616F3552408CC0B39833263340E76388AD6A355240C8AA52C433263340352FE2966A355240049E6AE33E263340	82	249897555	\N	yes	\N	\N	\N	\N
83	0106000020E6100000010000000103000000010000000D00000030AB668C4535524085F46FF2B62533400055DCB845355240C4F473F9C52533404771338147355240719AF4ADC52533409A86979647355240CDFADEF0CC2533407459F1B24B355240DF516342CC25334039865B994B3552402B22799DC3253340A043CF1C483552407ED81C31C42533400B56E6F747355240199AA1A7B725334086C77E164B3552403D5C1723B7253340E0B3BFFD4A3552405904B5CEAE2533409453967C47355240ACBA5862AF253340E768FA9147355240379FDF9CB625334030AB668C4535524085F46FF2B6253340	83	249897558	\N	yes	\N	\N	\N	\N
84	0106000020E610000001000000010300000001000000070000007E48090B383552407CAA549ADE253340726C3D4338355240D119BDBFE6253340E366028F3935524072593B40E6253340246D99C239355240332372B0ED2533403B7B1D273B355240DA67DF26ED253340D0B0BDBB3A355240C42E4091DD2533407E48090B383552407CAA549ADE253340	84	249897563	\N	yes	\N	\N	\N	\N
85	0106000020E6100000010000000103000000010000000D0000007A89B14C3F3552406629FE94CF253340A44D7A843F35524071789CFDDC25334032FF8DE241355240C5BEAE70DC253340615518B641355240650921D6D12533403612B23D44355240BF54223FD125334096760F754435524094BE1072DE253340B888395247355240FA13F0C6DD253340AC0B2E0C4735524061E8C715CD25334077D0910145355240432B4190CD253340B35E0CE544355240291609B7C6253340DF1AD82A41355240CF262C96C72533402C2B4D4A41355240D8E4DF1DCF2533407A89B14C3F3552406629FE94CF253340	85	249897569.99999997	\N	yes	\N	\N	\N	\N
86	0106000020E6100000010000000103000000010000000900000010C935AA783552401159FF42EA2533405CD372567A355240C25C9C42F8253340CC82E4F87C355240189BB1C3F3253340563E15817B355240363B527DE725334049E9E3EB7C35524026F03D12E5253340625FFC7E7B355240E4E3C924D9253340BC8223377935524095F25A09DD25334003E7316F7A355240075B913DE725334010C935AA783552401159FF42EA253340	86	249897574	\N	yes	\N	\N	\N	\N
87	0106000020E61000000100000001030000000100000007000000E904D9574335524028C819D4C8243340592A148E45355240CF7C186BC9243340B258D47146355240241CC418A22433409BA3D81B4635524060AA3EFCA124334089940B3A46355240214322C89C2433403C2EAA4544355240EC014E4A9C243340E904D9574335524028C819D4C8243340	87	250492234	\N	yes	\N	\N	\N	\N
88	0106000020E610000001000000010300000001000000050000003412A1116C3552409882DA14342433407A7077D66E35524009AE4DBE3424334062B8DF466F3552405F4B7E7A22243340DA6A7B606C355240008BFCFA212433403412A1116C3552409882DA1434243340	88	250492235	\N	yes	\N	\N	\N	\N
89	0106000020E610000001000000010300000001000000050000009D06561F593552402A3009BC382433406BB52C045E355240C44ABB873A243340A612F9895E3552403478A92226243340D86322A5593552409A5DF756242433409D06561F593552402A3009BC38243340	89	250492237.99999997	\N	apartments	\N	\N	\N	\N
90	0106000020E6100000010000000103000000010000000A000000F03504C765355240D1B8269309243340B3171B0467355240466117450F2433403694DA8B683552404DBA2D910B243340D010E912693552409EE85F37112433403B1DC87A6A355240B1BBE58F0E243340FA47DFA469355240E58BACEB06243340B3CF6394673552407F19E7CAFB233340D87D6C3766355240718797F1002433404E66176767355240AB09A2EE03243340F03504C765355240D1B8269309243340	90	252854948.99999997	\N	yes	Crescent Tower	\N	\N	\N
91	0106000020E6100000010000000103000000010000001000000059BFD16465355240AAD929AFFB23334088D3000363355240D43E6BD2FC2333408C7967FE62355240D287D3EEFC2333404E1893D4623552403C0398E8FC2333406B547E2E5F35524010DBB8A6FE233340B7ED7BD45F35524030E0C03F0024334035E4E9A65E35524026C3F17C06243340877D4CB5603552405EA91DB40D243340C852358B61355240FC0FFAE307243340F16F86D162355240FC0FFAE307243340681316CB6335524052B3ACA00E243340619225CE6535524007E68D3809243340910255ED64355240214E7166052433404337FB03653552408FA042BF002433401F16C50666355240F55DB642FD23334059BFD16465355240AAD929AFFB233340	91	252854952	\N	yes	\N	\N	\N	\N
92	0106000020E61000000100000001030000000100000007000000F7AFCB4F88355240F2E7271B06243340E1BD09F5843552408EAA95B8FA2333406A1F681B7F355240B67E48EEF62333404E52772F7A3552401222480CF7233340D3AA4CE779355240F55DB642FD233340EA5C514A883552406EB76E9406243340F7AFCB4F88355240F2E7271B06243340	92	291430557	\N	apartments	\N	\N	\N	\N
93	0106000020E61000000100000001030000000100000005000000368C27277F3552408494E9E1152433407028D76F81355240F4D3C9631724334040B8A750823552400ACA236E04243340061CF80780355240998A43EC02243340368C27277F3552408494E9E115243340	93	291430558	\N	apartments	\N	\N	\N	\N
94	0106000020E61000000100000001030000000100000004000000D307CA76843552407D861A0CF9233340F843B4CE83355240511CA2D1F6233340B400A8EE80355240717F28E3F6233340D307CA76843552407D861A0CF9233340	94	291430560	\N	apartments	\N	\N	\N	\N
95	0106000020E610000001000000010300000001000000050000001491065C7C3552409CDCEF5014243340B368F0AD7E355240A109B9F715243340CBEC3DA67F355240583F9182022433402B1554547D3552405312C8DB002433401491065C7C3552409CDCEF5014243340	95	291430564	\N	apartments	\N	\N	\N	\N
96	0106000020E6100000010000000103000000010000000500000039CF7DDE79355240EB9914D511243340E4B0451C7C35524043C5387F13243340199359187D355240DC3D8A84002433403811FDDA7A355240AD9113DCFE23334039CF7DDE79355240EB9914D511243340	96	291430565	\N	apartments	\N	\N	\N	\N
97	0106000020E610000001000000010300000001000000050000000B49C1AE8135524065A318C5172433409928E73084355240F3B3ECA4192433406EEBB82B85355240E58BACEB06243340E10B93A9823552402DFC2A0A052433400B49C1AE8135524065A318C517243340	97	291430567	\N	apartments	\N	\N	\N	\N
98	0106000020E6100000010000000103000000010000000E0000009C1D04786635524093E00D6954243340FB534F8B66355240C579933A5C24334031DDDA786635524042F79B3F5C243340902A2F9E663552404468A9616424334034886AA56B355240338D2617632433407649E6A26B355240095630856224334075BC13FD6B355240C261B36D62243340A5FB94BE6B355240A0D67E7C532433403A5F47776B3552406A4DF38E532433406BBB09BE69355240589A4AF553243340EE6B13DD693552409CE678605B2433407D5A457F6835524066B911BB5B243340B3E3D06C68355240E7824424542433409C1D04786635524093E00D6954243340	98	294276588	\N	yes	\N	\N	\N	\N
99	0106000020E6100000010000000103000000010000000500000018DCC5EA453552401A4DD30C4E253340706072A34835524061F998B44E2533404021F1E1483552405C3F582140253340E89C442946355240159392793F25334018DCC5EA453552401A4DD30C4E253340	99	294276613	\N	yes	\N	\N	\N	\N
100	0106000020E6100000010000000103000000010000000500000071B7DA7951355240D74B53043825334004519C48553552404D486B0C3A253340BCE6559D553552403AB4233031253340294D94CE51355240C4B70B282F25334071B7DA7951355240D74B530438253340	100	294276614	\N	yes	\N	\N	\N	\N
101	0106000020E61000000100000001030000000100000005000000266607A6643552406AD322EC252533406C239EEC663552404B2A093F27253340242C859B67355240428BB67416253340DE6EEE54653552406034D02115253340266607A6643552406AD322EC25253340	101	294276617	\N	yes	\N	\N	\N	\N
102	0106000020E61000000100000001030000000100000009000000CFA513645F35524079FC28345A2433400B79A97D5F35524021567F8461243340BC48579F61355240B78B1F19612433404B033FAA61355240A975D14664243340A9E8FEA0643552402C4080B163243340264FFE936435524093A1CFEC5F2433400778D2C265355240E13E17B25F243340F623EAAA65355240DE99BFF858243340CFA513645F35524079FC28345A243340	102	294276618	\N	yes	\N	\N	\N	\N
103	0106000020E610000001000000010300000001000000050000000F94803D4B355240E38FFD874F253340EA10EE844D355240B3C3A92050253340BAD16CC34D355240C0E4EBD742253340DF54FF7B4B355240F0B03F3F422533400F94803D4B355240E38FFD874F253340	103	294276619	\N	yes	\N	\N	\N	\N
104	0106000020E6100000010000000103000000010000000500000054A4671F503552409049EB1450253340F9F36DC152355240061E296C502533406A6798DA52355240A70C778945253340FBB7263850355240303839324525334054A4671F503552409049EB1450253340	104	294276620	\N	yes	\N	\N	\N	\N
105	0106000020E61000000100000001030000000100000005000000BC98C1734A3552405631F0373525334079DF42684E355240E519EA6635253340B49BCF6F4E355240A806F5882C253340F8544E7B4A355240191EFB592C253340BC98C1734A3552405631F03735253340	105	294276623	\N	yes	\N	\N	\N	\N
106	0106000020E61000000100000001030000000100000009000000F0EDA7105935524053B4722F30253340908312665A35524082F057B73025334049788C3C5A35524030D39BF6392533405A6A18995B355240A7A7D94D3A253340E3642CE45B3552409D08878329253340D272A0875A3552402634492C29253340DE9387855A355240AF7378AD2925334008759142593552402634492C29253340F0EDA7105935524053B4722F30253340	106	294276627	\N	yes	\N	\N	\N	\N
107	0106000020E610000001000000010300000001000000090000008F6E844545355240703DAF1D31253340714FA10447355240C9F841A7312533401147681547355240D60E90792E2533401172DEFF47355240246420CF2E253340AB7BBF2C48355240C25A6BDE272533409A136A3C473552409E84888A2725334082E8A452473552402F09617F23253340A107889345355240D64DCEF5222533408F6E844545355240703DAF1D31253340	107	294276628	\N	yes	\N	\N	\N	\N
108	0106000020E6100000010000000103000000010000000E00000033993B446D355240FE3DC27AED2533405C5A68426E355240027FF8F9EF2533403898F2C66E3552407ACF3758EE2533409DB987846F35524086353A8CEE253340CD542D8E6F355240330F05D8EC253340EA0E18DA6F35524069F4B40DED253340C1BD7CFC6F35524013094BE1E625334026B49BCF6F355240019E59B7E62533400856D5CB6F3552402CF52C08E52533406EF0CF566F35524043650D28E52533400FEB32A16E355240093F2773E2253340B68E60996D355240558847E2E52533400F8F0E596E3552400036C588E925334033993B446D355240FE3DC27AED253340	108	352922203	\N	yes	\N	\N	\N	\N
109	0106000020E6100000010000000103000000010000000E000000FD6BD49E6D355240247F30F0DC2533403337DF886E35524075E1AC2DE1253340D9D4D40D6F355240ED31EC8BDF2533403EF669CB6F355240F997EEBFDF253340A331A4D46F355240A671B90BDE2533408B4BFA2070355240DC566941DE25334061FA5E4370355240866BFF14D8253340C7F07D167035524074000EEBD7253340A992B712703552409E57E13BD62533400E2DB29D6F355240B6C7C15BD6253340AF2715E86E355240A62089A8D32533409259BDC36D355240C81E46ADD525334009E643AB6E355240612D8892DA253340FD6BD49E6D355240247F30F0DC253340	109	352922204	\N	yes	\N	\N	\N	\N
110	0106000020E610000001000000010300000001000000090000002C57248477355240A0CC77BD58263340B510E12D79355240DB82D167542633407B4E7ADF7835524051442B9C492633409956540E773552408DE612584A26334016EB652577355240FC4DCD8A4D2633400B9C6C037735524073C6E6994D263340C31A1D4677355240D4AFBECB562633401C63827577355240E0B99CB7562633402C57248477355240A0CC77BD58263340	110	352922214	\N	yes	\N	\N	\N	\N
111	0106000020E610000001000000010300000001000000090000005925FFA12235524082740847BE263340A49327C522355240CC509428C72633405882D60D2535524089F02F82C6263340DC3B222C2535524013C4DA35D026334073A9E52027355240B9430AA7CA26334087A17A1027355240837BAF6BC5263340CF28024125355240535337BCC5263340BDBD101725355240ABE57393BD2633405925FFA12235524082740847BE263340	111	352937274	\N	apartments	Shantivan Bldg no. 1-3	\N	\N	\N
112	0106000020E6100000010000000103000000010000000500000063E64C246235524081542F641A2633402741C92E623552404793E6EA22263340612294AD643552400CA947BF22263340672783A364355240466A90381A26334063E64C246235524081542F641A263340	112	352937294	\N	yes	\N	\N	\N	\N
113	0106000020E6100000010000000103000000010000000F000000A166481545355240B4C299041425334040941E3C493552404B6947BB1B253340ECA930114A3552409D52B9E41325334093C08B63493552408B77369A12253340A5E66157493552408BD35AE21225334077F86BB246355240764710F80D253340DC33A6BB46355240EE3B2B0E0C2533400B87945547355240C4BC7D0C0C253340D52B1B8C473552408CEABEAD0525334023FA10AF46355240C49F974000253340DC3642F545355240BF863B72FF2433400055DCB845355240B2ADB02A0C2533400643C29C45355240567E198C11253340E89FE0624535524015EBAFB211253340A166481545355240B4C2990414253340	113	357305658	\N	apartments	\N	\N	\N	\N
114	0106000020E610000001000000010300000001000000050000000DCDD0D35B355240BFA7284D3925334017B7D1005E3552408375D2B139253340DC6D72535E355240B43BA41820253340D18371265C355240F06DFAB31F2533400DCDD0D35B355240BFA7284D39253340	114	357305671	\N	yes	\N	\N	\N	\N
115	0106000020E6100000010000000103000000010000000500000043E7902F7C35524011C07229532533404343B5777C3552404752770A5E253340721D3E447E355240ADA7565F5D2533403D2185FC7D355240A094FF7F5225334043E7902F7C35524011C0722953253340	115	357305680	\N	yes	\N	\N	\N	\N
116	0106000020E6100000010000000103000000010000000500000010F4064E6C35524095D39E927324334068A961646E355240549C59017424334027721CD36E355240E001542756243340991C2DBD6C355240223999B85524334010F4064E6C35524095D39E9273243340	116	357305681	\N	yes	\N	\N	\N	\N
117	0106000020E61000000100000001030000000100000005000000232E008D52355240AD6A494739243340DAB4ADC156355240FA2F6BBD3A243340DF88EE5957355240B9F2A32B22243340F361AC255335524096AC2FB720243340232E008D52355240AD6A494739243340	117	357305683	\N	apartments	\N	\N	\N	\N
118	0106000020E6100000010000000103000000010000000D0000000646031D52355240096355CE28253340DCC3B9E1523552409EAC623B29253340055A70F5523552409F2864422725334088D9CBB653355240E07316AC2725334029A380A353355240DFF714A52925334070AB6A9354355240BB359F292A25334081728005553552401A7D16951E253340D52E5C0C54355240EB40310D1E253340F37519FE53355240BA884A7E1F2533406ADAC53453355240FCBF8F0F1F2533404C930843533552402C78769E1D253340170D198F5235524092297A3B1D2533400646031D52355240096355CE28253340	118	358508757.99999994	\N	yes	\N	\N	\N	\N
119	0106000020E6100000010000000103000000010000000D000000A98020E54C3552405FA16A4F242533407FFED6A94D355240C96BCABA24253340DE3422BD4D355240CAE7CBC1222533402B14E97E4E3552400C337E2B23253340027E326B4E35524034362A262525334013E6875B4F355240E7F406A92525334025AD9DCD4F35524070BB2B161A253340AE090ED44E3552401700998C1925334096B036C64E355240E647B2FD1A2533400E15E3FC4D355240287FF78E1A253340F0CD250B4E3552405837DE1D19253340BB4736574D355240BEE8E1BA18253340A98020E54C3552405FA16A4F24253340	119	358508761	\N	yes	\N	\N	\N	\N
120	0106000020E6100000010000000103000000010000000D000000D50EDA06493552403608CE740A2533403473373E493552400C9D8D4B0B253340221F4F2649355240408A3A730F2533404AAC318D4B355240C4D963D817253340B5487FD44B3552401E6D1CB11625334068AB370F4C355240A708707A17253340320807D64C3552400D2208461425334080A54E9B4C3552405B07077B13253340383B08F04C3552405636621C1225334098778B764B355240B2C11D030D253340E51137024C3552403123BC3D08253340F857EAB4493552401602147E04253340D50EDA06493552403608CE740A253340	120	358822891	\N	yes	\N	\N	\N	\N
121	0106000020E61000000100000001030000000100000015000000B95BEDBC68355240F80B2C369C243340358EA2186A355240E6FC5E549C24334094ADE4196A355240045EC1919B24334029E0E8746A355240D4D9249A9B243340942012746A355240ECA529029C2433401D4938E36A355240E6A03A0C9C24334052E9CCE26A3552403F00A94D9C2433401C5DA5BB6B35524033F6CA619C243340289595CB6B35524008DE358D9224334070308AD46A355240EB68667792243340A6D01ED46A35524050D2B2A492243340C4BBB77D6A355240A9D5FC9D92243340CFDC9E7B6A355240BAB07FE8932433401142F6306A35524014B4C9E19324334005210F336A355240D959999592243340C493DDCC68355240C1E9B87592243340E8F692C6683552408F6D1970962433402F4734266935524060E97C7896243340A6A8442369355240171DDA11982433402AB80EC4683552401D22C90798243340B95BEDBC68355240F80B2C369C243340	121	358831990	\N	yes	\N	\N	\N	\N
122	0106000020E61000000100000001030000000100000008000000CBC97A20683552401E51A1BAB92433409A0EF8576A35524052E2299ABD243340B76922226B3552406495D233BD24334017E824A56A35524099B9C0E5B1243340D010E9126935524087BE60DCB2243340DC5FE2346935524013AF57FDB6243340590E999768355240613832EAB5243340CBC97A20683552401E51A1BAB9243340	122	358832004	\N	yes	\N	\N	\N	\N
123	0106000020E6100000010000000103000000010000000C00000039ACBA586235524067D5E76A2B24334050D4E3086335524095A938C42E2433406E5D20F7633552402EECC44032243340D2A68F656635524056BB26A4352433400D4C135B66355240BD1C76DF312433407E35070866355240BF709D352E243340D2EE46D56535524026BE7F9829243340AE5AE37D663552408E53196B242433405A457F6866355240789384E9202433405BBEE43565355240E91A1CDB2124334085B6F704643552408EF7F4222424334039ACBA586235524067D5E76A2B243340	123	358852089	\N	apartments	\N	\N	\N	\N
124	0106000020E6100000010000000103000000010000000D000000D11962067435524039155FA39B253340CA598E467435524063940CA59B2533400C1B0A4474355240734FB2309F253340E83EEF7C75355240C0481E3E9F2533407CFEC57D75355240566A51FA9D25334082D2061676355240FD6607019E25334035F0A31A76355240CAADA47098253340A691E057763552401DACFF73982533408E4F125C76355240F6589F1793253340AB4E18DE763552409D55551E932533406A8D9CE07635524033F389E18F25334000B50710743552401C83A9C18F253340D11962067435524039155FA39B253340	124	359269237.00000006	\N	yes	\N	\N	\N	\N
125	0106000020E61000000100000001030000000100000024000000890EDCDC73355240B05CCA541C243340651E543D7435524044BA449A1D243340B3A492F073355240D817BFDF1E243340280EA0DF77355240A87CBE1C2C2433406290AADC7A3552404634CBAF30243340181758117F355240B7BB62A1312433406BF8718F8035524029F345312F24334006A62E74803552400C6A09432E2433401D86A0B481355240436F96372C24334082D8E3CF81355240367925242D243340E6690AAE833552405CFF53162A243340CFE2207C8335524009D91E6228243340FE1E0604843552408D47A98427243340226E4E2583355240E4912EEC1F243340CFFCC5C782355240B4C5DA842024334040FDC28682355240D95F764F1E243340B81FF0C080355240F56CB1362124334035CB0AEA80355240CBB9B99D222433407DF3D1987F3552405826B2C5242433400048B76F7F35524083D9A95E23243340E47CFB847D35524052499D80262433402B71789C7D3552402DE34B4D2724334008E6E8F17B355240993D1A9826243340981CD2037A3552400C056C072324334041E378F475355240A8565F5D152433407C2CD8A175355240AD2704BC16243340535106587535524096A3B6C315243340234333F474355240C44F2D6C172433408836B68D75355240BDCE3C6F19243340D6EA06657535524082F80A1C1A2433407C88FCE9753552402118ACDD1B2433407C43E1B3753552406E2585C31C2433405F2DD21F75355240169E3CD11A2433408F6C53E174355240CE1951DA1B243340062D246074355240A572C9271A243340890EDCDC73355240B05CCA541C243340	125	359269239	\N	apartments	\N	\N	\N	\N
126	0106000020E61000000100000001030000000100000005000000C7575BED8B355240AA482EAB4A25334043755C378C355240DA8697B539253340E30C0FAB893552404D5CD8E43A253340D18778358A355240F796CD774B253340C7575BED8B355240AA482EAB4A253340	126	359269240	\N	yes	\N	\N	\N	\N
127	0106000020E6100000010000000103000000010000000500000091813CBB7C355240DD1DBEF15A24334059D29B9B80355240377D2C335B243340294EFFA3803552402816AEFD5324334061FD9FC37C355240CFB63FBC5324334091813CBB7C355240DD1DBEF15A243340	127	359269241	\N	yes	\N	\N	\N	\N
128	0106000020E61000000100000001030000000100000005000000A3E1390087355240D91DF7521D2533403226587787355240DE7B139E2B2533406C9159628A3552402CA9C9422A253340DD4C3BEB8935524051CA5AF91B253340A3E1390087355240D91DF7521D253340	128	359269244	\N	yes	\N	\N	\N	\N
129	0106000020E610000001000000010300000001000000050000000863FA1436355240849554B7C4253340F6532D3336355240EFB0E485CF2533402EC48FD63D3552402C5F3C28CD253340345651723D35524025654117C32533400863FA1436355240849554B7C4253340	129	417320262	\N	yes	Oshiwara Police Station	\N	\N	\N
130	0106000020E61000000100000001030000000100000004000000DF8275572D3552408E697167112433407E7ADBD232355240795649C83D2433401B92A4B53335524061DEE34C13243340DF8275572D3552408E69716711243340	130	635525795	\N	yes	\N	\N	\N	\N
131	0106000020E61000000100000001030000000100000014000000767176C652355240B3147FCAE7253340F90A77D352355240CF3EA07DF62533403A950C0055355240C334C291F62533408172800555355240068CE4E1F32533400A70308A543552401EA0A0B9F32533400A70308A5435524025C56C6EF12533402E5D1CF05435524019BB8E82F1253340C38F204B55355240B4C1D375F2253340E0771DBB553552400708E6E8F1253340275591C055355240C86C7F1DEE253340577A6D3656355240E0803BF5ED253340E0185D3956355240AB871EE7EC25334087D0F7095635524069E04735EC25334092F1DE0756355240EDDE4037EA2533407B0B355456355240C4EF0115E9253340456BA05456355240AE43DA6BE625334058B4EF405335524037CBC05CE6253340F34AA31353355240AE9FFEB3E625334041E8EAD852355240EF46D565E7253340767176C652355240B3147FCAE7253340	131	844471187	\N	school	City International School	\N	\N	\N
132	0106000020E610000001000000010300000001000000050000001D5723BB52355240E2EFCD250B263340B849FBD55235524024FC411317263340A6E7829F5D355240E460DB47132633407102D3695D3552407F36CD96072633401D5723BB52355240E2EFCD250B263340	132	844474525	\N	commercial	Reliable Business Centre	\N	\N	\N
133	0106000020E6100000010000000103000000010000002F000000E7AD15C847355240142C6920F124334058AB764D483552406C4320F2F124334052787533483552408ACC5CE0F2243340E7F230FE4735524066F6798CF22433401D65B3D94735524077D1FCD6F3243340E074DC3A493552402FBDA200F62433401C5F7B6649355240C482B174F424334040660C1849355240E23F38FAF3243340348A4050493552403DBF83FAF1243340B64EB7474A355240D77D117EF3243340A5CCBC0B4A355240946EA69DF52433407BF1EAC1493552405928E329F5243340B1636D9D49355240E7806E79F6243340E68A9CCF4A35524075914259F82433409EF243004B35524052EFA99CF62433400F94803D4B355240993F4BFCF62433406EF8DD744B3552409ABB4C03F524334015996F334B355240AD6EF59CF424334062EEFF884B355240FB73D190F1243340C2C826544B355240BA281F27F1243340333C516D4B35524067BA3203F024334032F499FD4B355240D2E0B6B6F0243340DF5163424C35524027EB81A0ED243340098CF50D4C355240CE8B135FED24334009A3FE1F4C35524075745C8DEC2433406E26F0984B355240584744E7EB243340D94F10864B355240AB590CC3EC243340330E3F494B35524057FF8C77EC243340CEBBFB2D4B355240C8E248B1ED243340570163224A355240B707C666EC243340C25895334A3552402E6C729DEB2433404B9B60EE49355240E116E247EB2433403F9182024A35524094090962EA2433405DAA2DD0493552408EA8F523EA243340A59EAAE7493552402F302B14E92433407562C55F49355240E883656CE8243340B1F03F4349355240E8F3F68CE9243340933655F7483552407D299721E9243340C375D6B848355240B1EE6998EB243340812788154935524063AD461BEC243340649BAFED483552409E639BAFED243340B76BF8CC483552400F7BA180ED2433408E90268348355240BB004576EF243340704969914835524008B2F913F024334005F23680483552402CE400B0F0243340115BD5ED47355240DFD627CAEF243340E7AD15C847355240142C6920F1243340	133	986880185	\N	apartments	\N	\N	\N	\N
4	0106000020E61000000100000001030000000100000009000000905A7226373552401B2323B1EE2533401924D813383552403263C0481E26334091D9B4AD41355240869565E31C263340C1A5081541355240DA311A9E03263340ECA6EF903D35524098B21D9D04263340B73709EF3C355240BCF20F11ED2533403B7B1D273B355240DA67DF26ED253340246D99C239355240332372B0ED253340905A7226373552401B2323B1EE253340	4	202516362	wdmansdmsa	residence	test	24	2	test region
5	0106000020E610000001000000010300000001000000050000002BB2E77C42355240ADD05158F3253340BA522A3C43355240F83CDA931B263340445CEFED4C355240D01154E8172633400FBFF6274C35524026F9B605F02533402BB2E77C42355240ADD05158F3253340	5	202516364	test address 0123	Commercial	Heera Panna	1	1	test
\.


--
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: ward61user
--

COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
\.


--
-- Data for Name: ward61_buildings_osm_2nov2021; Type: TABLE DATA; Schema: public; Owner: ward61user
--

COPY public.ward61_buildings_osm_2nov2021 (id, geom, osm_id, name, addrstreet, building, roofmateri, osmward, num_flat, num_shops, wing, region) FROM stdin;
1	0106000020E610000001000000010300000001000000050000003555415681355240B4FBFAC67C2533405CA8A1B28635524037EE83E27D2533405CA8A1B286355240A64CC521762533404DC52176813552403B6EF8DD742533403555415681355240B4FBFAC67C253340	202061691	Transit Camp, Behram Baug	\N	commercial	\N	61	\N	\N	\N	\N
6	0106000020E61000000100000001030000000100000005000000C9642772773552400E4350DAC0243340B680D07A7835524058A8DA13C9243340F74F81DD7A3552404EDEB6A5C42433407446EFAF79355240B77FC05EBC243340C9642772773552400E4350DAC0243340	227895886	\N	\N	residential	\N	61	\N	\N	\N	\N
7	0106000020E6100000010000000103000000010000000D000000F33977BB5E355240E076B2E5A625334087C503256035524038B64368A9253340AC730CC85E3552400F400F5AB4253340DB087A5E603552403757282DB72533402273C009603552402484A2D4B9253340B6E74361613552408ED20039BC2533402697B5036435524045E0FE12A725334003B0011162355240291B7B9BA3253340B657D5816235524043DF8211A0253340C8DF073161355240268A90BA9D2533408763A76961355240B6EE8BF09B2533400A8D1656603552402EE3A6069A253340F33977BB5E355240E076B2E5A6253340	227895887	Evershine Greens	\N	apartments	\N	61	\N	\N	\N	\N
10	0106000020E610000001000000010300000001000000050000009365D2F07735524094E81B87B0243340E52C47237A355240C394922FB2243340C17E3E807B3552408F9E6C14A3243340094E7D207935524008C7D1C19F2433409365D2F07735524094E81B87B0243340	227895892	\N	\N	residential	\N	61	\N	\N	\N	\N
12	0106000020E6100000010000000103000000010000000B0000005432A59A7E355240AA381FE8B224334012B00C608035524056D22FB6B5243340B8F1DD9C8035524045E33F93B32433404D2146BE81355240DFFDF15EB524334010D54AD7823552403D6D437BAB24334053FE5A0380355240E6A9B3FFA624334012B3A8997F355240DE509DB3AA243340B279C14C803552408AC2D3D0AB2433405FDA26CB7F355240FFFA3262B0243340F59C99057F3552408F177728AF2433405432A59A7E355240AA381FE8B2243340	227895895	\N	\N	residential	\N	61	\N	\N	\N	\N
13	0106000020E610000001000000010300000001000000090000002AB80EC468355240E22EB1E88C243340ED7CE47B6B355240A09B470F8D243340643A19C16B355240F64CE5A37B243340956B651D69355240EB76514F7A24334077F695076935524059E6087481243340B8CB7EDD69355240A63B99C98124334011E6D1E8693552400F6A1A6F86243340DCECB4DA68355240FDFE2845862433402AB80EC468355240E22EB1E88C243340	227895896	\N	\N	residential	\N	61	\N	\N	\N	\N
15	0106000020E6100000010000000103000000010000000500000009E643AB6E35524049DCBEA2B6243340F1A0D9756F355240E5F7EC6FBF243340D85537CD71355240A6B8AAECBB243340F09AA1027135524057F20C75B324334009E643AB6E35524049DCBEA2B6243340	227895899	\N	\N	residential	\N	61	\N	\N	\N	\N
16	0106000020E6100000010000000103000000010000000D0000009434DA055E355240608A17B089253340FF40B96D5F35524059C16F438C253340A09740005F3552400A18B8978F253340BDD8C57E6035524014BA015592253340EC9B453962355240E6F0A4E084253340C367EBE06035524088AC24688225334015771783623552409485AFAF752533403496FAC360355240FB9E477B722533407BCF92116135524061CC4C1F70253340D53439C65F35524075FBF6BF6D2533406BFA473A5E355240CE774BCD79253340935CB4B65F355240851B3A877C2533409434DA055E355240608A17B089253340	227895902	Evershine Greens	\N	apartments	\N	61	\N	\N	\N	\N
18	0106000020E61000000100000001030000000100000005000000746B88E06E3552400DD7B49C952433406D18AA0771355240CB57B89B96243340F069F3A47135524079B878D3882433407423D1706F35524026A6B0F787243340746B88E06E3552400DD7B49C95243340	227895904	\N	\N	residential	\N	61	\N	\N	\N	\N
20	0106000020E6100000010000000103000000010000000B0000004828C7AE7E355240D10D034CCF2433405F4D54258035524025688297CF243340D0A9752C80355240EA5509BBCD24334005FFB6828135524097B3D2FFCD243340F90BE2A881355240A26C8088C3243340CBD8D0CD7E35524025372FF3C2243340E91F8EBF7E355240FFC46DD9C624334012407B3F7F355240713898F2C6243340A7E8482E7F3552401551B8C3CB243340952133BC7E355240CD5C3BACCB2433404828C7AE7E355240D10D034CCF243340	227895908	\N	\N	residential	\N	61	\N	\N	\N	\N
21	0106000020E610000001000000010300000001000000050000002AAD1ADF72355240EC8C4A45BE24334018B2BAD573355240C47EAA65C62433400B88FF2A76355240D2246717C2243340D68EE21C75355240E21E4B1FBA2433402AAD1ADF72355240EC8C4A45BE243340	227895909	\N	\N	residential	\N	61	\N	\N	\N	\N
22	0106000020E6100000010000000103000000010000000B00000095BFD6008035524043C5DDC5A02433407689EAAD81355240B9C1F5CDA224334076B7FCD181355240E318C91EA12433407B88A1308335524012C53FC7A224334093DEDC04843552400B2769FE98243340B8A9262D81355240965E9B8D95243340176D44E680355240D03CCAD2982433408881AE7D81355240B7E0568B9924334023EA4F2C81355240D301FF4A9D243340A76FE360803552400F7C0C569C24334095BFD6008035524043C5DDC5A0243340	227895910	\N	\N	residential	\N	61	\N	\N	\N	\N
23	0106000020E61000000100000001030000000100000005000000D9EE79596E3552406CBD95DBAC243340C691BD9470355240122ADD02AE2433405B09DD2571355240D2E1218C9F2433405C40C3F66E355240A9F2E2699E243340D9EE79596E3552406CBD95DBAC243340	227895911	\N	\N	residential	\N	61	\N	\N	\N	\N
24	0106000020E61000000100000001030000000100000011000000B8B7B64B763552400C3ECDC98B24334052AA8E66763552409521D8028C2433408E4F125C76355240957DFC4A8C243340323784CF7B3552407D2A02F7972433405B9F28BF7B355240E8F46162982433406D663E317C355240AC7A545799243340C0304F9D7D355240F836FDD98F2433408B7C4DC57C3552400B1EF00A8E243340EA8486B47C3552401CE5057D8E243340A3D8C00C7C3552404798FD158D243340CD295CEA7B35524094A5D6FB8D243340736EC9607B355240EE388FD48C243340C1221A387B355240763007E68D2433401630815B773552400951BEA0852433402E443D337735524068C988B086243340C9F1F91777355240B566D07586243340B8B7B64B763552400C3ECDC98B243340	227895912	\N	\N	residential	\N	61	\N	\N	\N	\N
26	0106000020E61000000100000001030000000100000014000000902A2F9E66355240E5C06158B42533400613DACD673552403216F2ADB4253340602D2DD967355240BAED8C00B82533401C74AECD6B355240BAED8C00B8253340B77D8FFA6B355240DF2B0483B52533405DBCC4FD6C35524091D6732DB5253340C225112B6D355240F2E1A30FA72533409908C0E46B3552403F373465A72533401C74AECD6B35524022F6AEE6A5253340A68B039E6A355240108BBDBCA52533404095E4CA6A3552408B24308CAA2533402FFCE07C6A3552402467BC08AE2533401805662A693552402467BC08AE253340E2F1A3D0683552401AF9BCE2A925334030BDFDB96835524022F6AEE6A525334030BDFDB968355240BDD41929A5253340ADCA749E67355240BDD41929A5253340ADCA749E6735524057A71485A7253340E94482A96635524057A71485A7253340902A2F9E66355240E5C06158B4253340	227895915	Raigad Military School	\N	school	\N	61	\N	\N	\N	\N
2	0106000020E61000000100000001030000000100000009000000905A7226373552401B2323B1EE2533401924D813383552403263C0481E26334091D9B4AD41355240869565E31C263340C1A5081541355240DA311A9E03263340ECA6EF903D35524098B21D9D04263340B73709EF3C355240BCF20F11ED2533403B7B1D273B355240DA67DF26ED253340246D99C239355240332372B0ED253340905A7226373552401B2323B1EE253340	202516362	Plaza	1	Link	\N	\N	1	\N	1	Oshiwara
25	0106000020E6100000010000000103000000010000000D000000BD71529877355240845B881FAD253340DF556A517A355240E31B0A9FAD25334044BFB67E7A3552408DC98745B1253340E4C4B2F47C3552408DC98745B1253340E4C4B2F47C355240B207FFC7AE253340776110FD7F355240A19C0D9EAE2533401E47BDF17F355240D3212697B5253340638BEE6A83355240D3212697B52533400A719B5F83355240C190D5AD9E253340B45483D57D35524085A636829E2533405A3A30CA7D355240ADBD4F55A1253340B19586D0773552406068BFFFA0253340BD71529877355240845B881FAD253340	227895914	Techweb center	Off New Link Road	Commercial	\N	\N	1	\N	2	Behrambaug
4	0106000020E6100000010000000103000000010000000500000003D373912035524092919E5525273340DF42684E28355240157B1E92102733403BDFF4D32435524008BB7207FB263340D27529E41F355240B60B88D20327334003D373912035524092919E5525273340	202555836	Park Paradise	1	yes	\N	\N	1	\N	1	Walawalkar
5	0106000020E61000000100000001030000000100000005000000D27529E41F355240B60B88D2032733403BDFF4D32435524008BB7207FB2633405F2E3DF52335524011B2E20ADE263340B3ADB9251F3552404BB996FEDE263340D27529E41F355240B60B88D203273340	202555854	Park View	1	yes	\N	\N	1	\N	1	Walawalkar
30	0106000020E61000000100000001030000000100000006000000750877C22635524059E9A4AD00273340866D307928355240E399E15009273340CCCB063E2B355240CA1418570127334050C763062A355240DEAB5626FC263340F1D8CF62293552405187156EF9263340750877C22635524059E9A4AD00273340	228031929	Oshiwara Basera	1	residential	\N	\N	1	\N	1	Walawalkar
29	0106000020E6100000010000000103000000010000000D0000000BD7FE293035524038A91E1FE3263340DB38BDE630355240E9A3422BE6263340DB070F8931355240B596B844E4263340C2F0B67732355240ADE17DB0E726334034677DCA31355240A618D643EA26334010D3197332355240F205D26AED2633408B44B2913535524086FEAE74E3263340BBE2F3D434355240759F2D31E02633404B5B5CE333355240AF21382EE32633401C9540EF32355240F308C95DDF2633408143A852333552407DC4F9E5DD26334004E0449932355240B4B51902DB2633400BD7FE293035524038A91E1FE3263340	228031928	Samruddhi CHS	Oshiwara Link Road	residential	\N	\N	1	\N	1	Walawalkar
14	0106000020E610000001000000010300000001000000110000006B285A5E5E35524003ED0E29062633403A2B58995F355240741882D2062633402EC2B92B603552407FEE152708263340C8B1F50C613552403D6F19260926334022CC4818613552406842EE7D0526334057DF0A726135524003ED0E29062633403F2773E26135524003ED0E2906263340573893806235524057D7FC5305263340A4761AC462355240F01989D00826334044B060D16335524003ED0E2906263340C674D7C86435524003ED0E2906263340144031B264355240783CD285FD253340685E6974623552408AA7C3AFFD2533407B59C97D61355240A950DD5CFC2533406348A9DF603552408AA7C3AFFD253340C442AD695E355240D7FC5305FE2533406B285A5E5E35524003ED0E2906263340	227895898	SukhMukh height	1	residential	\N	\N	1	\N	1	Oshiwara
27	0106000020E61000000100000001030000000100000007000000F2D47EC660355240E658DE550F263340C96CDAD6603552407DFF8B0C17263340B0F3250A63355240834C3272162633403E7D5FB76335524018DEF64E162633408571DCCE633552408CEDFF2D12263340924DA896633552400B630B410E263340F2D47EC660355240E658DE550F263340	227895916	anand	1	Seva samiti	\N	\N	1	\N	1	Oshiwara
17	0106000020E6100000010000000103000000010000000800000001B562C9663552402504ABEAE52533400C8BF61D6835524067F3380CE625334041B225506935524013F5DD08E62533400C299A6269355240EB0896D9D625334007E863E36635524063258BA0D6253340CB2BD7DB66355240A230838CDB253340C50FDFD36635524058B49487E025334001B562C9663552402504ABEAE5253340	227895903	Serenity	1	residential	\N	\N	1	\N	1	Oshiwara
8	0106000020E6100000010000000103000000010000000600000063E06F6A563552409016C2C5E52533408C5F1D6C563552402050EC57F0253340338AE59656355240A1C6736CF32533409916500361355240D73B9281F225334069A9BC1D6135524038FF0AF4E425334063E06F6A563552409016C2C5E5253340	227895889	Serenity	1	Complex	\N	\N	1	\N	1	Oshiwara
19	0106000020E61000000100000001030000000100000005000000A26AAADD653552403F98CA91842533400624AB6C693552400F84BFBA85253340B8CB7EDD6935524039E686F079253340D87D6C37663552407B6583F178253340A26AAADD653552403F98CA9184253340	227895905	Mariam public school	1	School	\N	\N	1	\N	1	Oshiwara
9	0106000020E6100000010000000103000000010000000B00000077F3F9CD6935524072474959D0253340CFDC9E7B6A355240951D2CADD025334017A3096F6A35524086432564D62533405EF00E956B355240C22DC48FD6253340A5CD829A6B3552407640C868D3253340693C6C7D6C3552401D3D7E6FD32533408195438B6C355240FB5E9E29CF25334034D021156B3552409CFA40F2CE2533408EEA74206B3552402C5F3C28CD253340BEE776E569355240E46ABF10CD25334077F3F9CD6935524072474959D0253340	227895891	serenity	1	residential	\N	\N	1	\N	1	oshiwara
53	0106000020E61000000100000001030000000100000005000000E8C715CD393552402C7BB71E2A263340415596323A35524093A641D13C263340B73709EF3C355240E7902FFC3B263340944A1D893C3552408065A54929263340E8C715CD393552402C7BB71E2A263340	249860384	Sargam	\N	apartments	\N	61	\N	\N	\N	\N
49	0106000020E61000000100000001030000000100000005000000035E66D82835524019C5724BAB253340A3B151312935524064F72EEFBB253340E4C51DCA2B35524005DB8827BB253340437232712B355240BBA8CC83AA253340035E66D82835524019C5724BAB253340	249860374	Indus	1	apartments	\N	\N	1	\N	1	Oshiwara
44	0106000020E6100000010000000103000000010000000500000055AC753D2C3552407C5F01F15F25334031BCED9D2C355240195CCE007225334023788DA72F355240A2CF471971253340476815472F35524005D37A095F25334055AC753D2C3552407C5F01F15F253340	249860355	Aster	1	Apartments	\N	\N	1	\N	1	Oshiwara
61	0106000020E61000000100000001030000000100000005000000CBF044B52D355240ABB35A608F253340BF428B112E355240BA0FE5B0A02533402E200FD8303552400DFAD2DB9F2533403BCEC87B30355240281DF68C8E253340CBF044B52D355240ABB35A608F253340	249860402	Aroma	1	Apartments	\N	\N	1	\N	1	Oshiwara
43	0106000020E6100000010000000103000000010000000500000080A77FFF1C3552402D9622F94A263340AFE364871D3552407F01182A5A263340E97C789620355240BBC3DCA458263340BA40930E203552406958E7734926334080A77FFF1C3552402D9622F94A263340	249860353	Gulmohar	1	apartments	\N	\N	1	\N	1	Oshiwara
55	0106000020E610000001000000010300000001000000050000009567B9C72D355240BCC8A942A8253340001B10212E3552402A7524F2B82533408E565AEB303552407E5F121DB825334023A303923035524010B3976DA72533409567B9C72D355240BCC8A942A8253340	249860389	Anushka	1	apartments	\N	\N	1	\N	1	Oshiwara
46	0106000020E61000000100000001030000000100000005000000653909A52F355240D63CA29D2E263340413278F32F35524013C0289C38263340397AA125343552407FAA65C6362633405D8132D7333552404227DFC72C263340653909A52F355240D63CA29D2E263340	249860365	Starship	1	Apartments	\N	\N	1	\N	1	Oshiwara
52	0106000020E61000000100000001030000000100000005000000ED4A260230355240CD98DDEE40263340F3D94B64303552402D9622F94A263340F7FD405E343552404C2BCFCD48263340F16E1BFC33355240EC2D8AC33E263340ED4A260230355240CD98DDEE40263340	249860383	Lotus	1	Apartments	\N	\N	1	\N	1	Oshiwara
56	0106000020E610000001000000010300000001000000050000000E5C2F971E355240CF215FF8772633402CD1FEAC1E3552405CBFAAC486263340306E597421355240A95CF2898626334013F9895E213552401CBFA6BD772633400E5C2F971E355240CF215FF877263340	249860393	Aakash	1	apartments	\N	\N	1	\N	1	Oshiwara
62	0106000020E61000000100000001030000000100000005000000CA856F0624355240F45FD67A752633401D9BD31B243552402DFFC64384263340F8E6920527355240289EB30584263340DA71C3EF26355240EEFEC23C75263340CA856F0624355240F45FD67A75263340	249860408	Himasai	1	apartments	\N	\N	1	\N	1	Oshiwara
50	0106000020E610000001000000010300000001000000050000000617862323355240DB81DF2B5F26334077CFCB7223355240338232326D2633404B89C9C026355240528770276C263340DAD08371263552402306CB225E2633400617862323355240DB81DF2B5F263340	249860375	Green View	1	apartments	\N	\N	1	\N	1	Oshiwara
41	0106000020E6100000010000000103000000010000000500000049F9A46E423552409775FF5888263340AE79FAAD4235524025EB70749526334023FA10AF4635524073744B6194263340F419506F46355240BB7F2C448726334049F9A46E423552409775FF5888263340	249860344	Swati Apt	1	yes	\N	\N	1	\N	1	Oshiwara
37	0106000020E610000001000000010300000001000000050000007CA3B15131355240BA151D249F2633407B16DFAB313552408C16FB26A82633409779066836355240757E4056A626334026C1C01836355240B5E8537D9D2633407CA3B15131355240BA151D249F263340	249860335	Link Way	1	Yes	\N	\N	1	\N	1	Oshiwara
45	0106000020E61000000100000001030000000100000005000000D53032B731355240A096D52AB026334046E97706323552400C42D4D8B926334079A576D036355240D8D825AAB726334008ED3081363552406B2D27FCAD263340D53032B731355240A096D52AB0263340	249860360	Central Excise	1	yes	\N	\N	1	\N	1	Oshiwara
51	0106000020E6100000010000000103000000010000000500000010BC10613235524074AC9C07C126334075255D8E32355240E6ECF88AC9263340313B3025373552400B9B012EC826334096314FF836355240985AA5AABF26334010BC10613235524074AC9C07C1263340	249860377	Central Excise	1	yes	\N	\N	1	\N	1	Oshiwara
47	0106000020E61000000100000001030000000100000005000000587AC8EF48355240F198261186263340FEBB992C49355240A9D5FC9D92263340A92160634D35524080E6BD7B9126334002E08E264D355240C8A9E7EE84263340587AC8EF48355240F198261186263340	249860366	Mahatarang	1	yes	\N	\N	1	\N	1	Oshiwara
60	0106000020E61000000100000001030000000100000005000000F988F3CB3B355240A7C013C48A263340E7A7380E3C35524082E7397D98263340A994E876403552400CFF8E4D97263340F1153834403552400759BB9289263340F988F3CB3B355240A7C013C48A263340	249860399	Matruchaya	1	yes	\N	\N	1	\N	1	Oshiwara
42	0106000020E6100000010000000103000000010000000500000059F388763A355240FDD2478556263340187728AF3A3552403F13060A61263340514F1F813F35524070CBEC985F26334092CB7F483F3552402E8B2E145526334059F388763A355240FDD2478556263340	249860345	Matrochhaya	1	apartments	\N	\N	1	\N	1	Oshiwara
58	0106000020E61000000100000001030000000100000005000000696677923E3552409865F448282633401B0E4B033F355240F9FB20263C2633407980DD9F413552404DE60E513B263340FC789E2E41355240EC4FE27327263340696677923E3552409865F44828263340	249860396	SBI	1	QUARTER	\N	\N	1	\N	1	OSHIWARA
34	0106000020E6100000010000000103000000010000001D000000CDD4DAEA283552400E3CAD9113263340C7E6F40629355240B64D4C721B26334020CDFD7A2A355240ABE7493E1B2633407324E18C2B355240480FE8F120263340193268322D355240FD5536621C26334049A297512C355240E881340818263340966A55012D355240AF67BE391226334049A297512C3552404BD6975B10263340ADC32C0F2D355240114020860C2633407706578A2E355240774D486B0C26334059BF99982E355240A2C4F87A0826334065DDE45C2F355240202E94A707263340A03AB1E22F3552403DB7D095082633406BCBCA402F355240E393A9DD0A2633403B5B9B2130355240935A83520F263340B1F8F2A7323552404FDA0A50092633402DD21FF5323552401E75CF1500263340A03AB1E22F3552405025B9B2FA253340D04B20802F3552401E75CF15002633407D53FDEF2D355240E88F1FE0FF253340E8C138132E355240E05EE34405263340966A55012D355240EBC4E57805263340EA0F28F62B355240B867A730002633400874266D2A35524028E3CE3B0426334085EE92382B3552403DB7D095082633407FBE2D582A3552409A93BCDF0D2633407383A10E2B355240A47DBD0C1026334014F131B32A355240856C0F3114263340CDD4DAEA283552400E3CAD9113263340	249860328	Tarapore Towers	1	yes	\N	\N	1	\N	1	Tarapore Garden
40	0106000020E6100000010000000103000000010000001D000000D162844B2235524055450257C3253340B31BC7592235524018F3CEFCC5253340D1A79F8122355240F47810F1C5253340D1BEA893223552407B50AB43C9253340418EF7F422355240B7DE2527C9253340F4C29D0B23355240BB473657CD253340B993E3A9223552407FB9BB73CD253340890F47B22235524013735A01CF2533406B836E8A2235524037ED180DCF25334083DC45982235524006A5C39ED1253340183D5C17233552407640C868D3253340CA575DE2233552409A5E622CD32533401D56B8E523355240E10A28D4D3253340F9799D1E25355240C3393476D3253340E798E26025355240F4F11A05D22533403A80345225355240EF54C03DCF253340881D7C1725355240BACB3450CF253340C3ABF6FA24355240C2FC70EBC92533406A6391CB2435524010F6DCF8C9253340BE4AE3BC2435524088D68A36C7253340179348EC243552403BDD1E29C72533404617E5E324355240CB9D3EA7C5253340F9799D1E253552400027CA94C525334005847B0A25355240440E5BC4C1253340E7B287AC24355240A44ADE4AC02533407D02CD8C23355240F19F6EA0C02533409A60939023355240D943FB58C1253340DC0DA2B52235524032A3699AC1253340D162844B2235524055450257C3253340	249860343	Tarapore Towers	1	apartments	\N	\N	1	\N	1	Tarapore Garden
38	0106000020E610000001000000010300000001000000050000006478EC67313552408F3E41BD742633408765D8CD31355240173F32C280263340794CEEC135355240B3AD0BE47E263340565F025C353552402AAD1ADF722633406478EC67313552408F3E41BD74263340	249860339	Sanskar	1	apartments	\N	\N	1	\N	1	Maheshwari Chowk
32	0106000020E6100000010000000103000000010000000D0000007F00AD542B3552409CB34F11F12633402BE8AC052C3552409B030473F42633406C4A68812C355240902D701EF3263340AD1F51572D355240645A9BC6F6263340D1B3B4AE2C3552409306126FF826334078ADCE7B2D355240A36593B2FB263340DB38BDE630355240C0417BF5F12633401726F84B30355240C1F1C693EE263340590119952F355240F7EAE3A1EF26334053FFC5D82E355240934550EBEC2633400CC391512F355240ED7CE47BEB26334047B0CCB62E355240DDC13EF0E72633407F00AD542B3552409CB34F11F1263340	228031933	Anand Vihar	1	residential	\N	\N	1	\N	1	Walawalkar
31	0106000020E61000000100000001030000000100000007000000046A7B05333552402B627DA8D92633400E68E90A36355240605B9AB6DA263340D8F5662F36355240D07A9D79DE2633404FDE115F3735524082250D24DE263340F6C3BE5337355240BF5A5AB2CF263340D4E5DE0D3335524077EADB93D1263340046A7B05333552402B627DA8D9263340	228031930	East Side Apartments	1	apartments	\N	\N	1	\N	1	Walawalkar
33	0106000020E61000000100000001030000000100000018000000C7516FFC3F35524010977730BD263340613B736A42355240F8962831BE2633401FBF12A342355240FAD6E2AEB926334008944DB942355240AFC10CD7B426334013E346DB4235524064AC36FFAF2633401941BEDF4335524043160E29AB2633406B50EA81453552407AAB09FDA72633400BB842B346355240814067D2A62633401DD8E03348355240C8009A52A82633402EF87EB4493552406D814E52AA263340DAAED0074B355240A62B3300AF26334050ABE80F4D355240086BAD799F2633407A1629394C355240ED5575A098263340235635F74635524022ABB6F69926334017073CD546355240972BCDF79D2633409AFFFC63463552404E2BE0F9A0263340779FE3A345355240FB40F2CEA1263340B9A8161145355240972BCDF79D263340263D676641355240A5164A26A726334032FF8DE241355240C16B3C7DA926334026B094C041355240906B9E7EAB2633401AEE6D44413552409C4132D3AC263340C7C49C56403552403D81B053AC263340C7516FFC3F35524010977730BD263340	249860327	Meera C.H.S.	Link Road Extension, Oshiwara, Andheri West	residential	\N	\N	1	\N	1	Gujarat Bhavan
48	0106000020E61000000100000001030000000100000005000000AE79FAAD4235524058135509602633406DFD99E642355240A0E870636926334047FE052747355240FA1F05F467263340887A66EE46355240DCC9969B5E263340AE79FAAD423552405813550960263340	249860369	Andhra bank	1	quarters	\N	\N	1	\N	1	oshiwara
54	0106000020E61000000100000001030000000100000005000000BC81B8614A35524042CCCA9B6826334069F68AB84A35524098D41A947A263340FC1FBB664D355240B0308EDB7926334050ABE80F4D3552405A283EE367263340BC81B8614A35524042CCCA9B68263340	249860386	SBI quarters	1	apartments	\N	\N	1	\N	1	Oshiwara
59	0106000020E61000000100000001030000000100000005000000B408201043355240A8CEFE9B7226334037D0324143355240A2BE1BC17C2633402F7480BB4735524085D9BA8A7B263340ACAC6D8A473552408AE99D6571263340B408201043355240A8CEFE9B72263340	249860398	Andhra Bank Quarters	1	apartments	\N	\N	1	\N	1	Oshiwara
65	0106000020E6100000010000000103000000010000000500000074BD23192835524015A6947C91253340F1AD5978283552405F48E240A3253340B45B261E2B355240AD2DE175A2253340386BF0BE2A3552408C0A41B39025334074BD23192835524015A6947C91253340	249860415	Blue Bell	1	apartments	\N	\N	1	\N	1	Oshiwara
79	0106000020E61000000100000001030000000100000005000000BFA4E7CC2C355240DAC9E028792533406614CB2D2D355240A1455B3A8B253340F93DFBDB2F355240C5ABAC6D8A2533401D2E837B2F355240FE2F325C78253340BFA4E7CC2C355240DAC9E02879253340	249860451	Sunshine	1	Apartments	\N	\N	1	\N	1	Oshiwara
67	0106000020E610000001000000010300000001000000050000001A41745229355240679C86A8C22533400E93BAAE293552404C7963F7D32533407E703E752C355240CAE2FE23D32533408A1EF8182C355240BB8674D3C12533401A41745229355240679C86A8C2253340	249860421	Daffodil	1	apartments	\N	\N	1	\N	1	Oshiwara
69	0106000020E6100000010000000103000000010000000500000000A5468D2E3552409D11A5BDC12533405316CFEA2E35524011D77B3BD3253340BD923F733135524059B78B7AD22533406A21B71531355240E5F1B4FCC025334000A5468D2E3552409D11A5BDC1253340	249860425	Marigold	1	Apartments	\N	\N	1	\N	1	Oshiwara
86	0106000020E61000000100000001030000000100000005000000C1093B7B1D355240BC48579F61263340B55B81D71D3552406E4CF49E6F263340486B0C3A21355240566C825E6E2633408AB95ADD20355240CFE7926060263340C1093B7B1D355240BC48579F61263340	249864713	Eden Garden	1	apartments	\N	\N	1	\N	1	Oshiwara
68	0106000020E610000001000000010300000001000000050000007E8747872C3552407B4963B48E2633408F1DAF9B2D355240F480C355AF263340647B88A130355240773705E8AD26334053E5208D2F355240FFFFA4468D2633407E8747872C3552407B4963B48E263340	249860424	Goenkar college	1	School/colleges	\N	\N	1	\N	1	Oshiwara
83	0106000020E61000000100000001030000000100000005000000EE7893DF223552403AC0DDA348263340B84B2C3A233552403ED6427F57263340E77E3D15263552402752F58656263340E70B10BB25355240233C90AB47263340EE7893DF223552403AC0DDA348263340	249860469	Amity	1	apartments	\N	\N	1	\N	1	Oshiwara
80	0106000020E61000000100000001030000000100000005000000D9C4138B29355240CFFF06488F263340BBA8CC832A3552408AD640A9AC263340014CBE7E2D3552408B0A8B40AB26334054089A852C355240CF3351DF8D263340D9C4138B29355240CFFF06488F263340	249860456	HVPS Catering College	1	School/college	\N	\N	1	\N	1	Oshiwara
89	0106000020E610000001000000010300000001000000050000000158D3AB373552408D203AA9D425334060A527D137355240550F3DCED92533404C981F6E3D355240AF326486D725334022EB5F483D355240E8436161D22533400158D3AB373552408D203AA9D4253340	249897536	Harshwardhan Chamber	1	yes	\N	\N	1	\N	1	Oshiwara
71	0106000020E61000000100000001030000000100000005000000C478CDAB3A355240E94482A9662633407DE074DC3A3552401ABE2ABC70263340F762DE993F355240326255736F2633403FFB36693F35524002E9AC6065263340C478CDAB3A355240E94482A966263340	249860429	Parth	1	apartments	\N	\N	1	\N	1	Oshiwara
70	0106000020E610000001000000010300000001000000050000001DD8E033483552408D333CAC26263340A52E19C74835524013F4723337263340BC1F5CA64B355240C12962C73526334033C923134B3552403A692B40252633401DD8E033483552408D333CAC26263340	249860428	Yashodeep	1	apartments	\N	\N	1	\N	1	Oshiwara
90	0106000020E61000000100000001030000000100000005000000BDE6B05648355240EC9804B9D5253340D584A39A483552407C0679E2DE253340B5E9BE524C35524065CAE259DD2533409E4BCC0E4C355240ABDDC02ED4253340BDE6B05648355240EC9804B9D5253340	249897537	Godavri	1	yes	\N	\N	1	\N	1	Oshiwara
91	0106000020E610000001000000010300000001000000070000001F679AB07D355240D526A9A7EA253340A18735F07E355240719EFBBCF325334022403C0183355240581932C3EB25334094B6025482355240EF8E8CD5E6253340E214675680355240C91CCBBBEA253340B9DD70C47F355240C0AECB95E62533401F679AB07D355240D526A9A7EA253340	249897540	Diamond colony	1	yes	\N	\N	1	\N	1	Oshiwara
92	0106000020E6100000010000000103000000010000000700000059D537D57F355240B433F1B33626334089111D5D8035524069F349383E263340CAE6053381355240635EEC623F2633404C384FD08135524059D306712F263340D64FA4A080355240D63CA29D2E263340A1C9B4EC7F355240B1FE2A1B3126334059D537D57F355240B433F1B336263340	249897546	Spice tower	1	yes	\N	\N	1	\N	1	Osh
85	0106000020E61000000100000001030000000100000022000000871167EA1A355240CD8A4DD0CB253340E02BBAF51A355240317898F6CD253340FECE9B2F1B3552409180D1E5CD2533401628733D1B355240B336D77AD02533404B6947BB1B355240358584DED1253340E59D9ED21C35524012AFA18AD1253340BC35FAE21C3552409325299FD4253340FD3B91161D3552401CAD0F90D4253340F131B32A1D355240DFCA6D56D8253340A37AC6191E355240DF6E490ED82533409759DF1B1E3552409D37047DD8253340B558E59D1E355240DFCA6D56D8253340975643E21E3552406EE7B11CD725334020C720C11E355240CB02DCE2D02533400E7338A91E3552409B7E3FEBD02533405B559BA41E3552401EEDC90DD0253340915154EC1E3552400178FAF7CF253340913A4BDA1E355240A31F0DA7CC25334038F2E5AA1E3552401A9826B6CC2533403EF7D4A01E3552406308A5D4CA2533409DE8047E1E3552405D03B6DECA2533406D4D5F741E35524016E75E16C92533400E5C2F971E3552401CEC4D0CC9253340A3EDF3731E3552407FB04280C22533407912222A1E3552404AB72572C1253340AA262D011D355240EA0A11CBC12533408C5539A31C35524007A8BA91C325334086504AAD1C355240C53C2B69C5253340B6BDDD921C35524095B88E71C52533404578C59D1C3552408832AF7EC7253340150B32B81C355240E135F977C72533408C834BC71C355240B64EB747CA253340A5B448241B355240C210DEC3CA253340871167EA1A355240CD8A4DD0CB253340	249860500	Tarapore Towers	1	apartments	\N	\N	1	\N	1	Tarapore Garden
95	0106000020E61000000100000001030000000100000009000000D46B69247835524098A7CEFE9B263340165BF745783552405899DF1FA526334085D61E517C35524021F07673A7263340D214A6947C3552405628D2FD9C263340C69162DB7D35524034CEF0B09A263340963BD8077E35524046088F368E263340EA5910CA7B355240AC5D6E8B8D26334050502F9D7B3552405DBD2FD39B263340D46B69247835524098A7CEFE9B263340	249897561	Vaibhav palace	1	yes	\N	\N	1	\N	1	Osh
97	0106000020E610000001000000010300000001000000070000007E48090B383552407CAA549ADE253340726C3D4338355240D119BDBFE6253340E366028F3935524072593B40E6253340246D99C239355240332372B0ED2533403B7B1D273B355240DA67DF26ED253340D0B0BDBB3A355240C42E4091DD2533407E48090B383552407CAA549ADE253340	249897563	Link plaza	1	yes	\N	\N	1	\N	1	Oshiwara
72	0106000020E6100000010000000103000000010000000500000047AA944330355240E2F9563552263340B25DEB9C303552404E017A2B5C263340805479F1343552406D9626005A2633404A41B79734355240018F030A5026334047AA944330355240E2F9563552263340	249860432	Utsav	1	apartments	\N	\N	1	\N	1	Maheshwari Chowk
78	0106000020E610000001000000010300000001000000050000009A91E634303552404320F2F164263340A60EF27A303552402DEDD45C6E26334080C7A64B35355240876C205D6C263340744A9B0535355240742090F0622633409A91E634303552404320F2F164263340	249860449	Rajnigandha	1	apartments	\N	\N	1	\N	1	Maheshwari Chowk
75	0106000020E610000001000000010300000001000000050000000BCE853625355240C3EA347799263340D5A01E9125355240534145D5AF263340AAFEF796283552406598C926AF263340E02B5F3C28355240D641B9C8982633400BCE853625355240C3EA347799263340	249860438	Rajrani Malhotra Vidyalaya	1	school	\N	\N	1	\N	1	Walawalkar
82	0106000020E61000000100000001030000000100000005000000F4893C493A355240533C2EAA45263340B20DDC813A355240AE7C3B2E4F263340CE42F1193F355240C0BF52A74D2633400FBF51E13E355240667F452344263340F4893C493A355240533C2EAA45263340	249860466	Kaveri	1	apartments	\N	\N	1	\N	1	Gujarat Bhavan
81	0106000020E610000001000000010300000001000000050000007D4D2036223552406F7F2E1A32263340EE05668522355240622AA2CB40263340EDF9F59E253552401B22B8DB3F26334046A11B502535524052F6F12B312633407D4D2036223552406F7F2E1A32263340	249860462	Suryakiran	1	apartments	\N	\N	1	\N	1	Oshiwara
77	0106000020E61000000100000001030000000100000005000000A690758247355240A1C5089744263340BE2E68C647355240267156444D2633408BDD3EAB4C3552403F0114234B263340743F4C674C35524091D6187442263340A690758247355240A1C5089744263340	249860444	Sebigorav	1	apartments	\N	\N	1	\N	1	Oshiwara
63	0106000020E61000000100000001030000000100000005000000E904D95743355240B065434827263340C0266BD4433552401891CDFA39263340E266A7D5463552406C1F97DD382633400C4515594635524004F40C2B26263340E904D95743355240B065434827263340	249860410	SBI	1	Quarters	\N	\N	1	\N	1	Oshiwara
87	0106000020E610000001000000010300000001000000050000002E217AAD5F355240D220600894263340C910B68E60355240D97FF854A92633409D57868263355240B6DD5F98A726334003684AA16235524086FF194A922633402E217AAD5F355240D220600894263340	249897526	Under construction	1	yes	\N	\N	1	\N	1	Oshiwara
88	0106000020E61000000100000001030000000100000008000000B278FBBD5E355240312E0BDC70263340DB7E43F25F355240DB9953138E263340CE99A37D6235524094D920938C2633402D8E6F94613552402F5EE27E76263340331D95F6613552401DF3F05476263340093F27736235524070952710762633406902452C623552407A9E89FA6E263340B278FBBD5E355240312E0BDC70263340	249897534	Jai ambe	1	yes	\N	\N	1	\N	1	Oshiwara
66	0106000020E610000001000000010300000001000000050000008785FF194A355240B7121505552633409E23F25D4A355240A9BD88B66326334044FD2E6C4D355240212235ED622633402C5F3C284D3552402E77C13B542633408785FF194A355240B712150555263340	249860418	Gujarat bhavan	1	apartments	\N	\N	1	\N	1	Oshiwara
96	0106000020E610000001000000010300000001000000050000000008B3646935524037E2C96E66263340296DBB1A6A355240B013A80F6E263340DA67DF266D355240ED9925016A263340B102D7706C35524074684760622633400008B3646935524037E2C96E66263340	249897562	Valmiki	1	Yes	\N	\N	1	\N	1	SRA
93	0106000020E6100000010000000103000000010000000A000000352FE2966A355240049E6AE33E263340157DF43C6E355240A5DDE8633E263340157DF43C6E3552409E488B8E3F263340266F80996F35524051F3FA383F26334032BE79BB6F355240BB89100D4126334097523CD37035524062BA10AB3F2633401A06E22B703552402503401537263340324B4C616F3552408CC0B39833263340E76388AD6A355240C8AA52C433263340352FE2966A355240049E6AE33E263340	249897555	Sunni madhina	1	majid	\N	\N	1	\N	1	Oshiwara
103	0106000020E61000000100000001030000000100000007000000E904D9574335524028C819D4C8243340592A148E45355240CF7C186BC9243340B258D47146355240241CC418A22433409BA3D81B4635524060AA3EFCA124334089940B3A46355240214322C89C2433403C2EAA4544355240EC014E4A9C243340E904D9574335524028C819D4C8243340	250492234	\N	\N	yes	\N	61	\N	\N	\N	\N
104	0106000020E610000001000000010300000001000000060000003412A1116C3552409882DA14342433407A7077D66E35524009AE4DBE3424334050E3C5016F3552403B83E2B42D2433404A5AA14E6C355240CABF8BE22D243340486E4C2C6C3552407D2E9AF52D2433403412A1116C3552409882DA1434243340	250492235	\N	\N	yes	\N	61	\N	\N	\N	\N
105	0106000020E610000001000000010300000001000000060000009D06561F593552402A3009BC382433406BB52C045E355240C44ABB873A243340A14F04275E3552401B121F38352433407F7B35E35D35524029BFD858352433409D336528593552400D71865A372433409D06561F593552402A3009BC38243340	250492238	\N	\N	apartments	\N	61	\N	\N	\N	\N
107	0106000020E6100000010000000103000000010000000E0000009C1D04786635524093E00D6954243340FB534F8B66355240C579933A5C24334031DDDA786635524042F79B3F5C243340902A2F9E663552404468A9616424334034886AA56B355240338D2617632433407649E6A26B355240095630856224334075BC13FD6B355240C261B36D62243340A5FB94BE6B355240A0D67E7C532433403A5F47776B3552406A4DF38E532433406BBB09BE69355240589A4AF553243340EE6B13DD693552409CE678605B2433407D5A457F6835524066B911BB5B243340B3E3D06C68355240E7824424542433409C1D04786635524093E00D6954243340	294276588	\N	\N	yes	\N	61	\N	\N	\N	\N
108	0106000020E6100000010000000103000000010000000500000018DCC5EA453552401A4DD30C4E253340706072A34835524061F998B44E2533404021F1E1483552405C3F582140253340E89C442946355240159392793F25334018DCC5EA453552401A4DD30C4E253340	294276613	\N	\N	yes	\N	61	\N	\N	\N	\N
109	0106000020E6100000010000000103000000010000000500000071B7DA7951355240D74B53043825334004519C48553552404D486B0C3A253340BCE6559D553552403AB4233031253340294D94CE51355240C4B70B282F25334071B7DA7951355240D74B530438253340	294276614	\N	\N	yes	\N	61	\N	\N	\N	\N
111	0106000020E61000000100000001030000000100000005000000266607A6643552406AD322EC252533406C239EEC663552404B2A093F27253340242C859B67355240428BB67416253340DE6EEE54653552406034D02115253340266607A6643552406AD322EC25253340	294276617	\N	\N	yes	\N	61	\N	\N	\N	\N
112	0106000020E61000000100000001030000000100000009000000CFA513645F35524079FC28345A2433400B79A97D5F35524021567F8461243340BC48579F61355240B78B1F19612433404B033FAA61355240A975D14664243340A9E8FEA0643552402C4080B163243340264FFE936435524093A1CFEC5F2433400778D2C265355240E13E17B25F243340F623EAAA65355240DE99BFF858243340CFA513645F35524079FC28345A243340	294276618	\N	\N	yes	\N	61	\N	\N	\N	\N
113	0106000020E610000001000000010300000001000000050000000F94803D4B355240E38FFD874F253340EA10EE844D355240B3C3A92050253340BAD16CC34D355240C0E4EBD742253340DF54FF7B4B355240F0B03F3F422533400F94803D4B355240E38FFD874F253340	294276619	\N	\N	yes	\N	61	\N	\N	\N	\N
114	0106000020E6100000010000000103000000010000000500000054A4671F503552409049EB1450253340F9F36DC152355240061E296C502533406A6798DA52355240A70C778945253340FBB7263850355240303839324525334054A4671F503552409049EB1450253340	294276620	\N	\N	yes	\N	61	\N	\N	\N	\N
115	0106000020E61000000100000001030000000100000005000000BC98C1734A3552405631F0373525334079DF42684E355240E519EA6635253340B49BCF6F4E355240A806F5882C253340F8544E7B4A355240191EFB592C253340BC98C1734A3552405631F03735253340	294276623	\N	\N	yes	\N	61	\N	\N	\N	\N
117	0106000020E61000000100000001030000000100000009000000F0EDA7105935524053B4722F30253340908312665A35524082F057B73025334049788C3C5A35524030D39BF6392533405A6A18995B355240A7A7D94D3A253340E3642CE45B3552409D08878329253340D272A0875A3552402634492C29253340DE9387855A355240AF7378AD2925334008759142593552402634492C29253340F0EDA7105935524053B4722F30253340	294276627	\N	\N	yes	\N	61	\N	\N	\N	\N
118	0106000020E610000001000000010300000001000000090000008F6E844545355240703DAF1D31253340714FA10447355240C9F841A7312533401147681547355240D60E90792E2533401172DEFF47355240246420CF2E253340AB7BBF2C48355240C25A6BDE272533409A136A3C473552409E84888A2725334082E8A452473552402F09617F23253340A107889345355240D64DCEF5222533408F6E844545355240703DAF1D31253340	294276628	\N	\N	yes	\N	61	\N	\N	\N	\N
125	0106000020E6100000010000000103000000010000000F000000A166481545355240B4C299041425334040941E3C493552404B6947BB1B253340ECA930114A3552409D52B9E41325334093C08B63493552408B77369A12253340A5E66157493552408BD35AE21225334077F86BB246355240764710F80D253340DC33A6BB46355240EE3B2B0E0C2533400B87945547355240C4BC7D0C0C253340D52B1B8C473552408CEABEAD0525334023FA10AF46355240C49F974000253340DC3642F545355240BF863B72FF2433400055DCB845355240B2ADB02A0C2533400643C29C45355240567E198C11253340E89FE0624535524015EBAFB211253340A166481545355240B4C2990414253340	357305658	\N	\N	apartments	\N	61	\N	\N	\N	\N
126	0106000020E610000001000000010300000001000000050000000DCDD0D35B355240BFA7284D3925334017B7D1005E3552408375D2B139253340DC6D72535E355240B43BA41820253340D18371265C355240F06DFAB31F2533400DCDD0D35B355240BFA7284D39253340	357305671	\N	\N	yes	\N	61	\N	\N	\N	\N
127	0106000020E6100000010000000103000000010000000500000043E7902F7C35524011C07229532533404343B5777C3552404752770A5E253340721D3E447E355240ADA7565F5D2533403D2185FC7D355240A094FF7F5225334043E7902F7C35524011C0722953253340	357305680	\N	\N	yes	\N	61	\N	\N	\N	\N
128	0106000020E6100000010000000103000000010000000500000010F4064E6C35524095D39E927324334068A961646E355240549C59017424334027721CD36E355240E001542756243340991C2DBD6C355240223999B85524334010F4064E6C35524095D39E9273243340	357305681	\N	\N	yes	\N	61	\N	\N	\N	\N
129	0106000020E61000000100000001030000000100000006000000B15AC08053355240E9AFFC9B39243340DAB4ADC156355240FA2F6BBD3A243340679E80D0563552404A720659382433402B7C53D055355240E0BEB4C5382433405B5CB79853355240CF3E439139243340B15AC08053355240E9AFFC9B39243340	357305683	\N	\N	apartments	\N	61	\N	\N	\N	\N
130	0106000020E6100000010000000103000000010000000D0000000646031D52355240096355CE28253340DCC3B9E1523552409EAC623B29253340055A70F5523552409F2864422725334088D9CBB653355240E07316AC2725334029A380A353355240DFF714A52925334070AB6A9354355240BB359F292A25334081728005553552401A7D16951E253340D52E5C0C54355240EB40310D1E253340F37519FE53355240BA884A7E1F2533406ADAC53453355240FCBF8F0F1F2533404C930843533552402C78769E1D253340170D198F5235524092297A3B1D2533400646031D52355240096355CE28253340	358508758	\N	\N	yes	\N	61	\N	\N	\N	\N
131	0106000020E6100000010000000103000000010000000D000000A98020E54C3552405FA16A4F242533407FFED6A94D355240C96BCABA24253340DE3422BD4D355240CAE7CBC1222533402B14E97E4E3552400C337E2B23253340027E326B4E35524034362A262525334013E6875B4F355240E7F406A92525334025AD9DCD4F35524070BB2B161A253340AE090ED44E3552401700998C1925334096B036C64E355240E647B2FD1A2533400E15E3FC4D355240287FF78E1A253340F0CD250B4E3552405837DE1D19253340BB4736574D355240BEE8E1BA18253340A98020E54C3552405FA16A4F24253340	358508761	\N	\N	yes	\N	61	\N	\N	\N	\N
100	0106000020E6100000010000000103000000010000000900000010C935AA783552401159FF42EA2533405CD372567A355240C25C9C42F8253340CC82E4F87C355240189BB1C3F3253340563E15817B355240363B527DE725334049E9E3EB7C35524026F03D12E5253340625FFC7E7B355240E4E3C924D9253340BC8223377935524095F25A09DD25334003E7316F7A355240075B913DE725334010C935AA783552401159FF42EA253340	249897574	Vijay vishal	1	yes	\N	\N	1	\N	1	Oshiwara
110	0106000020E6100000010000000103000000010000000500000046747401543552401135D1E7A32633404674740154355240CCB161F2AB263340E5BBEF7357355240CCB161F2AB263340E5BBEF73573552401135D1E7A326334046747401543552401135D1E7A3263340	294276615	Mahatarang	1	Apartments	\N	\N	1	\N	1	BMC Colony
101	0106000020E61000000100000001030000000100000005000000D26D2EA37D355240243A15BA5C263340364470B77F355240820E04125E263340896D41A58035524093D79475492633402497FF907E3552405E82531F48263340D26D2EA37D355240243A15BA5C263340	249897575	Spice Tower	1	SoC prvt	\N	\N	1	\N	1	Anand Nagar
106	0106000020E61000000100000001030000000100000005000000D873E3271F3552402BDCF29194263340E47A25DA1F35524034B511F4BC263340775F3A52223552403A02B859BC2633406C58F89F2135524008AAEBF593263340D873E3271F3552402BDCF29194263340	294272982	Shantivan Bldg no. 4-7	Off New Link Road	residential	\N	\N	1	\N	1	Walawalkar
124	0106000020E6100000010000000103000000010000000700000043DF82112035524054E7ACAAF2263340B452AD2A203552401A828879FB2633405F03C70A233552408B3D6A02FB263340C410EFEF223552408A5CCBBFF1263340244AD63C223552404FCE50DCF12633404EC9833E22355240B493C151F226334043DF82112035524054E7ACAAF2263340	352937296	None	1	yes	\N	\N	1	\N	1	Walawalkar
116	0106000020E61000000100000001030000000100000005000000354069A8513552406E98B21D9D2633402F5283C451355240DEF4786BAA2633401DB0ABC9533552400213132FAA263340239E91AD5335524068379FDF9C263340354069A8513552406E98B21D9D263340	294276624	Swati	1	Apartments	\N	\N	1	\N	1	BMC Colony
98	0106000020E610000001000000010300000001000000050000008D5D47C1783552408BDEA9807B263340D1AFAD9F7E3552409B994F0C7F263340E94DA0E37E355240FEB968C878263340A4FB390579355240EEFEC23C752633408D5D47C1783552408BDEA9807B263340	249897567	Sandipani	1	Society	\N	\N	1	\N	1	Anand Nagar
102	0106000020E61000000100000001030000000100000007000000331D95F6613552401DF3F05476263340AAACB71762355240274D83A27926334084C19030673552405839B4C8762633403755F7C86635524057E883656C2633406902452C623552407A9E89FA6E263340093F2773623552407095271076263340331D95F6613552401DF3F05476263340	249897576	Jai Ambe	1	Sra	\N	\N	1	\N	1	Anand Nagar
121	0106000020E610000001000000010300000001000000090000000B9C6C037735524073C6E6994D263340C31A1D4677355240D4AFBECB562633401C63827577355240E0B99CB75626334022AD8CA177355240183037CE5C263340800BB265793552405A0B58175C2633407B4E7ADF7835524051442B9C492633409956540E773552408DE612584A26334016EB652577355240FC4DCD8A4D2633400B9C6C037735524073C6E6994D263340	352922214	Under construction	1	yes	\N	\N	1	\N	1	Oshiwara
123	0106000020E6100000010000000103000000010000000500000063E64C246235524081542F641A2633402741C92E623552404793E6EA22263340612294AD643552400CA947BF22263340672783A364355240466A90381A26334063E64C246235524081542F641A263340	352937294	BMC	1	Washroom	\N	\N	1	\N	1	Oshiwara
120	0106000020E6100000010000000103000000010000000E000000FD6BD49E6D355240247F30F0DC2533403337DF886E35524075E1AC2DE1253340D9D4D40D6F355240ED31EC8BDF2533403EF669CB6F355240F997EEBFDF253340A331A4D46F355240A671B90BDE2533408B4BFA2070355240DC566941DE25334061FA5E4370355240866BFF14D8253340C7F07D167035524074000EEBD7253340A992B712703552409E57E13BD62533400E2DB29D6F355240B6C7C15BD6253340AF2715E86E355240A62089A8D32533409259BDC36D355240C81E46ADD525334009E643AB6E355240612D8892DA253340FD6BD49E6D355240247F30F0DC253340	352922204	Serenity	1	Residential	\N	\N	1	\N	1	Oshiwara
132	0106000020E6100000010000000103000000010000000D000000D50EDA06493552403608CE740A2533403473373E493552400C9D8D4B0B253340221F4F2649355240408A3A730F2533404AAC318D4B355240C4D963D817253340B5487FD44B3552401E6D1CB11625334068AB370F4C355240A708707A17253340320807D64C3552400D2208461425334080A54E9B4C3552405B07077B13253340383B08F04C3552405636621C1225334098778B764B355240B2C11D030D253340E51137024C3552403123BC3D08253340F857EAB4493552401602147E04253340D50EDA06493552403608CE740A253340	358822891	\N	\N	yes	\N	61	\N	\N	\N	\N
136	0106000020E61000000100000001030000000100000015000000B95BEDBC68355240F80B2C369C243340358EA2186A355240E6FC5E549C24334094ADE4196A355240045EC1919B24334029E0E8746A355240D4D9249A9B243340942012746A355240ECA529029C2433401D4938E36A355240E6A03A0C9C24334052E9CCE26A3552403F00A94D9C2433401C5DA5BB6B35524033F6CA619C243340289595CB6B35524008DE358D9224334070308AD46A355240EB68667792243340A6D01ED46A35524050D2B2A492243340C4BBB77D6A355240A9D5FC9D92243340CFDC9E7B6A355240BAB07FE8932433401142F6306A35524014B4C9E19324334005210F336A355240D959999592243340C493DDCC68355240C1E9B87592243340E8F692C6683552408F6D1970962433402F4734266935524060E97C7896243340A6A8442369355240171DDA11982433402AB80EC4683552401D22C90798243340B95BEDBC68355240F80B2C369C243340	358831990	\N	\N	yes	\N	61	\N	\N	\N	\N
137	0106000020E61000000100000001030000000100000008000000CBC97A20683552401E51A1BAB92433409A0EF8576A35524052E2299ABD243340B76922226B3552406495D233BD24334017E824A56A35524099B9C0E5B1243340D010E9126935524087BE60DCB2243340DC5FE2346935524013AF57FDB6243340590E999768355240613832EAB5243340CBC97A20683552401E51A1BAB9243340	358832004	\N	\N	yes	\N	61	\N	\N	\N	\N
138	0106000020E610000001000000010300000001000000060000009A38110D643552408B2F585F32243340D2A68F656635524056BB26A4352433400D4C135B66355240BD1C76DF3124334066D7484C66355240A1EF6D3831243340DF9A6C5D65355240773F03BD312433409A38110D643552408B2F585F32243340	358852089	\N	\N	apartments	\N	61	\N	\N	\N	\N
142	0106000020E6100000010000000103000000010000000500000091813CBB7C355240DD1DBEF15A24334059D29B9B80355240377D2C335B243340294EFFA3803552402816AEFD5324334061FD9FC37C355240CFB63FBC5324334091813CBB7C355240DD1DBEF15A243340	359269241	\N	\N	yes	\N	61	\N	\N	\N	\N
143	0106000020E61000000100000001030000000100000005000000A3E1390087355240D91DF7521D2533403226587787355240DE7B139E2B2533406C9159628A3552402CA9C9422A253340DD4C3BEB8935524051CA5AF91B253340A3E1390087355240D91DF7521D253340	359269244	\N	\N	yes	\N	61	\N	\N	\N	\N
144	0106000020E610000001000000010300000001000000050000000863FA1436355240849554B7C4253340F6532D3336355240EFB0E485CF2533402EC48FD63D3552402C5F3C28CD253340345651723D35524025654117C32533400863FA1436355240849554B7C4253340	417320262	Oshiwara Police Station	\N	yes	\N	61	\N	\N	\N	\N
145	0106000020E61000000100000001030000000100000014000000767176C652355240B3147FCAE7253340F90A77D352355240CF3EA07DF62533403A950C0055355240C334C291F62533408172800555355240068CE4E1F32533400A70308A543552401EA0A0B9F32533400A70308A5435524025C56C6EF12533402E5D1CF05435524019BB8E82F1253340C38F204B55355240B4C1D375F2253340E0771DBB553552400708E6E8F1253340275591C055355240C86C7F1DEE253340577A6D3656355240E0803BF5ED253340E0185D3956355240AB871EE7EC25334087D0F7095635524069E04735EC25334092F1DE0756355240EDDE4037EA2533407B0B355456355240C4EF0115E9253340456BA05456355240AE43DA6BE625334058B4EF405335524037CBC05CE6253340F34AA31353355240AE9FFEB3E625334041E8EAD852355240EF46D565E7253340767176C652355240B3147FCAE7253340	844471187	City International School	\N	school	\N	61	\N	\N	\N	\N
146	0106000020E610000001000000010300000001000000050000001D5723BB52355240E2EFCD250B263340B849FBD55235524024FC411317263340A6E7829F5D355240E460DB47132633407102D3695D3552407F36CD96072633401D5723BB52355240E2EFCD250B263340	844474525	Reliable Business Centre	\N	commercial	\N	61	\N	\N	\N	\N
147	0106000020E6100000010000000103000000010000002F000000E7AD15C847355240142C6920F124334058AB764D483552406C4320F2F124334052787533483552408ACC5CE0F2243340E7F230FE4735524066F6798CF22433401D65B3D94735524077D1FCD6F3243340E074DC3A493552402FBDA200F62433401C5F7B6649355240C482B174F424334040660C1849355240E23F38FAF3243340348A4050493552403DBF83FAF1243340B64EB7474A355240D77D117EF3243340A5CCBC0B4A355240946EA69DF52433407BF1EAC1493552405928E329F5243340B1636D9D49355240E7806E79F6243340E68A9CCF4A35524075914259F82433409EF243004B35524052EFA99CF62433400F94803D4B355240993F4BFCF62433406EF8DD744B3552409ABB4C03F524334015996F334B355240AD6EF59CF424334062EEFF884B355240FB73D190F1243340C2C826544B355240BA281F27F1243340333C516D4B35524067BA3203F024334032F499FD4B355240D2E0B6B6F0243340DF5163424C35524027EB81A0ED243340098CF50D4C355240CE8B135FED24334009A3FE1F4C35524075745C8DEC2433406E26F0984B355240584744E7EB243340D94F10864B355240AB590CC3EC243340330E3F494B35524057FF8C77EC243340CEBBFB2D4B355240C8E248B1ED243340570163224A355240B707C666EC243340C25895334A3552402E6C729DEB2433404B9B60EE49355240E116E247EB2433403F9182024A35524094090962EA2433405DAA2DD0493552408EA8F523EA243340A59EAAE7493552402F302B14E92433407562C55F49355240E883656CE8243340B1F03F4349355240E8F3F68CE9243340933655F7483552407D299721E9243340C375D6B848355240B1EE6998EB243340812788154935524063AD461BEC243340649BAFED483552409E639BAFED243340B76BF8CC483552400F7BA180ED2433408E90268348355240BB004576EF243340704969914835524008B2F913F024334005F23680483552402CE400B0F0243340115BD5ED47355240DFD627CAEF243340E7AD15C847355240142C6920F1243340	986880185	\N	\N	apartments	\N	61	\N	\N	\N	\N
141	0106000020E61000000100000001030000000100000005000000E30C0FAB893552404D5CD8E43A253340D18778358A355240F796CD774B2533404165FCFB8C355240E6BB4A2D4A2533401D4AFE718C3552403C81559A39253340E30C0FAB893552404D5CD8E43A253340	359269240	Range heights	None	Commercial	\N	\N	1	\N	1	Behram baug
76	0106000020E6100000010000000103000000010000000500000074E558831C355240F12900C63326334068098DBB1C355240F63F65A14226334043835EC91F355240D8124DFB4126334085FFBE901F355240D4FCE71F3326334074E558831C355240F12900C633263340	249860442	Mayfair	1	apartments	\N	\N	1	\N	1	Oshiwara
57	0106000020E61000000100000001030000000100000005000000163A652431355240E06AF8718F263340BD923F7331355240ED5575A09826334050296508363552403C6FBE6C96263340DF701FB9353552402F84413E8D263340163A652431355240E06AF8718F263340	249860394	Income Tax Office	1	Government office	\N	\N	1	\N	1	None
39	0106000020E610000001000000010300000001000000050000006E5974A1283552405E4887873026334033F90BE2283552408ED59C723B2633405AF047F62D35524036AA78C83926334060B01BB62D355240DC9DB5DB2E2633406E5974A1283552405E48878730263340	249860342	Maheshwari Hall	1	yes	\N	\N	1	\N	1	Oshiwara
64	0106000020E6100000010000000103000000010000000500000011B4B8B53B35524094FB78437526334011F9D3EB3B355240CAE9A16C8026334009861854403552402A82493B7F263340D3A0681E40355240F49320127426334011B4B8B53B35524094FB784375263340	249860412	Ekdanth	1	Ekdanth	\N	\N	1	\N	1	Oshiwara
94	0106000020E6100000010000000103000000010000000D00000030AB668C4535524085F46FF2B62533400055DCB845355240C4F473F9C52533404771338147355240719AF4ADC52533409A86979647355240CDFADEF0CC2533407459F1B24B355240DF516342CC25334039865B994B3552402B22799DC3253340A043CF1C483552407ED81C31C42533400B56E6F747355240199AA1A7B725334086C77E164B3552403D5C1723B7253340E0B3BFFD4A3552405904B5CEAE2533409453967C47355240ACBA5862AF253340E768FA9147355240379FDF9CB625334030AB668C4535524085F46FF2B6253340	249897558	Panchvati	1	yes	\N	\N	1	\N	1	Osh
133	0106000020E6100000010000000103000000010000001D000000299C38141935524023D3461A812533400B557B2219355240BD0166BE8325334029E1534A193552409987A7B28325334029F85C5C19355240205F4205872533409AC7ABBD193552405CEDBCE8862533404CFC51D4193552406056CD188B25334011CD9772193552404E4700378B253340E148FB7A19355240E2009FC48C253340C3BC225319355240057B5DD08C253340DB15FA6019355240ABB35A608F253340707610E0193552401B4F5F2A91253340229111AB1A3552403F6DF9ED90253340758F6CAE1A3552408619BF959125334051B351E71B3552406848CB37912533403FD296291C355240C27F5FC88F25334092B9E81A1C355240BEE204018D253340E05630E01B3552405FDACB118D2533401BE5AAC31B355240670B08AD87253340C29C45941B355240B50474BA87253340168497851B3552405764CFF9842533406FCCFCB41B355240E0EBB5EA842533409E5099AC1B3552406FACD5688325334051B351E71B355240A5356156832533405DBD2FD31B355240129C9F877F2533403FEC3B751B3552404859750C7E253340D53B81551A355240BF2DB3637E253340F39947591A355240A7D13F1C7F2533403447567E193552400031AE5D7F253340299C38141935524023D3461A81253340	358822892	Tarapore Towers	1	apartments	\N	\N	1	\N	1	Tarapore Garden
134	0106000020E6100000010000000103000000010000001D0000007C69E5B919355240C5D10B2DA125334094C2BCC7193552405F002BD1A32533407CAE00F0193552403B866CC5A3253340B1659E011A355240ECDCB419A7253340ED9458631A355240FEEB81FBA6253340D56993791A3552400255922BAB253340993AD9171A355240F045C549AB2533406AB63C201A35524084FF63D7AC2533404C2A64F819355240A87922E3AC25334064833B061A3552404DB21F73AF253340F8E351851A355240BD4D243DB1253340ABFE52501B355240E16BBE00B1253340C85C19541B355240281884A8B1253340A480FE8C1C35524034C63D4CB1253340929F43CF1C355240657E24DBAF2533401B272AC01C35524060E1C913AD2533403324DD851C35524001D99024AD253340A452EC681C355240090ACDBFA72533404B0A87391C3552408082E6CEA72533409EF1D82A1C355240F962940CA5253340F7393E5A1C355240AC6928FFA4253340F21D46521C35524012AB9A7BA3253340DA20938C1C35524071B3D36AA3253340E62A71781C355240B49A649A9F25334092B9E81A1C35524014D7E7209E2533405DA9C2FA1A355240622C78769E2533407B0789FE1A35524049D0042F9F253340871403241A355240A32F73709F2533407C69E5B919355240C5D10B2DA1253340	358822894	Tarapore Towers	1	apartments	\N	\N	1	\N	1	Tarapore Garden
74	0106000020E610000001000000010300000001000000050000006A77FEA325355240E8667FA0DC263340586831C2253552406B065D67E8263340F7B2486E28355240D1B76004E82633403F62AA4F283552407897303FDC2633406A77FEA325355240E8667FA0DC263340	249860434	Garden View - Dr Kaushal Shah Residence	Off New Link Rd	yes	\N	\N	1	\N	1	Walawalkar
36	0106000020E610000001000000010300000001000000050000005D0BC4FC26355240B18C68965F253340A45B655C27355240901C9F7F712533407F901B342A355240910832A77025334038407AD429355240B278FBBD5E2533405D0BC4FC26355240B18C68965F253340	249860331	Tulip	1	apartments	\N	\N	1	\N	1	Oshiwara
3	0106000020E610000001000000010300000001000000050000002BB2E77C42355240ADD05158F3253340BA522A3C43355240F83CDA931B263340445CEFED4C355240D01154E8172633400FBFF6274C35524026F9B605F02533402BB2E77C42355240ADD05158F3253340	202516364	Heera Panna	WARD61	Commercial	\N	\N	10	\N	1	HeeraPanna
139	0106000020E6100000010000000103000000010000000D000000D11962067435524039155FA39B253340CA598E467435524063940CA59B2533400C1B0A4474355240734FB2309F253340E83EEF7C75355240C0481E3E9F2533407CFEC57D75355240566A51FA9D25334082D2061676355240FD6607019E25334035F0A31A76355240CAADA47098253340A691E057763552401DACFF73982533408E4F125C76355240F6589F1793253340AB4E18DE763552409D55551E932533406A8D9CE07635524033F389E18F25334000B50710743552401C83A9C18F253340D11962067435524039155FA39B253340	359269237	Level residency	1	Yes	\N	\N	1	\N	1	Oshiwara
11	0106000020E6100000010000000103000000010000000D0000001D3D7E6F53355240AAB8718BF925334035AD5E8F53355240329985D10726334081446EE154355240853BBC8C07263340F2CEA10C55355240D4409880042633409E85F35F56355240D44098800426334003D8367B56355240CDD3145C07263340AF8E88CE573552404A511D610726334080DCD9B257355240FDB6CC8EF92533405DC47762563552406F72AE17F92533403F219628563552407457C04EFB25334093AF5F0B55355240EBCFD95DFB25334087495DD754355240FD5AA846F92533401D3D7E6F53355240AAB8718BF9253340	227895894	Serenity complex	1	residential	\N	\N	1	\N	1	Oshiwara
73	0106000020E61000000100000001030000000100000005000000B60B72BC27355240392E3E6079253340D4DC651A283552401E673FF78A253340674BB1FE2A355240A2D5C9198A253340497ABDA02A355240BC9CC88278253340B60B72BC27355240392E3E6079253340	249860433	Avalon	1	apartments	\N	\N	1	\N	1	Oshiwara
140	0106000020E610000002000000010300000001000000050000008EA150D478355240B4864A932D2433406290AADC7A3552404634CBAF302433409FBF62F77E355240D29B8F9B312433402D591EA479355240CF3F92B32D2433408EA150D478355240B4864A932D243340010300000001000000040000004EE6E6007F3552407A3FB29D31243340181758117F355240B7BB62A13124334065559A137F3552407A3FB29D312433404EE6E6007F3552407A3FB29D31243340	359269239	None	None	apartments	\N	\N	1	\N	1	None
119	0106000020E6100000010000000103000000010000000E00000033993B446D355240FE3DC27AED2533405C5A68426E355240027FF8F9EF2533403898F2C66E3552407ACF3758EE2533409DB987846F35524086353A8CEE253340CD542D8E6F355240330F05D8EC253340EA0E18DA6F35524069F4B40DED253340C1BD7CFC6F35524013094BE1E625334026B49BCF6F355240019E59B7E62533400856D5CB6F3552402CF52C08E52533406EF0CF566F35524043650D28E52533400FEB32A16E355240093F2773E2253340B68E60996D355240558847E2E52533400F8F0E596E3552400036C588E925334033993B446D355240FE3DC27AED253340	352922203	Serenity	1	Residential	\N	\N	1	\N	1	Oshiwara
84	0106000020E6100000010000000103000000010000002F000000C9C1B68F263552400E10CCD1E325334016E934C126355240269D92BDEF25334027F5656927355240AF6C301EEF25334081F8AF622735524022ECCA1DEC2533408099EFE02735524022ECCA1DEC253340F19650662835524087F9F202EC2533406ECF3D3528355240157A5803EF2533406294B1EB28355240788F7DDAF225334026E9F5822A3552405C8242F3EF25334073B1B3322B355240DD9CA5BFF2253340A3C222D02A3552405FB7088CF52533402C369CE829355240B2A1F6B6F4253340C7B546A92935524069A109B9F7253340B43EE5982C355240C67DF502FD253340B3DF24172D355240748B0AE6F9253340D185A28A2C355240E0D16B58F82533404E5FCFD72C35524070DA4246F62533406BB75D682E355240E70AA5E5F62533406BB75D682E355240015F1B3BF2253340F40D96FB2E355240C01369D1F1253340B23275B22F355240B2A1F6B6F425334000EA61C32E355240F370A719F7253340D07932A42F355240FD5AA846F92533405D7061383235524014FE56FCF0253340052B9842313552404A5F0839EF2533407099D365313552402E52CD51EC2533405D706138323552403F75070CED253340B614EBAF323552409A982EC4EA2533406BF9DC642F35524073A1F2AFE5253340FAFB7BDF2E35524059C97D61E8253340B8205B962F355240F33F5475EA2533408F4BC1BF2D355240E21C1ABBE92533401213D4F02D3552408BAABAA2EF253340428303102D355240F6741A0EF0253340E4AE14B82B355240350708E6E82533400E901E752A355240EC8A19E1ED253340506B3FBE2935524010C99063EB253340AFFDAE192A355240BFD6A546E82533408B694BC22A355240F4BB557CE8253340EAFBBA1D2B355240E9D1544FE625334062F3716D2835524028E84020E12533407AAB09FD273552400E10CCD1E3253340C773C7AC28355240CC481861E5253340D34F9374283552402B1D07B9E6253340985187702735524084C42C6AE6253340210780852735524079DA2B3DE4253340C9C1B68F263552400E10CCD1E3253340	249860471	Tarapore Towers	1	yes	\N	\N	1	\N	1	Tarapore Garden
135	0106000020E610000001000000010300000001000000220000007DA0CB8A173552402535594865253340A11A8A961735524060A3F66C67253340BEBD6BD017355240BFAB2F5C67253340D61643DE17355240E26135F1692533400B58175C1835524064B0E2546B253340A68C6E73193552406A59AD026B2533407C24CA8319355240C25087156E253340F3CAF5B6193552404BD86D066E253340E7C017CB193552400DF6CBCC7125334099092BBA1A35524037195586712533405848AFBC1A355240F5E10FF5712533407547B53E1B355240377579CE71253340574513831B355240C691BD9470253340165685611B35524023ADE75A6A25334004029D491B355240CAA99D616A25334051E4FF441B3552407797D5856925334087E0B88C1B355240592206706925334051291B7B1B355240FBC9181F662533402E814A4B1B35524049C3842C66253340348639411B3552409133034B642533409377691E1B355240B5ADC1566425334063DCC3141B3552406E916A8E6225334004EB93371B355240749659846225334063DCC3141B355240D75A4EF85B2533406FA186CA1A355240A26131EA5A2533406A15FDA11935524042B51C435B25334082E49D43193552405F52C6095D2533407CDFAE4D19355240F36789DF5E253340AC4C423319355240C4E3ECE75E2533400567953E19355240E0DCBAF6602533400B9A965819355240106157EE602533408212B06719355240E57915BE632533409B43ADC4173552401ABBE93B642533407DA0CB8A173552402535594865253340	358822896	Tarapore Towers	1	apartments	\N	\N	1	\N	1	Tarapore Garden
122	0106000020E6100000010000000103000000010000000D0000003D0B42791F355240B818A831C6263340A2748EA61F355240B1C80AD9D4263340AD7598E521355240EDFA6074D4263340FB29E9BC21355240F977C773C72633405882D60D2535524089F02F82C6263340C90C0A39253552402889DB57D4263340B66A323E273552405EB642FDD326334087A17A1027355240837BAF6BC5263340CF28024125355240535337BCC5263340BDBD101725355240ABE57393BD2633408427994121355240DAD9A1ABBE26334019158266213552406BC317DCC52633403D0B42791F355240B818A831C6263340	352937274	Shantivan Bldg no. 1-3	Off New Link Road	apartments	\N	\N	1	\N	1	Walawalkar
35	0106000020E610000001000000010300000001000000260000004B0D23731B35524091C31671F0253340EB2CC4341D3552406D01A1F5F02533406748707E1E3552405D972BCDF7253340AF22484A1F355240F90505EFF52533402B9DB415203552409E66DC2FFA25334049A2F20A1F35524035554156012633408A8EE4F21F35524034D93F4F03263340AF22484A1F355240E49F19C4072633401B3E33D21C3552407F92F1DE07263340F70890FC1C355240B1732E200F263340A99322E81E355240168156050F26334084A0FE0E203552409C4C817115263340F53E9F1221355240FC2CE0AF13263340CBBC55D721355240ED3E6C8E18263340070951BE20355240BA1281EA1F2633403CBAB65C22355240711294EC2226334083948E28233552409E0546031D263340C3633F8B2535524003136EE81C263340C951256F25355240A109B9F71526334071CADC7C23355240363F598C15263340C56FAF71223552404C66063B0F26334054D10E6E21355240BC5D2F4D11263340786572C5203552408E2DBAAB0D263340E962D34A213552400C1357DF0A263340C5CE6FF3213552406385B6F704263340669BC0192135524099E667340326334048F542A6213552408F78680EFF253340F491EFAD233552400DE2033BFE253340FA7FD591233552408159A148F725334054724EEC21355240E766C92DF72533407E5358A920355240F6D03E56F02533401F20A9CF1F35524036A0EFB8F22533402C5B35191F35524021CCED5EEE2533408A8EE4F21F35524096438B6CE725334056DD7E541E3552405CAD1397E3253340F7A9CF7A1D355240063BB47EE92533406366FA801B355240063BB47EE92533404B0D23731B35524091C31671F0253340	249860330	Tarapore garden	Walawalkar gaden rd, Oshiwara Jogeshwari West	yes	\N	\N	300	\N	5	Tarapore Garden
99	0106000020E6100000010000000103000000010000000D0000007A89B14C3F3552406629FE94CF253340A44D7A843F35524071789CFDDC25334032FF8DE241355240C5BEAE70DC253340615518B641355240650921D6D12533403612B23D44355240BF54223FD125334096760F754435524094BE1072DE253340B888395247355240FA13F0C6DD253340AC0B2E0C4735524061E8C715CD25334077D0910145355240432B4190CD253340B35E0CE544355240291609B7C6253340DF1AD82A41355240CF262C96C72533402C2B4D4A41355240D8E4DF1DCF2533407A89B14C3F3552406629FE94CF253340	249897570	Godavari	1	yes	\N	\N	1	\N	1	Oshiwara
28	0106000020E6100000010000000103000000010000000F0000005C829DAC62355240A4D5DA45E22533405C829DAC62355240AFAB6E9AE3253340B69CF0B76235524097B4988EEF253340682A1FDD63355240A91F8AB8EF253340D2C3D0EA64355240D933958FEE253340D2D73DC3653552402C465D6BEF253340E384AEE966355240D3E6EE29EF253340C50FDFD366355240006A0F20E825334001B562C9663552402504ABEAE5253340DD239BAB66355240A431FF8DE22533409604A8A965355240A4D5DA45E225334091D442C964355240C11660C4E3253340C14472E863355240B640CC6FE22533401B62612D63355240FDD8243FE22533405C829DAC62355240A4D5DA45E2253340	227895917	Serenity	1	residential	\N	\N	1	\N	1	oshiwara
\.


--
-- Data for Name: waste_segregation_details; Type: TABLE DATA; Schema: public; Owner: ward61user
--

COPY public.waste_segregation_details (track_id, region, building_cluster, category, num_wings, wing_name, building_type, population, num_households_premises, num_shops_premises, type_waste_generator, waste_segregation, wet_waste_before_segregation, dry_waste_before_segregation, hazardous_waste, compostable_waste, recyclable_waste, rejected_waste, composting_type, compost_bin_by_mcgm, date_notice_issued, name_number, coll_date) FROM stdin;
1	Behram  Baug	Shakti seva sangh				Res.		91	14	BWG/SRA	no	0	0	0				-	-			2021-10-04
2	Behram  Baug	Ujala nagar sra				Res.		116	21	After 2007 (BWG/SRA)	no	0	0	0				-	-			2021-10-04
3	Behram  Baug	Patel sra				Res.				Others		--	-	-								2021-10-04
4	Behram  Baug	Sakirabi				Res.		114	16	After 2007 (BWG/SRA)	no	0	0	0				-	-			2021-10-04
5	Behram  Baug	Parsi colony				Res.		13x28		Others	yes	0	108	0								2021-10-04
6	Behram  Baug	Shama chs				Res.				Others	yes	-	-	-								2021-10-04
7	Behram  Baug	Sarvodhaya sra				Res.		120		BWG		0	0	0						03/10/2021		2021-10-04
8	Behram  Baug	Range heights				Com				After 2007 (BWG)	yes	-	-	-				-				2021-10-04
9	Behram  Baug	Santosh nagar sra				Res.		75		BWG		-	-	-						09/28/2021	Amersen Yadav\n9867974333	2021-10-04
10	Behram  Baug	Green palace				Res.				Others		-	-	-								2021-10-04
11	Roshan Nagar	Milliennium court				Res.		80	1	BWG	yes	0	0	1.5						09/27/2021	Nitinn Ranga\n9821337126	2021-10-04
12	Roshan Nagar	Evershine green				Res.		206	14	BWG	yes	10	55	10				OWC		09/18/2021	Rohit Sharma (chr)\n9819309474	2021-10-04
13	Roshan Nagar	Raigad military school\nCom-bldg				Com		32		BWG		-	-	-								2021-10-04
14	Roshan Nagar	Raigad military school				Scl		32		Others		-	-	-								2021-10-04
15	Roshan Nagar	Mariyam public high school				Scl			16	Others		-	-	-								2021-10-04
16	Roshan Nagar	Belvedere spring school				Scl				Others		-	-	-								2021-10-04
17	Roshan Nagar	Level resident				Res.				Others		-	-	-								2021-10-04
18	Roshan Nagar	Oshiwara akash ganga				Res.		28		Others	yes	20	0	0								2021-10-04
19	Roshan Nagar	Oshwara vishal				Res.		28		Others	yes	30	0	0								2021-10-04
20	Roshan Nagar	Oshiwara sahyadri				Res.		56		Others	yes	50	0	0								2021-10-04
21	Roshan Nagar	Oshiwara girnar				Res.		56		Others	yes	3	5	0								2021-10-04
22	Roshan Nagar	Johig				Res.		28		Others	yes	10	5	0								2021-10-04
23	Roshan Nagar	Oshiwara ravikiran				Res.		28		Others	yes	40	7	0								2021-10-04
24	Roshan Nagar	Oshiwara satpuda				Res.		56		Others	yes	47	6	0								2021-10-04
25	Roshan Nagar	Green daimond				Res.		40		After 2007 (BWG)	yes	25	0	0						09/27/2021	Sameer Shaik(sup)\n9920048273	2021-10-04
26	Roshan Nagar	Jogeshwari ganesh niwas				Res.		80		BWG/SRA	yes	70	0	0						09/27/2021	Bhagwan Jadhav\n9821800369	2021-10-04
27	Roshan Nagar	Roshan nagar b1				Res.		52	12	After 2007 (BWG/SRA)		-	-	-						09/27/2021	Ashok Dongre\n9833455170	2021-10-04
28	Roshan Nagar	Roshan nagar b2				Res.		82	13	After 2007 (BWG/SRA)		-	-	-						09/27/2021	Alim Khan\n8879313127	2021-10-04
29	Roshan Nagar	Lashkaria empress				Res.		56	6	After 2007 (BWG/SRA)		-	-	-						09/21/2021	Sameer Shaik\n9920048273	2021-10-04
30	Roshan Nagar	Oriental education 				Clg				Others		-	-	-								2021-10-04
31	Roshan Nagar	Green heights (lashkaria)				Res.		79		BWG		-	-	-						09/21/2021	Aslam Lashkaria\n9820990707	2021-10-04
32	Roshan Nagar	Sree sai lila (sra)				Res.		56		Others	no	0	0	0								2021-10-04
33	Roshan Nagar	Shivspruthi bldg no.1 				Res.		88		BWG	yes	65	0	-						09/27/2021	Vasant  Mahadik\n7208580681	2021-10-04
34	Roshan Nagar	Shivspruthi bldg no.2 				Res.				BWG /SRA	yes	75	0	-				-		09/27/2021	Vasant  Mahadik\n7208580681	2021-10-04
35	Anand Nagar	Techweb centre				Com				Others		-	-	-								2021-10-04
36	Anand Nagar	Daimond /pearl				Res.		18	2	Others	no	0	0	0								2021-10-04
37	Anand Nagar	Vijay vishal				Res.		78		BWG	yes	0	25	2						09/20/2021	Chandrakant Kale\n9969003025	2021-10-04
38	Anand Nagar	Spice tower				Com			16	Others		0	0	0				Out sorce				2021-10-04
39	Anand Nagar	Sandipani shikshak oshiwara				Res.		91	28	After 2007 (BWG)	no	0	0	0						09/20/2021	Rammani C. Dube\n9702334382	2021-10-04
40	Anand Nagar	Vaibhav palace				Res.		48	28	Others	yes	80	30	0								2021-10-04
41	Mega Mall	Assistant commissioner police oshiwara division mumbai				Com																2021-10-04
42	Mega Mall	Jay ambe				Res.		100		BWG	no	0	0	0						09/28/2021	Amar Pal\n9920612050	2021-10-04
43	Mega Mall	Mahataranga				Res.		52	4	Others	no	0	0	0								2021-10-04
44	Mega Mall	Sawati apartment				Res.		28	7	Others	no	0	0	0								2021-10-04
45	Mega Mall	1 bhk				Com				Others		-	-	-				-	-			2021-10-04
46	Mega Mall	Meera tower				Res.		100	28	BWG		0	0	0				Out source		09/18/2021	A.K.Singh (Mang)\n9930317315	2021-10-04
47	Green Park	Anand vihar				Res.		42		MHADA	yes	35	25	0					09/23/2021			2021-10-04
48	Green Park	Oshiwara basera				Res.		28		MHADA	yes	40	0	0								2021-10-04
49	Green Park	Park paradise				Res.		44	12	MHADA	yes	0	20	0				5	09/23/2021			2021-10-04
50	Tarapore	The park (lotus)				Res.		42		MHADA		-	-	-								2021-10-04
51	Tarapore	K.l walawalkar mcgm garden				Grdn				Others		0	0	0								2021-10-04
52	Tarapore	Atlantis				Res.		22		Others	yes	0	10	0								2021-10-04
53	Tarapore	Deep tower & apartment				Res.		100		BWG	yes	0	15	0						09/28/2021	Zuber Menon	2021-10-04
54	Tarapore	Harjanhans				Com		12		Others		-	-	-								2021-10-04
55	Tarapore	Kohinoor i				Res.		45		Others		-	-	-								2021-10-04
56	Tarapore	Kohinoor ii				Res.		42		Others		-	-	-								2021-10-04
57	Tarapore	Shantivan mhada (7 bldg)				Res.		7x28		MHADA	yes	150	60	0					09/25/2021			2021-10-04
58	Tarapore	Bmc garden ii				Grdn				Others		-	-	-								2021-10-04
59	Tarapore	Rims international school 				Scl				Others		-	-	-								2021-10-04
60	Tarapore	Samartha deep				Res.		160		BWG		0	0	0				Out source	-	-	-	2021-10-04
61	Tarapore	Samartha ashish				Res.		72		Others		0	0	0								2021-10-04
62	Tarapore	Aakash				Res.		28		MHADA	yes	0	0	0				bin comp	09/19/2021			2021-10-04
63	Tarapore	Eden garden no.22				Res.		32		MHADA	yes	0	0	0				bin comp	09/19/2021			2021-10-04
64	Tarapore	Samartha aangan				Res.		330		After 2007 (BWG)	yes	0	50	18				OWC				2021-10-04
65	Tarapore	Gulmohar				Res.		32		MHADA	yes	21	10	0								2021-10-04
66	Tarapore	Mayfair no.20				Res.		32	6	MHADA	yes	0	20	0				bin comp	09/19/2021			2021-10-04
67	Tarapore	Indra darshan l				Res.		264		BWG		0	0	0				Drum comp	-	-	-	2021-10-04
68	Tarapore	Indra darshan ll				Res.		330		BWG		0	0	0				Drum comp	-	-	-	2021-10-04
69	Tarapore	Tarapore garden no. 1,2,3				Res.		294		BWG	yes	0	70	3				OWC		09/18/2021	Sanjeev Sharma\n9920304152	2021-10-04
70	Tarapore	Tarapore tower				Res.		269		BWG		0	0	0				out source	-	09/18/2021	Arun poddar\n9920720066	2021-10-04
71	Tarapore	Samartha vaibhav				Com		103	20	Others		0	0	0								2021-10-04
72	Azad Nagar Petrol Pump	Tulip no.6				Res.		37	2	MHADA	no	0	0	0					44237			2021-10-04
73	Azad Nagar Petrol Pump	Aster no.5				Res.		34		MHADA	yes	7	0	0					44237			2021-10-04
74	Azad Nagar Petrol Pump	Kasturi society				Res.		32		Others		-	-	-								2021-10-04
75	Jbcn School Lane	Blue bell no.8				Res.		34	4	MHADA	yes	5	0	0								2021-10-04
76	Jbcn School Lane	Avalon no7				Res.		30		MHADA	no	0	0	0								2021-10-04
77	Jbcn School Lane	(jbcn) international school				Scl				Others		--	-	-								2021-10-04
78	Jbcn School Lane	Daffodils no.10				Res.		32		MHADA	yes	50	0	0								2021-10-04
79	Jbcn School Lane	Indus no.9				Res.		32		MHADA	yes	74	0	0								2021-10-04
80	Oshiwara Garden	Maheshwari hall				Com				Others	yes	0	0	1								2021-10-04
81	Oshiwara Garden	Suriyakiran no.19				Res.		32	6	MHADA	yes	0	0	1					09/19/2021			2021-10-04
82	Oshiwara Garden	Amity no.18				Res.		32		MHADA	yes	0	0	2					09/19/2021			2021-10-04
83	Oshiwara Garden	Oshiwara mhada garden				Grdn				Others	yes	0	0	1					09/19/2021			2021-10-04
84	Oshiwara Garden	Green view no.17				Res.		32		MHADA	yes	0	0	3					09/19/2021			2021-10-04
85	Oshiwara Garden	Hima sai no.16				Res.		32		MHADA	yes	0	0	11					09/19/2021			2021-10-04
86	Oshiwara Garden	Raja rani malhotra vidyalaya				Scl		40		Others		0	0	0								2021-10-04
87	Oshiwara Garden	Hvps education complex				Clg				Others		0	0	0								2021-10-04
88	Oshiwara Garden	Goenka international school				Scl			22	Others		0	0	0								2021-10-04
89	Oshiwara Garden	Marble school				Scl			22	Others		0	0	0								2021-10-04
90	Oshiwara Garden	Goverment of india building				Res.		30		Others	yes	50	0	0								2021-10-04
91	Oshiwara Garden	Sanskar no.15				Res.		28		MHADA	yes	47	0	0				-	Returned by society	-	-	2021-10-04
92	Bmc Road	Aradhana sra				Res.		286	25	Others	no	-	-	-				-	-	-	-	2021-10-04
93	Bmc Road	Annapoorna chs				Res.				Others	no	-	-	-				-	-	-	-	2021-10-04
94	Bmc Road	Godavari no1				Res.		40		MHADA	yes	0	5	0					44206			2021-10-04
95	Bmc Road	Krishna no 2				Res.		40		MHADA	no	0	0	0				-	44206			2021-10-04
96	Bmc Road	Narmadha no 3				Res.		40		MHADA	no	0	0	0					44206			2021-10-04
97	Bmc Road	Kaveri no 4				Res.		40		MHADA	no	0	0	0					44206			2021-10-04
98	Bmc Road	Panchvati no 5				Res.		40		MHADA	yes	0	4	0					44206			2021-10-04
99	Bmc Road	Saptha shrungi no 6				Res.		40		MHADA	yes	0	6	0					44206			2021-10-04
100	Bmc Road	Sai siddhii no 7				Res.		40		MHADA	yes	0	5	0					44206			2021-10-04
101	Bmc Road	Serenity shree sai wings adef chs				Res.		72		BWG	yes	0	3	0						09/18/2021	Nandkishore Ghag\n9821394023	2021-10-04
102	Bmc Road	Serenity shree sai wings b1,b2 chs				Res.				BWG	yes	0	4	0						09/18/2021	Vare (Mang)\n9699720927	2021-10-04
103	Bmc Road	Serenity shree sai wings ghi chs				Res.		84		BWG	yes	0	3	0						09/18/2021	Suryanarayan Chube \n9702021707	2021-10-04
104	Bmc Road	City international school				Scl				Others		-	-	-								2021-10-04
105	Heera Panna Road	Jay ambe				Res.				Others		-	-	-								2021-10-04
106	Heera Panna Road	Sumukh heights				Res.		42		Others		-	-	-				-				2021-10-04
107	Heera Panna Road	Sai leela(sra)				Res.				Others		-	-	-								2021-10-04
108	Heera Panna Road	Aanand seva samity				Res.		102	11	BWG /SRA	no	0	0	0				-		09/27/2021	Mansoor Ali Khan\n9022887279	2021-10-04
109	Heera Panna Road	Reliable business centre				Com			11	After 2007 (BWG/SRA)		0	0	0				-		09/27/2021	Shakeel Shaik\n9821326518	2021-10-04
110	Heera Panna Road	Om heera panna premises				Com			290	BWG		0	0	0					09/27/2021	09/27/2021	Kisanlal Hans\n9892408602	2021-10-04
111	Heera Panna Road	Oshiwara link plaza				Com			199	Others		0	0	0				-				2021-10-04
112	Heera Panna Road	Arshavardhan				Com				Others	yes	0	45	0								2021-10-04
113	Heera Panna Road	Oshiwara yashodeep 				Res.		60		BWG /SRA	yes	0	80	0				-	44237	09/18/2021	Ishwar  Hubale\n9870473923	2021-10-04
114	Heera Panna Road	(sbi) officers quatres 35				Res.		90		MHADA	yes	35	20	0								2021-10-04
115	Heera Panna Road	Godavari 				Res.				MHADA	yes	0	10	0					44206			2021-10-04
116	Heera Panna Road	Yamuna 38				Res.		55	12	MHADA	yes	0	15	0								2021-10-04
117	Heera Panna Road	Kaveri no41				Res.				MHADA	yes	0	10	0								2021-10-04
118	Heera Panna Road	Mhada sargam no40				Res.		88	4	MHADA	yes	0	5	0								2021-10-04
119	Heera Panna Road	Sebi gaurur				Res.		30		Others	yes	-	-	-								2021-10-04
120	Heera Panna Road	Gujarat bhavan				Res.		28		Others	yes	-	-	-								2021-10-04
121	Heera Panna Road	Tata communication residential colony				Res.		105		MHADA	yes	5	5	0								2021-10-04
122	Heera Panna Road	Andhra bank quartres				Res.		62		MHADA	yes	15	6	0								2021-10-04
123	Heera Panna Road	Bmc garden i				Grdn				Others		-	-	-								2021-10-04
124	Oshiwara Mahada New Link Road	Marigold no. 1				Res.		34		MHADA	yes	36	0	0					44237			2021-10-04
125	Oshiwara Mahada New Link Road	Anuksa no.2				Res.		34		MHADA	yes	80	0	0					44237			2021-10-04
126	Oshiwara Mahada New Link Road	Aroma no.3				Res.		34		MHADA	yes	90	0	0					44237			2021-10-04
127	Oshiwara Mahada New Link Road	Sunshine no.4				Res.		34		MHADA	yes	50	0	0					44237			2021-10-04
128	Oshiwara Mahada New Link Road	Starship no.11				Res.		28		MHADA	yes	0	15	0					09/19/2021			2021-10-04
129	Oshiwara Mahada New Link Road	Lotus no.12				Res.		32		MHADA	no	0	0	0					09/19/2021			2021-10-04
130	Oshiwara Mahada New Link Road	Utsav no.13				Res.		32		MHADA	yes	45	2.5	0					Returned by Society			2021-10-04
131	Oshiwara Mahada New Link Road	Rajanigandha no.14				Res.		32		MHADA	yes	0	0	0					09/19/2021			2021-10-04
132	Oshiwara Mahada New Link Road	Income tax officers no.24				Res.		34		MHADA	yes	0	0	0								2021-10-04
133	Oshiwara Mahada New Link Road	Link way no.25				Res.		34		MHADA	yes	56	15	0								2021-10-04
134	Oshiwara Mahada New Link Road	Central excise res.iety no.26				Res.		32		MHADA	yes	0	15	0								2021-10-04
135	Oshiwara Mahada New Link Road	Central excise res.iety no.27				Res.		32		MHADA	yes	0	10	0								2021-10-04
136	Oshiwara Mahada New Link Road	Oshiwara police chowki				Com				Others	no	0	0	0								2021-10-04
137	Oshiwara Mahada New Link Road	State bank india 				Com			1	Others		-	-	-								2021-10-04
138	Oshiwara Mahada New Link Road	Matru chayya				Res.		32		MHADA	yes	0	15	0								2021-10-04
139	Oshiwara Mahada New Link Road	Ekdant 				Res.		34		MHADA	yes	0	5	0								2021-10-04
140	Oshiwara Mahada New Link Road	Parth no.43				Res.		32		MHADA	yes	40	5	0								2021-10-04
141	Oshiwara Mahada New Link Road	Fakir wadi (t.camp)				Res.				Others	yes	190	0	0								2021-10-04
142	Behram  Baug	Ujala nagar sra				Res.		116	21	After 2007 (BWG/SRA)	no	0	0	0								2021-10-31
143	Behram  Baug	Patel sra				Res.				Others	no	0	0	0								2021-10-31
144	Behram  Baug	Sakirabi				Res.		114	16	After 2007 (BWG/SRA)	no	0	0	0								2021-10-31
145	Behram  Baug	Parsi colony				Res.		13x28		Others	yes	52		0								2021-10-31
146	Behram  Baug	Shama chs				Res.				Others	no	0	0	0								2021-10-31
147	Behram  Baug	Anupa public high scl				Scl				Others		0	0	0								2021-10-31
148	Behram  Baug	Sarvodhaya sra				Res.				BWG	no	0	0	0								2021-10-31
149	Behram  Baug	Range heights				Com				After 2007 (BWG)		-	-	-								2021-10-31
150	Behram  Baug	Santosh nagar sra				Res.				BWG	no	0	0	0						28/09/2021	Amersen Yadav\n9867974333	2021-10-31
151	Behram  Baug	Green palace				Res.				Others	no	0	0	0								2021-10-31
152	Roshan Nagar	Millenium court				Res.		80	1	BWG	yes	0		0				Out \nsource		27/09/2021	Nitinn Ranga\n9821337126	2021-10-31
153	Roshan Nagar	Evershine green				Res.		206	14	BWG	yes	14		0				OWC		18/09/2021	Rohit Sharma (chr)\n9819309474	2021-10-31
154	Roshan Nagar	Raigad military school\nCom-bldg				Com		32		BWG	yes	0		0								2021-10-31
155	Roshan Nagar	Raigad military school				Scl		32		Others	yes	0		0								2021-10-31
156	Roshan Nagar	Mariyam public high school				Scl		16 cls		Others	yes	0		0								2021-10-31
157	Roshan Nagar	Belvedere spring school				Scl				Others	yes	0	0	0								2021-10-31
158	Roshan Nagar	Level resident				Res.				Others		-	-	-								2021-10-31
159	Roshan Nagar	Oshiwara akash ganga				Res.		28		Others	yes	43		0								2021-10-31
160	Roshan Nagar	Oshwara vishal				Res.		28		Others	yes	19		0								2021-10-31
161	Roshan Nagar	Oshiwara sahyadri				Res.		56		Others	yes	24		0								2021-10-31
162	Roshan Nagar	Oshiwara girnar				Res.		56		Others	yes	26		0								2021-10-31
163	Roshan Nagar	Johig				Res.		28		Others	yes	42		0								2021-10-31
164	Roshan Nagar	Oshiwara ravikiran				Res.		28		Others	yes	44		0								2021-10-31
165	Roshan Nagar	Oshiwara satpuda				Res.		56		Others		-	-	-								2021-10-31
166	Roshan Nagar	Green daimond				Res.		40		After 2007 (BWG)	yes	76		0						27/09/2021	Sameer Shaik(sup)\n9920048273	2021-10-31
167	Roshan Nagar	Jogeshwari ganesh niwas				Res.		80		BWG/SRA	yes	83		0						27/09/2021	Bhagwan Jadhav\n9821800369	2021-10-31
168	Roshan Nagar	Roshan nagar b1				Res.		52	12	After 2007 (BWG/SRA)	yes	39		0						27/09/2021	Ashok Dongre\n9833455170	2021-10-31
169	Roshan Nagar	Roshan nagar b2				Res.		82	13	After 2007 (BWG/SRA)	yes	44		0						27/09/2021	Alim Khan\n8879313127	2021-10-31
170	Roshan Nagar	Lashkaria empress				Res.		56	6	After 2007 (BWG/SRA)		-	-	-				Out source		21/09/2021	Sameer Shaik\n9920048273	2021-10-31
171	Roshan Nagar	Oriental education 				Clg		0		Others		-	-	-								2021-10-31
172	Roshan Nagar	Green heights (lashkaria)				Res.		0		BWG		-	-	-				Out source		21/09/2021	Aslam Lashkaria\n9820990707	2021-10-31
173	Roshan Nagar	Shree sai lila (sra)				Res.		56		BWG		28	0	0								2021-10-31
174	Roshan Nagar	Shivspruthi bldg no.1 				Res.		88		BWG	yes	82		0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-31
175	Roshan Nagar	Shivspruthi bldg no.2 				Res.				BWG /SRA	yes	78		0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-31
176	Anand Nagar	Techweb centre				Com				Others	yes	0		0								2021-10-31
177	Anand Nagar	Daimond /pearl				Res.		18	2	Others	yes	33		0								2021-10-31
178	Anand Nagar	Vijay vishal				Res.		78		BWG	yes	0		0						20/09/2021	Chandrakant Kale\n9969003025	2021-10-31
179	Anand Nagar	Spice tower				Com			16	Others		-	-	-				out source				2021-10-31
180	Anand Nagar	Sandipani shikshak oshiwara				Res.		91	28	After 2007 (BWG)	yes	0		0						20/09/2021	Rammani C. Dube\n9702334382	2021-10-31
181	Anand Nagar	Vaibhav palace				Res.		48	28	Others	yes	9		2								2021-10-31
182	Mega Mall	Assistant commissioner police oshiwara division mumbai				Com						0	0	0								2021-10-31
183	Mega Mall	Jay ambe				Res.		100		BWG	yes	0		0						28/09/2021	Amar Pal\n9920612050	2021-10-31
184	Mega Mall	Mahataranga				Res.		52	4	Others	yes	0	0	0								2021-10-31
185	Mega Mall	Swati apartment				Res.		28	7	Others	yes	10		-								2021-10-31
186	Mega Mall	1 bhk				Com				Others	yes	0		0					-			2021-10-31
187	Mega Mall	Meera tower				Res.		100	28	BWG		-	-	-				out source			A.K.Singh (Mang)\n9930317315	2021-10-31
188	Green Park	East side no.28				Res.		32		MHADA	yes	5		0				bin comp	24/09/2021			2021-10-31
189	Green Park	Samruddhi no.29				Res.		32		MHADA	yes	28		0				bin comp	06.10.2021			2021-10-31
190	Green Park	Anand vihar				Res.		42		MHADA	yes	37		0				bin comp	24/09/2021			2021-10-31
191	Green Park	Oshiwara basera				Res.		28		MHADA	yes	4		10				bin comp				2021-10-31
192	Green Park	Park paradise				Res.		44	12	MHADA	yes	9		8				bin comp	25/09/2021			2021-10-31
193	Green Park	The park (lotus)				Res.		42		MHADA		-		-				-	-			2021-10-31
194	Tarapore	K.l walawalkar mcgm garden				Grdn				Others		-		-								2021-10-31
195	Tarapore	Atlantis				Res.		22		Others	yes	0		2								2021-10-31
196	Tarapore	Deep apartment & tower				Res.		100		BWG	yes	0		0						28/09/2021	Zuber Menon	2021-10-31
197	Tarapore	Harjanhans				Res.				Others		0		0								2021-10-31
198	Tarapore	Kohinoor i				Res.				Others	yes	-	-	-								2021-10-31
199	Tarapore	Kohinoor ii				Res.				Others	yes	-	-	-								2021-10-31
200	Tarapore	Shantivan mhada (7 bldg)				Res.		7x28		MHADA	yes	118		0					25/09/2021			2021-10-31
201	Tarapore	Bmc garden ii				Grdn				Others	yes	0		0								2021-10-31
202	Tarapore	Rims international school 				Scl				Others	yes	0		0								2021-10-31
203	Tarapore	Samartha deep				Res.		160		BWG		-		-				Out Source	-	-	-	2021-10-31
204	Tarapore	Samartha ashish				Res.		74		Others	yes	0		0								2021-10-31
205	Tarapore	Aakash				Res.		28		MHADA	yes	26		0				bin comp	26/09/2021			2021-10-31
206	Tarapore	Eden garden no.22				Res.		32		MHADA	yes	-	-	-				bin comp	18/09/2021			2021-10-31
207	Tarapore	Samartha aangan				Res.		330		After 2007 (BWG)	yes	36		25								2021-10-31
208	Tarapore	Gulmohar				Res.		32		MHADA	yes	29										2021-10-31
209	Tarapore	Mayfair no.20				Res.		32	6	MHADA	yes	36						bin comp	18/09/2021			2021-10-31
210	Tarapore	Indra darshan l				Res.		264		BWG		-		-				Out source	-		-	2021-10-31
211	Tarapore	Indra darshan ll				Res.		330		BWG		-		-				Out source	-	-	-	2021-10-31
212	Tarapore	Tarapore garden no. 1,2,3				Res.		294		BWG	yes	0		0				OWC		18/09/2021	Sanjeev Sharma\n9920304152	2021-10-31
213	Tarapore	Tarapore tower				Res.		269		BWG		-		-				Out source	-	18/09/2021	Arun poddar\n9920720066	2021-10-31
214	Tarapore	Samartha vaibhav				Com		103	20	Others	yes	0		0								2021-10-31
215	Azad Nagar Petrol Pump	Tulip no.6				Res.		37	2	MHADA	yes	38		0				Bin comp				2021-10-31
216	Azad Nagar Petrol Pump	Aster no.5				Res.		34		MHADA	yes	3		2				Bin comp				2021-10-31
217	Jbcn School Lane	Blue bell no.8				Res.		34	4	MHADA	yes	23		0				Bin comp				2021-10-31
218	Jbcn School Lane	Avalon no7				Res.		30		MHADA	yes	32		0								2021-10-31
219	Jbcn School Lane	(jbcn) international school				Scl				Others	yes	-	-	-								2021-10-31
220	Jbcn School Lane	Daffodils no.10				Res.		32		MHADA	yes	38						Bin comp				2021-10-31
221	Jbcn School Lane	Indus no.9				Res.		32		MHADA	yes	18						Bin comp				2021-10-31
222	Oshiwara Garden	Maheshwari hall				Com				Others	yes	0		0								2021-10-31
223	Oshiwara Garden	Suriyakiran no.19				Res.		32	6	MHADA	yes	24		0				bin comp	18/09/2021			2021-10-31
224	Oshiwara Garden	Amity no.18				Res.		32		MHADA	yes	5		4				bin comp	18/09/2021			2021-10-31
225	Oshiwara Garden	Oshiwara mhada garden				Grdn				After 2007 (BWG)	yes	0		0				bin comp	18/09/2021			2021-10-31
226	Oshiwara Garden	Green view no.17				Res.		32		MHADA	yes	38		0				bin comp	18/09/2021			2021-10-31
227	Oshiwara Garden	Hima sai no.16				Res.		32		MHADA	yes	16		0				bin comp	09/18/2021			2021-10-31
228	Oshiwara Garden	Raja rani malhotra vidyalaya				Scl		40		Others	yes	0		0								2021-10-31
229	Oshiwara Garden	Hvps education complex				Clg				Others	yes	0		0								2021-10-31
230	Oshiwara Garden	Goenka international school				Scl			22	Others	yes	0		0								2021-10-31
231	Oshiwara Garden	Marble arch school				Scl			22	Others	yes	0		0								2021-10-31
232	Oshiwara Garden	Goverment of india building				Res.		30		Others	yes	0		0								2021-10-31
233	Oshiwara Garden	Sanskar no.15				Res.		28		MHADA	yes	24		0					-	-	-	2021-10-31
234	Bmc Road	Aradhana gurunanak sra				Res.		286	25	BWG	yes	198		0					-	-	-	2021-10-31
235	Bmc Road	Annapoorna chs				Res.		30		Others	yes	-	-	-					-	-	-	2021-10-31
236	Bmc Road	Godavari no1				Res.		40		MHADA	yes	-		-				Bin comp	44237			2021-10-31
237	Bmc Road	Krishna no 2				Res.		40		MHADA	yes	-		-				Bin comp	44237			2021-10-31
238	Bmc Road	Narmadha no 3				Res.		40		MHADA	yes	-		-				Bin comp	44237			2021-10-31
239	Bmc Road	Kaveri no 4				Res.		40		MHADA	yes	-		-				Bin comp	44237			2021-10-31
240	Bmc Road	Panchvati no 5				Res.		40		MHADA	yes	-		-				Bin comp	44237			2021-10-31
241	Bmc Road	Saptha shrungi no 6				Res.		40		MHADA	yes	-						Bin comp				2021-10-31
242	Bmc Road	Sai siddhii no 7				Res.		40		MHADA	yes	-		-				Bin comp				2021-10-31
243	Bmc Road	Serenity shree sai wings adef chs				Res.		72		BWG	yes	28		7				Drum\n composting		18/09/2021	Nandkishore Ghag\n9821394023	2021-10-31
244	Bmc Road	Serenity shree sai wings b1,b2 chs				Res.				BWG	yes									18/09/2021	Vare (Mang)\n9699720927	2021-10-31
245	Bmc Road	Serenity shree sai wings ghi chs				Res.		84		BWG	yes									18/09/2021	Suryanarayan Chube \n9702021707	2021-10-31
246	Bmc Road	City international school				Scl				Others	yes	0		0								2021-10-31
247	Heera Panna Road	Sumukh heights				Res.		42		Others		0		0								2021-10-31
248	Heera Panna Road	Aanand seva samity				Res.		102	11	BWG /SRA		0		0						27/09/2021	Mansoor Ali Khan\n9022887279	2021-10-31
249	Heera Panna Road	Reliable business centre				Com			11	After 2007 (BWG/SRA)	yes	-	-	-						27/09/2021	Shakeel Shaik\n9821326518	2021-10-31
250	Heera Panna Road	Om heera panna premises				Com			290	BWG		-	-	-				bin comp	27/09/2021	27/09/2021	Kisanlal Hans\n9892408602	2021-10-31
251	Heera Panna Road	Oshiwara link plaza				Com			199	Others		-	-	-								2021-10-31
252	Heera Panna Road	Oshiwara yashodeep 				Res.		60		BWG /SRA	yes	0		0				Bin comp		18/09/2021	Ishwar  Hubale\n9870473923	2021-10-31
253	Heera Panna Road	(sbi) officers quatres 35				Res.		90		MHADA	yes	11		0				Bin comp				2021-10-31
254	Heera Panna Road	Godavari 								MHADA	yes	20		0				Bin comp				2021-10-31
255	Heera Panna Road	Yamuna 38				Res.		55	12	MHADA	yes			0				Bin comp				2021-10-31
256	Heera Panna Road	Kaveri no41				Res.				MHADA	yes			0				Bin comp				2021-10-31
257	Heera Panna Road	Mhada sargam no40				Res.		88	4	MHADA	yes	0		0				Bin comp				2021-10-31
258	Heera Panna Road	Sebi gaurur				Res.		32		Others	yes	0		0				Bin comp				2021-10-31
259	Heera Panna Road	Gujarat bhavan				Res.		28		Others	yes	0		0				Bin comp				2021-10-31
260	Heera Panna Road	Tata communication residential colony				Res.		105		MHADA	yes	8		3				comp bin				2021-10-31
261	Heera Panna Road	Andhra bank quartres				Res.		62		MHADA	yes	4		11				comp bin				2021-10-31
262	Heera Panna Road	Bmc garden i				Grdn				Others	yes	-		-								2021-10-31
263	Oshiwara Mahada New Link Road	Marigold no. 1				Res.		34		MHADA	yes	20						Bin comp				2021-10-31
264	Oshiwara Mahada New Link Road	Anushkaa no.2				Res.		34		MHADA	yes	37						Bin comp				2021-10-31
265	Oshiwara Mahada New Link Road	Aroma no.3				Res.		34		MHADA	yes	14		6				Bin comp				2021-10-31
266	Oshiwara Mahada New Link Road	Sunshine no.4				Res.		34		MHADA	yes	16		7				Bin comp				2021-10-31
267	Oshiwara Mahada New Link Road	Starship no.11				Res.		28		MHADA		3						Bin comp	18/09/2021			2021-10-31
268	Oshiwara Mahada New Link Road	Lotus no.12				Res.		32		MHADA	yes	2						Bin comp	18/09/2021			2021-10-31
269	Oshiwara Mahada New Link Road	Utsav no.13				Res.		32		MHADA	yes	36		18				comp bin  returned				2021-10-31
270	Oshiwara Mahada New Link Road	Rajanigandha no.14				Res.		32		MHADA		0		0				Bin comp	18/09/2021			2021-10-31
271	Oshiwara Mahada New Link Road	Income tax officers no.24				Res.		34		MHADA	yes	19		9				Bin comp	05.10.2021			2021-10-31
272	Oshiwara Mahada New Link Road	Link way no.25				Res.		34		MHADA	yes	24		9				Bin comp				2021-10-31
273	Oshiwara Mahada New Link Road	Central excise res.iety no.26				Res.		32		MHADA	yes	0		0								2021-10-31
274	Oshiwara Mahada New Link Road	Central excise res.iety no.27				Res.		32		MHADA	yes	0		0								2021-10-31
275	Oshiwara Mahada New Link Road	Harshvardhan chamber									yes	0		0								2021-10-31
276	Oshiwara Mahada New Link Road	Oshiwara police chowki				Com				Others		-		-								2021-10-31
277	Oshiwara Mahada New Link Road	Matru chayya				Res.		32		MHADA	yes	4		4				Bin comp				2021-10-31
278	Oshiwara Mahada New Link Road	Ekdant society				Res.		34		MHADA	yes	4		4				Bin comp				2021-10-31
279	Oshiwara Mahada New Link Road	Parth no.43				Res.		32		MHADA	yes	9		3				Bin comp				2021-10-31
280	Oshiwara Mahada New Link Road	Fakir wadi (t.camp)				Res.				Others	yes	221		3								2021-10-31
281	Behram  Baug	Shakti seva sangh				Res.		91	14	BWG/SRA	no	0	0	0								2021-10-30
282	Behram  Baug	Ujala nagar sra				Res.		116	21	After 2007 (BWG/SRA)	no	0	0	0								2021-10-30
283	Behram  Baug	Patel sra				Res.				Others	no	0	0	0								2021-10-30
284	Behram  Baug	Sakirabi				Res.		114	16	After 2007 (BWG/SRA)	no	0	0	0								2021-10-30
285	Behram  Baug	Parsi colony				Res.		13x28		Others	yes	128	57	0								2021-10-30
286	Behram  Baug	Shama chs				Res.				Others	no	0	0	0								2021-10-30
287	Behram  Baug	Anupa public high scl				Scl				Others		0	0	0								2021-10-30
288	Behram  Baug	Sarvodhaya sra				Res.				BWG	no	0	0	0						03/10/2021		2021-10-30
289	Behram  Baug	Range heights				Com				After 2007 (BWG)		-	-	-								2021-10-30
290	Behram  Baug	Santosh nagar sra				Res.				BWG	no	0	0	0						28/09/2021	Amersen Yadav\n9867974333	2021-10-30
291	Behram  Baug	Green palace				Res.				Others	no	0	0	0								2021-10-30
292	Roshan Nagar	Millenium court				Res.		80	1	BWG	yes	15	15	5						27/09/2021	Nitinn Ranga\n9821337126	2021-10-30
293	Roshan Nagar	Evershine green				Res.		206	14	BWG	yes		48							18/09/2021	Rohit Sharma (chr)\n9819309474	2021-10-30
294	Roshan Nagar	Raigad military school\nCom-bldg				Com		32		BWG	yes		0									2021-10-30
295	Roshan Nagar	Raigad military school				Scl		32		Others	yes		0									2021-10-30
296	Roshan Nagar	Mariyam public high school				Scl		16 cls		Others	yes		0									2021-10-30
297	Roshan Nagar	Belvedere spring school				Scl				Others	yes		0									2021-10-30
298	Roshan Nagar	Level resident				Res.				Others		-	-	-				-				2021-10-30
299	Roshan Nagar	Oshiwara akash ganga				Res.		28		Others	yes	35	0	0								2021-10-30
300	Roshan Nagar	Oshwara vishal				Res.		28		Others	yes	20	14	0								2021-10-30
301	Roshan Nagar	Oshiwara sahyadri				Res.		56		Others	yes	37	0	0								2021-10-30
302	Roshan Nagar	Oshiwara girnar				Res.		56		Others	yes	41	0	0								2021-10-30
303	Roshan Nagar	Johig				Res.		28		Others	yes	21	9	0								2021-10-30
304	Roshan Nagar	Oshiwara ravikiran				Res.		28		Others	yes	51	12	0								2021-10-30
305	Roshan Nagar	Oshiwara satpuda				Res.		56		Others		-	-	-								2021-10-30
306	Roshan Nagar	Green daimond				Res.		40		After 2007 (BWG)	yes	41	15	0						27/09/2021	Sameer Shaik(sup)\n9920048273	2021-10-30
307	Roshan Nagar	Jogeshwari ganesh niwas				Res.		80		BWG/SRA	yes	56	22	0						27/09/2021	Bhagwan Jadhav\n9821800369	2021-10-30
308	Roshan Nagar	Roshan nagar b1				Res.		52	12	After 2007 (BWG/SRA)	yes	80	21	0						27/09/2021	Ashok Dongre\n9833455170	2021-10-30
309	Roshan Nagar	Roshan nagar b2				Res.		82	13	After 2007 (BWG/SRA)	yes	87		0						27/09/2021	Alim Khan\n8879313127	2021-10-30
310	Roshan Nagar	Lashkaria empress				Res.		56	6	After 2007 (BWG/SRA)		-	-	-				Out source		21/09/2021	Sameer Shaik\n9920048273	2021-10-30
311	Roshan Nagar	Oriental education 				Clg		0		Others		-	-	-								2021-10-30
312	Roshan Nagar	Green heights (lashkaria)				Res.		0		BWG		-	-	-				Out source		21/09/2021	Aslam Lashkaria\n9820990707	2021-10-30
313	Roshan Nagar	Shree sai lila (sra)				Res.		56		BWG	no	0	0	0								2021-10-30
314	Roshan Nagar	Shivspruthi bldg no.1 				Res.		88		BWG	yes	70	26	0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-30
315	Roshan Nagar	Shivspruthi bldg no.2 				Res.				BWG /SRA	yes	65		0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-30
316	Anand Nagar	Techweb centre				Com				Others	yes	0	33									2021-10-30
317	Anand Nagar	Daimond /pearl				Res.		18	2	Others	yes	37	16									2021-10-30
318	Anand Nagar	Vijay vishal				Res.		78		BWG	yes	5	20	2						20/09/2021	Chandrakant Kale\n9969003025	2021-10-30
319	Anand Nagar	Spice tower				Com			16	Others		-	-	-				out source				2021-10-30
320	Anand Nagar	Sandipani shikshak oshiwara				Res.		91	28	After 2007 (BWG)	no	0	3	0						20/09/2021	Rammani C. Dube\n9702334382	2021-10-30
321	Anand Nagar	Vaibhav palace				Res.		48	28	Others	yes	0	10	1								2021-10-30
322	Mega Mall	Assistant commissioner police oshiwara division mumbai				Com					no	-	0	-								2021-10-30
1173	Mega Mall	1 bhk				Com					no	0	0	0								2021-10-03
323	Mega Mall	Jay ambe				Res.		100		BWG	yes	-	10	-						28/09/2021	Amar Pal\n9920612050	2021-10-30
324	Mega Mall	Mahataranga				Res.		52	4	Others	yes	27	0	0								2021-10-30
325	Mega Mall	Swati apartment				Res.		28	7	Others	yes	23	20	0								2021-10-30
326	Mega Mall	1 bhk				Com				Others		0	15	0					-			2021-10-30
327	Mega Mall	Meera tower				Res.		100	28	BWG		-	-	-				out source			A.K.Singh (Mang)\n9930317315	2021-10-30
328	Green Park	East side no.28				Res.		32		MHADA	yes	0	0	2				bin comp	24/09/2021			2021-10-30
329	Green Park	Samruddhi no.29				Res.		32		MHADA	yes	10	13	0				bin comp	06.10.2021			2021-10-30
330	Green Park	Anand vihar				Res.		42		MHADA	yes	37	17	0				bin comp	24/09/2021			2021-10-30
331	Green Park	Oshiwara basera				Res.		28		MHADA	yes	21	22	0				bin comp				2021-10-30
332	Green Park	Park paradise				Res.		44	12	MHADA	yes	70	18	2				bin comp	25/09/2021			2021-10-30
333	Green Park	The park (lotus)				Res.		42		MHADA		-	-	-				-	-			2021-10-30
334	Tarapore	K.l walawalkar mcgm garden				Grdn				Others		-	-	-								2021-10-30
335	Tarapore	Atlantis				Res.		22		Others	yes	37	11	1								2021-10-30
336	Tarapore	Deep apartment & tower				Res.		100		BWG	yes	-	18	-						28/09/2021	Zuber Menon	2021-10-30
337	Tarapore	Harjanhans				Res.				Others	no	0	5	0								2021-10-30
338	Tarapore	Kohinoor i				Res.				Others	yes	-	-	-				out source				2021-10-30
339	Tarapore	Kohinoor ii				Res.				Others	yes	-	9	-				out source				2021-10-30
340	Tarapore	Shantivan mhada (7 bldg)				Res.		7x28		MHADA	yes	130	39						25/09/2021			2021-10-30
341	Tarapore	Bmc garden ii				Grdn				Others	yes	0	-	0								2021-10-30
342	Tarapore	Rims international school 				Scl				Others	yes	0	0	0								2021-10-30
343	Tarapore	Samartha deep				Res.		160		BWG		-	-	-				Out Source	-	-	-	2021-10-30
344	Tarapore	Samartha ashish				Res.		74		Others		-	0	-								2021-10-30
345	Tarapore	Aakash				Res.		28		MHADA	yes	0	13	0				bin comp	26/09/2021			2021-10-30
346	Tarapore	Eden garden no.22				Res.		32		MHADA	yes	0	12	0				bin comp	18/09/2021			2021-10-30
347	Tarapore	Samartha aangan				Res.		330		After 2007 (BWG)	yes	90	66	30								2021-10-30
348	Tarapore	Gulmohar				Res.		32		MHADA	yes	27	22	0								2021-10-30
349	Tarapore	Mayfair no.20				Res.		32	6	MHADA	yes	23	18	0				bin comp	18/09/2021			2021-10-30
350	Tarapore	Indra darshan l				Res.		264		BWG		-	-	-				Out source	-		-	2021-10-30
351	Tarapore	Indra darshan ll				Res.		330		BWG		-	-	-				Out source	-	-	-	2021-10-30
352	Tarapore	Tarapore garden no. 1,2,3				Res.		294		BWG	yes	0	63	0				OWC		18/09/2021	Sanjeev Sharma\n9920304152	2021-10-30
353	Tarapore	Tarapore tower				Res.		269		BWG		-	-	-				Out source	-	18/09/2021	Arun poddar\n9920720066	2021-10-30
354	Tarapore	Samartha vaibhav				Com		103	20	Others	yes	0	26	0								2021-10-30
355	Azad Nagar Petrol Pump	Tulip no.6				Res.		37	2	MHADA	yes	0	15	0				Bin comp				2021-10-30
356	Azad Nagar Petrol Pump	Aster no.5				Res.		34		MHADA	yes	0	17	10				Bin comp				2021-10-30
357	Jbcn School Lane	Blue bell no.8				Res.		34	4	MHADA	yes	35	20	0				Bin comp				2021-10-30
358	Jbcn School Lane	Avalon no7				Res.		30		MHADA	yes	0	10	0								2021-10-30
359	Jbcn School Lane	(jbcn) international school				Scl				Others	yes	-	6	-								2021-10-30
360	Jbcn School Lane	Daffodils no.10				Res.		32		MHADA	yes	0	12	0				Bin comp				2021-10-30
361	Jbcn School Lane	Indus no.9				Res.		32		MHADA	yes	47	8	0				Bin comp				2021-10-30
362	Oshiwara Garden	Maheshwari hall				Com				Others		0	0	0								2021-10-30
363	Oshiwara Garden	Suriyakiran no.19				Res.		32	6	MHADA	yes	0	21	3				bin comp	18/09/2021			2021-10-30
364	Oshiwara Garden	Amity no.18				Res.		32		MHADA	yes	0	17	2				bin comp	18/09/2021			2021-10-30
365	Oshiwara Garden	Oshiwara mhada garden				Grdn				After 2007 (BWG)	yes	0	-	0				bin comp	18/09/2021			2021-10-30
366	Oshiwara Garden	Green view no.17				Res.		32		MHADA	yes	0	15	5				bin comp	18/09/2021			2021-10-30
367	Oshiwara Garden	Hima sai no.16				Res.		32		MHADA	yes	0	19	3				bin comp	18/09/2021			2021-10-30
368	Oshiwara Garden	Raja rani malhotra vidyalaya				Scl		40		Others	yes	0	4	0								2021-10-30
369	Oshiwara Garden	Hvps education complex				Clg				Others	yes	0	31	0								2021-10-30
370	Oshiwara Garden	Goenka international school				Scl			22	Others	yes	0	12	0								2021-10-30
371	Oshiwara Garden	Marble arch school				Scl			22	Others	yes	0	0	0								2021-10-30
372	Oshiwara Garden	Goverment of india building				Res.		30		Others	yes	12	5	5								2021-10-30
373	Oshiwara Garden	Sanskar no.15				Res.		28		MHADA	yes	30	20	2					-	-	-	2021-10-30
374	Bmc Road	Aradhana gurunanak sra				Res.		286	25	BWG	no	350	35	0					-	-	-	2021-10-30
375	Bmc Road	Annapoorna chs				Res.		30		Others	yes	0	15	0					-	-	-	2021-10-30
376	Bmc Road	Godavari no1				Res.		40		MHADA	yes	0	8	0				Bin comp	02/10/2021			2021-10-30
377	Bmc Road	Krishna no 2				Res.		40		MHADA	yes	0	40	0				Bin comp	02/10/2021			2021-10-30
378	Bmc Road	Narmadha no 3				Res.		40		MHADA	yes	0		0				Bin comp	02/10/2021			2021-10-30
379	Bmc Road	Kaveri no 4				Res.		40		MHADA	yes	0		0				Bin comp	02/10/2021			2021-10-30
380	Bmc Road	Panchvati no 5				Res.		40		MHADA	yes	0	25	0				Bin comp	02/10/2021			2021-10-30
381	Bmc Road	Saptha shrungi no 6				Res.		40		MHADA	yes							Bin comp				2021-10-30
382	Bmc Road	Sai siddhii no 7				Res.		40		MHADA	yes							Bin comp				2021-10-30
383	Bmc Road	Serenity shree sai wings adef chs				Res.		72		BWG	yes	60	38	29						18/09/2021	Nandkishore Ghag\n9821394023	2021-10-30
384	Bmc Road	Serenity shree sai wings b1,b2 chs				Res.				BWG	yes									18/09/2021	Vare (Mang)\n9699720927	2021-10-30
385	Bmc Road	Serenity shree sai wings ghi chs				Res.		84		BWG	yes		35							18/09/2021	Suryanarayan Chube \n9702021707	2021-10-30
386	Bmc Road	City international school				Scl				Others	yes	0	8	0								2021-10-30
387	Heera Panna Road	Sumukh heights				Res.		42		Others		-	-	-								2021-10-30
388	Heera Panna Road	Aanand seva samity				Res.		102	11	BWG /SRA		-	-	-						27/09/2021	Mansoor Ali Khan\n9022887279	2021-10-30
389	Heera Panna Road	Reliable business centre				Com			11	After 2007 (BWG/SRA)	yes	0	30	0						27/09/2021	Shakeel Shaik\n9821326518	2021-10-30
390	Heera Panna Road	Om heera panna premises				Com			290	BWG	yes	0	0	0				bin comp	27/09/2021	27/09/2021	Kisanlal Hans\n9892408602	2021-10-30
391	Heera Panna Road	Oshiwara link plaza				Com			199	Others	yes	0	0	0								2021-10-30
392	Heera Panna Road	Oshiwara yashodeep 				Res.		60		BWG /SRA	yes	0	15	5				Bin comp		18/09/2021	Ishwar  Hubale\n9870473923	2021-10-30
393	Heera Panna Road	(sbi) officers quatres 35				Res.		90		MHADA	yes	5	20	0				Bin comp				2021-10-30
394	Heera Panna Road	Godavari 								MHADA	yes	0	9	0				Bin comp				2021-10-30
395	Heera Panna Road	Yamuna 38				Res.		55	12	MHADA	yes	22	10	0				Bin comp				2021-10-30
396	Heera Panna Road	Kaveri no41				Res.				MHADA	yes	0	12	0				Bin comp				2021-10-30
397	Heera Panna Road	Mhada sargam no40				Res.		88	4	MHADA	yes	0	8	0				Bin comp				2021-10-30
398	Heera Panna Road	Sebi gaurur				Res.		32		Others	yes	0	12	0				Bin comp				2021-10-30
399	Heera Panna Road	Gujarat bhavan				Res.		28		Others	yes	0	18	0				Bin comp				2021-10-30
400	Heera Panna Road	Tata communication residential colony				Res.		105		MHADA	yes	5	25	3				comp bin				2021-10-30
401	Heera Panna Road	Andhra bank quartres				Res.		62		MHADA	yes	0	15	0				comp bin				2021-10-30
402	Heera Panna Road	Bmc garden i				Grdn				Others	yes	0	0	0								2021-10-30
403	Oshiwara Mahada New Link Road	Marigold no. 1				Res.		34		MHADA	yes	0	9	0				Bin comp				2021-10-30
404	Oshiwara Mahada New Link Road	Anushkaa no.2				Res.		34		MHADA	yes	0	15	0				Bin comp				2021-10-30
405	Oshiwara Mahada New Link Road	Aroma no.3				Res.		34		MHADA	yes	0	25	0				Bin comp				2021-10-30
406	Oshiwara Mahada New Link Road	Sunshine no.4				Res.		34		MHADA	yes	0	20	0				Bin comp				2021-10-30
407	Oshiwara Mahada New Link Road	Starship no.11				Res.		28		MHADA	no	0	0	0				Bin comp	18/09/2021			2021-10-30
408	Oshiwara Mahada New Link Road	Lotus no.12				Res.		32		MHADA	yes	0	4	0				Bin comp	18/09/2021			2021-10-30
746	Mega Mall	Mahataranga				Res.		52	4	Others	yes	18	0	0								2021-10-27
409	Oshiwara Mahada New Link Road	Utsav no.13				Res.		32		MHADA	yes	13	10	0				comp bin  returned				2021-10-30
410	Oshiwara Mahada New Link Road	Rajanigandha no.14				Res.		32		MHADA	no	0	10	0				Bin comp	18/09/2021			2021-10-30
411	Oshiwara Mahada New Link Road	Income tax officers no.24				Res.		34		MHADA	yes	0	8	0				Bin comp	05.10.2021			2021-10-30
412	Oshiwara Mahada New Link Road	Link way no.25				Res.		34		MHADA	yes	0	27	0				Bin comp				2021-10-30
413	Oshiwara Mahada New Link Road	Central excise res.iety no.26				Res.		32		MHADA	no	25	18	0								2021-10-30
414	Oshiwara Mahada New Link Road	Central excise res.iety no.27				Res.		32		MHADA	yes	27	15	0								2021-10-30
415	Oshiwara Mahada New Link Road	Harshvardhan chamber										0	0	0								2021-10-30
416	Oshiwara Mahada New Link Road	Oshiwara police chowki				Com				Others	no	0	0	0								2021-10-30
417	Oshiwara Mahada New Link Road	Matru chayya				Res.		32		MHADA	yes	0	5	1				Bin comp				2021-10-30
418	Oshiwara Mahada New Link Road	Ekdant society				Res.		34		MHADA	yes	0	12	0				Bin comp				2021-10-30
419	Oshiwara Mahada New Link Road	Parth no.43				Res.		32		MHADA	yes	0	5	1				Bin comp				2021-10-30
420	Oshiwara Mahada New Link Road	Fakir wadi (t.camp)				Res.				Others	yes	367	67	0								2021-10-30
421	Behram  Baug	Shakti seva sangh				Res.		91	14	BWG/SRA	no	0	0	0								2021-10-29
422	Behram  Baug	Ujala nagar sra				Res.		116	21	After 2007 (BWG/SRA)	no	0	0	0								2021-10-29
423	Behram  Baug	Patel sra				Res.				Others	no	0	0	0								2021-10-29
424	Behram  Baug	Sakirabi				Res.		114	16	After 2007 (BWG/SRA)	no	0	0	0								2021-10-29
425	Behram  Baug	Parsi colony				Res.		13x28		Others	yes		56	0								2021-10-29
426	Behram  Baug	Shama chs				Res.				Others	no	0	0	0								2021-10-29
427	Behram  Baug	Anupa public high scl				Scl				Others		0	0	0								2021-10-29
428	Behram  Baug	Sarvodhaya sra				Res.				BWG	no	0	0	0						03/10/2021		2021-10-29
429	Behram  Baug	Range heights				Com				After 2007 (BWG)		-	-	-								2021-10-29
430	Behram  Baug	Santosh nagar sra				Res.				BWG	no	0	0	0						28/09/2021	Amersen Yadav\n9867974333	2021-10-29
431	Behram  Baug	Green palace				Res.				Others	no	0	0	0								2021-10-29
432	Roshan Nagar	Millenium court				Res.		80	1	BWG	yes		27					Out \nsource		27/09/2021	Nitinn Ranga\n9821337126	2021-10-29
433	Roshan Nagar	Evershine green				Res.		206	14	BWG	yes		67					OWC		18/09/2021	Rohit Sharma (chr)\n9819309474	2021-10-29
434	Roshan Nagar	Raigad military school\nCom-bldg				Com		32		BWG	yes		0									2021-10-29
435	Roshan Nagar	Raigad military school				Scl		32		Others	yes		0									2021-10-29
436	Roshan Nagar	Mariyam public high school				Scl			16	Others	yes		0									2021-10-29
437	Roshan Nagar	Belvedere spring school				Scl				Others	yes		0									2021-10-29
438	Roshan Nagar	Level resident				Res.				Others		-	-	-								2021-10-29
439	Roshan Nagar	Oshiwara akash ganga				Res.		28		Others	yes		18									2021-10-29
440	Roshan Nagar	Oshwara vishal				Res.		28		Others	yes		20									2021-10-29
441	Roshan Nagar	Oshiwara sahyadri				Res.		56		Others	yes		15									2021-10-29
442	Roshan Nagar	Oshiwara girnar				Res.		56		Others	yes		30									2021-10-29
443	Roshan Nagar	Johig				Res.		28		Others	yes		18									2021-10-29
444	Roshan Nagar	Oshiwara ravikiran				Res.		28		Others	yes		7									2021-10-29
445	Roshan Nagar	Oshiwara satpuda				Res.		56		Others		-	-	-								2021-10-29
446	Roshan Nagar	Green daimond				Res.		40		After 2007 (BWG)	yes		18							27/09/2021	Sameer Shaik(sup)\n9920048273	2021-10-29
447	Roshan Nagar	Jogeshwari ganesh niwas				Res.		80		BWG/SRA	yes		45							27/09/2021	Bhagwan Jadhav\n9821800369	2021-10-29
448	Roshan Nagar	Roshan nagar b1				Res.		52	12	After 2007 (BWG/SRA)	yes		57							27/09/2021	Ashok Dongre\n9833455170	2021-10-29
449	Roshan Nagar	Roshan nagar b2				Res.		82	13	After 2007 (BWG/SRA)	yes									27/09/2021	Alim Khan\n8879313127	2021-10-29
450	Roshan Nagar	Lashkaria empress				Res.		56	6	After 2007 (BWG/SRA)		-	-	-				Out source		21/09/2021	Sameer Shaik\n9920048273	2021-10-29
451	Roshan Nagar	Oriental education 				Clg		0		Others		-	-	-								2021-10-29
452	Roshan Nagar	Green heights (lashkaria)				Res.		0		BWG		-	-	-				Out source		21/09/2021	Aslam Lashkaria\n9820990707	2021-10-29
453	Roshan Nagar	Shree sai lila (sra)				Res.		56		BWG	no											2021-10-29
454	Roshan Nagar	Shivspruthi bldg no.1 				Res.		88		BWG	yes		35							27/09/2021	Vasant  Mahadik\n7208580681	2021-10-29
455	Roshan Nagar	Shivspruthi bldg no.2 				Res.				BWG /SRA	yes									27/09/2021	Vasant  Mahadik\n7208580681	2021-10-29
456	Anand Nagar	Techweb centre				Com				Others	yes		55									2021-10-29
457	Anand Nagar	Daimond /pearl				Res.		18	2	Others	yes		25									2021-10-29
458	Anand Nagar	Vijay vishal				Res.		78		BWG	yes		38							20/09/2021	Chandrakant Kale\n9969003025	2021-10-29
459	Anand Nagar	Spice tower				Com			16	Others		-	-	-				out source				2021-10-29
460	Anand Nagar	Sandipani shikshak oshiwara				Res.		91	28	After 2007 (BWG)	yes		8							20/09/2021	Rammani C. Dube\n9702334382	2021-10-29
461	Anand Nagar	Vaibhav palace				Res.		48	28	Others	yes		12									2021-10-29
462	Mega Mall	Assistant commissioner police oshiwara division mumbai				Com					no	0	0	0								2021-10-29
463	Mega Mall	Jay ambe				Res.		100		BWG	yes	0	12	0						28/09/2021	Amar Pal\n9920612050	2021-10-29
464	Mega Mall	Mahataranga				Res.		52	4	Others	yes	0	0	0								2021-10-29
465	Mega Mall	Swati apartment				Res.		28	7	Others	yes		12									2021-10-29
466	Mega Mall	1 bhk				Com				Others	yes	0	17	0					-			2021-10-29
467	Mega Mall	Meera tower				Res.		100	28	BWG		-	-	-				out source			A.K.Singh (Mang)\n9930317315	2021-10-29
468	Green Park	East side no.28				Res.		32		MHADA	yes		17					bin comp	24/09/2021			2021-10-29
469	Green Park	Samruddhi no.29				Res.		32		MHADA	yes		18					bin comp	06.10.2021			2021-10-29
470	Green Park	Anand vihar				Res.		42		MHADA	yes		12					bin comp	24/09/2021			2021-10-29
471	Green Park	Oshiwara basera				Res.		28		MHADA	yes		8					bin comp				2021-10-29
472	Green Park	Park paradise				Res.		44	12	MHADA	yes		18					bin comp	25/09/2021			2021-10-29
473	Green Park	The park (lotus)				Res.		42		MHADA		-	-	-				-	-			2021-10-29
474	Tarapore	K.l walawalkar mcgm garden				Grdn				Others		-	-	-								2021-10-29
475	Tarapore	Atlantis				Res.		22		Others	yes		8									2021-10-29
1171	Mega Mall	Mahataranga				Res.		52	4		yes	0	0	0								2021-10-03
476	Tarapore	Deep apartment & tower				Res.		100		BWG	yes		17							28/09/2021	Zuber Menon	2021-10-29
477	Tarapore	Harjanhans				Res.				Others			5									2021-10-29
478	Tarapore	Kohinoor i				Res.				Others	yes		0									2021-10-29
479	Tarapore	Kohinoor ii				Res.				Others	yes		10									2021-10-29
480	Tarapore	Shantivan mhada (7 bldg)				Res.		7x28		MHADA	yes		35						25/09/2021			2021-10-29
481	Tarapore	Bmc garden ii				Grdn				Others	yes		0									2021-10-29
482	Tarapore	Rims international school 				Scl				Others	yes		0									2021-10-29
483	Tarapore	Samartha deep				Res.		160		BWG		-	-	-				Out Source	-	-	-	2021-10-29
484	Tarapore	Samartha ashish				Res.		74		Others	yes		0									2021-10-29
485	Tarapore	Aakash				Res.		28		MHADA	yes		23					bin comp	26/09/2021			2021-10-29
486	Tarapore	Eden garden no.22				Res.		32		MHADA	yes		12					bin comp	18/09/2021			2021-10-29
487	Tarapore	Samartha aangan				Res.		330		After 2007 (BWG)	yes		75									2021-10-29
488	Tarapore	Gulmohar				Res.		32		MHADA	yes		10									2021-10-29
489	Tarapore	Mayfair no.20				Res.		32	6	MHADA	yes		12					bin comp	18/09/2021			2021-10-29
490	Tarapore	Indra darshan l				Res.		264		BWG		-	-	-				Out source	-		-	2021-10-29
491	Tarapore	Indra darshan ll				Res.		330		BWG		-	-	-				Out source	-	-	-	2021-10-29
492	Tarapore	Tarapore garden no. 1,2,3				Res.		294		BWG	yes	0	65	0				OWC		18/09/2021	Sanjeev Sharma\n9920304152	2021-10-29
493	Tarapore	Tarapore tower				Res.		269		BWG		-	-	-				Out source	-	18/09/2021	Arun poddar\n9920720066	2021-10-29
494	Tarapore	Samartha vaibhav				Com		103	20	Others	yes	0	15	0								2021-10-29
495																						2021-10-29
496																						2021-10-29
497	Azad Nagar Petrol Pump	Tulip no.6				Res.		37	2	MHADA	yes		15					Bin comp				2021-10-29
498	Azad Nagar Petrol Pump	Aster no.5				Res.		34		MHADA	yes		8					Bin comp				2021-10-29
499	Jbcn School Lane	Blue bell no.8				Res.		34	4	MHADA	yes		20					Bin comp				2021-10-29
500	Jbcn School Lane	Avalon no7				Res.		30		MHADA	yes		20									2021-10-29
501	Jbcn School Lane	(jbcn) international school				Scl				Others	yes		60									2021-10-29
502	Jbcn School Lane	Daffodils no.10				Res.		32		MHADA	yes		15					Bin comp				2021-10-29
503	Jbcn School Lane	Indus no.9				Res.		32		MHADA	yes		15					Bin comp				2021-10-29
504	Oshiwara Garden	Maheshwari hall				Com				Others	yes		0									2021-10-29
505	Oshiwara Garden	Suriyakiran no.19				Res.		32	6	MHADA	yes		18					bin comp	18/09/2021			2021-10-29
506	Oshiwara Garden	Amity no.18				Res.		32		MHADA	yes		15					bin comp	18/09/2021			2021-10-29
507	Oshiwara Garden	Oshiwara mhada garden				Grdn				After 2007 (BWG)	yes		0					bin comp	18/09/2021			2021-10-29
508	Oshiwara Garden	Green view no.17				Res.		32		MHADA	yes		15					bin comp	18/09/2021			2021-10-29
509	Oshiwara Garden	Hima sai no.16				Res.		32		MHADA	yes		15					bin comp	18/09/2021			2021-10-29
510	Oshiwara Garden	Raja rani malhotra vidyalaya				Scl		40		Others	yes		0									2021-10-29
511	Oshiwara Garden	Hvps education complex				Clg				Others	yes		5									2021-10-29
512	Oshiwara Garden	Goenka international school				Scl			22	Others	yes		0									2021-10-29
513	Oshiwara Garden	Marble arch school				Scl			22	Others	yes		0									2021-10-29
514	Oshiwara Garden	Goverment of india building				Res.		30		Others	yes		6									2021-10-29
515	Oshiwara Garden	Sanskar no.15				Res.		28		MHADA	yes		10						-	-	-	2021-10-29
516	Bmc Road	Aradhana gurunanak sra				Res.		286	25	BWG	yes		30						-	-	-	2021-10-29
517	Bmc Road	Annapoorna chs				Res.		30		Others	yes		21						-	-	-	2021-10-29
518	Bmc Road	Godavari no1				Res.		40		MHADA	yes		0					Bin comp	44237			2021-10-29
519	Bmc Road	Krishna no 2				Res.		40		MHADA	yes		36					Bin comp	44237			2021-10-29
520	Bmc Road	Narmadha no 3				Res.		40		MHADA	yes							Bin comp	44237			2021-10-29
521	Bmc Road	Kaveri no 4				Res.		40		MHADA	yes							Bin comp	44237			2021-10-29
522	Bmc Road	Panchvati no 5				Res.		40		MHADA	yes		10					Bin comp	44237			2021-10-29
523	Bmc Road	Saptha shrungi no 6				Res.		40		MHADA	yes							Bin comp				2021-10-29
524	Bmc Road	Sai siddhii no 7				Res.		40		MHADA	yes							Bin comp				2021-10-29
525	Bmc Road	Serenity shree sai wings adef chs				Res.		72		BWG	yes		23					Drum\n composting		18/09/2021	Nandkishore Ghag\n9821394023	2021-10-29
526	Bmc Road	Serenity shree sai wings b1,b2 chs				Res.				BWG	yes									18/09/2021	Vare (Mang)\n9699720927	2021-10-29
527	Bmc Road	Serenity shree sai wings ghi chs				Res.		84		BWG	yes		28							18/09/2021	Suryanarayan Chube \n9702021707	2021-10-29
528	Bmc Road	City international school				Scl				Others	yes		0									2021-10-29
529	Heera Panna Road	Sumukh heights				Res.		42		Others			0									2021-10-29
530	Heera Panna Road	Aanand seva samity				Res.		102	11	BWG /SRA			0							27/09/2021	Mansoor Ali Khan\n9022887279	2021-10-29
531	Heera Panna Road	Reliable business centre				Com			11	After 2007 (BWG/SRA)	yes		0							27/09/2021	Shakeel Shaik\n9821326518	2021-10-29
532	Heera Panna Road	Om heera panna premises				Com			290	BWG	no		37					bin comp	27/09/2021	27/09/2021	Kisanlal Hans\n9892408602	2021-10-29
533	Heera Panna Road	Oshiwara link plaza				Com			199	Others			0									2021-10-29
534	Heera Panna Road	Oshiwara yashodeep 				Res.		60		BWG /SRA	yes		9					Bin comp		18/09/2021	Ishwar  Hubale\n9870473923	2021-10-29
535	Heera Panna Road	(sbi) officers quatres 35				Res.		90		MHADA	yes		28					Bin comp				2021-10-29
536	Heera Panna Road	Godavari 								MHADA	yes		10					Bin comp				2021-10-29
537	Heera Panna Road	Yamuna 38				Res.		55	12	MHADA	yes		8					Bin comp				2021-10-29
538	Heera Panna Road	Kaveri no41				Res.				MHADA	yes		9					Bin comp				2021-10-29
539	Heera Panna Road	Mhada sargam no40				Res.		88	4	MHADA	yes		8					Bin comp				2021-10-29
540	Heera Panna Road	Sebi gaurur				Res.		32		Others	yes		12					Bin comp				2021-10-29
541	Heera Panna Road	Gujarat bhavan				Res.		28		Others	yes		8					Bin comp				2021-10-29
542	Heera Panna Road	Tata communication residential colony				Res.		105		MHADA	yes		5					comp bin				2021-10-29
543	Heera Panna Road	Andhra bank quartres				Res.		62		MHADA	yes		10					comp bin				2021-10-29
544	Heera Panna Road	Bmc garden i				Grdn				Others	yes	-	-	-								2021-10-29
545	Oshiwara Mahada New Link Road	Marigold no. 1				Res.		34		MHADA	yes		15					Bin comp				2021-10-29
546	Oshiwara Mahada New Link Road	Anushkaa no.2				Res.		34		MHADA	yes		5					Bin comp				2021-10-29
547	Oshiwara Mahada New Link Road	Aroma no.3				Res.		34		MHADA	yes		10					Bin comp				2021-10-29
548	Oshiwara Mahada New Link Road	Sunshine no.4				Res.		34		MHADA	yes		10					Bin comp				2021-10-29
549	Oshiwara Mahada New Link Road	Starship no.11				Res.		28		MHADA			0					Bin comp	18/09/2021			2021-10-29
550	Oshiwara Mahada New Link Road	Lotus no.12				Res.		32		MHADA	yes		0					Bin comp	18/09/2021			2021-10-29
551	Oshiwara Mahada New Link Road	Utsav no.13				Res.		32		MHADA	yes		9					comp bin  returned				2021-10-29
552	Oshiwara Mahada New Link Road	Rajanigandha no.14				Res.		32		MHADA			0					Bin comp	18/09/2021			2021-10-29
553	Oshiwara Mahada New Link Road	Income tax officers no.24				Res.		34		MHADA	yes		6					Bin comp	05.10.2021			2021-10-29
554	Oshiwara Mahada New Link Road	Link way no.25				Res.		34		MHADA	yes		18					Bin comp				2021-10-29
555	Oshiwara Mahada New Link Road	Central excise res.iety no.26				Res.		32		MHADA	yes		20									2021-10-29
556	Oshiwara Mahada New Link Road	Central excise res.iety no.27				Res.		32		MHADA	yes		15									2021-10-29
557	Oshiwara Mahada New Link Road	Harshvardhan chamber									yes		12									2021-10-29
558	Oshiwara Mahada New Link Road	Oshiwara police chowki				Com				Others			0									2021-10-29
559	Oshiwara Mahada New Link Road	Matru chayya				Res.		32		MHADA	yes		0					Bin comp				2021-10-29
560	Oshiwara Mahada New Link Road	Ekdant society				Res.		34		MHADA	yes		15					Bin comp				2021-10-29
561	Oshiwara Mahada New Link Road	Parth no.43				Res.		32		MHADA	yes		0					Bin comp				2021-10-29
562	Oshiwara Mahada New Link Road	Fakir wadi (t.camp)				Res.				Others	yes		59									2021-10-29
563	Behram  Baug	Shakti seva sangh				Res.		91	14	BWG/SRA	no	0	0	0								2021-10-28
564	Behram  Baug	Ujala nagar sra				Res.		116	21	After 2007 (BWG/SRA)	no	0	0	0								2021-10-28
565	Behram  Baug	Patel sra				Res.				Others	no	0	0	0								2021-10-28
566	Behram  Baug	Sakirabi				Res.		114	16	After 2007 (BWG/SRA)	no	0	0	0								2021-10-28
567	Behram  Baug	Parsi colony				Res.		13x28		Others	yes	98	62	0								2021-10-28
568	Behram  Baug	Shama chs				Res.				Others	no	0	0	0								2021-10-28
569	Behram  Baug	Anupa public high scl				Scl				Others		0	0	0								2021-10-28
570	Behram  Baug	Sarvodhaya sra				Res.				BWG	no	0	0	0						03/10/2021		2021-10-28
571	Behram  Baug	Range heights				Com				After 2007 (BWG)		-	-	-								2021-10-28
572	Behram  Baug	Santosh nagar sra				Res.				BWG	no	0	0	0						28/09/2021	Amersen Yadav\n9867974333	2021-10-28
573	Behram  Baug	Green palace				Res.				Others	no	0	0	0								2021-10-28
574	Roshan Nagar	Millenium court				Res.		80	1	BWG	yes	0	35	0				Out \nsource		27/09/2021	Nitinn Ranga\n9821337126	2021-10-28
575	Roshan Nagar	Evershine green				Res.		206	14	BWG	yes	30	65	0				OWC		18/09/2021	Rohit Sharma (chr)\n9819309474	2021-10-28
576	Roshan Nagar	Raigad military school\nCom-bldg				Com		32		BWG	yes	0	0	0								2021-10-28
577	Roshan Nagar	Raigad military school				Scl		32		Others	yes	0	0	0								2021-10-28
578	Roshan Nagar	Mariyam public high school				Scl			16	Others	yes	0	5	0								2021-10-28
579	Roshan Nagar	Belvedere spring school				Scl				Others	yes	0	0	0								2021-10-28
580	Roshan Nagar	Level resident				Res.				Others		-	-	-								2021-10-28
581	Roshan Nagar	Oshiwara akash ganga				Res.		28		Others	yes	24	22	0								2021-10-28
582	Roshan Nagar	Oshwara vishal				Res.		28		Others	yes	23	22	0								2021-10-28
583	Roshan Nagar	Oshiwara sahyadri				Res.		56		Others	yes	32	16	0								2021-10-28
584	Roshan Nagar	Oshiwara girnar				Res.		56		Others	yes	64	22	0								2021-10-28
585	Roshan Nagar	Johig				Res.		28		Others	yes	34	35	0								2021-10-28
586	Roshan Nagar	Oshiwara ravikiran				Res.		28		Others	yes	28	25	0								2021-10-28
587	Roshan Nagar	Oshiwara satpuda				Res.		56		Others		-	-	-								2021-10-28
588	Roshan Nagar	Green daimond				Res.		40		After 2007 (BWG)	yes	52	16	0						27/09/2021	Sameer Shaik(sup)\n9920048273	2021-10-28
589	Roshan Nagar	Jogeshwari ganesh niwas				Res.		80		BWG/SRA	yes	48	8	0						27/09/2021	Bhagwan Jadhav\n9821800369	2021-10-28
590	Roshan Nagar	Roshan nagar b1				Res.		52	12	After 2007 (BWG/SRA)	yes	52	28	0						27/09/2021	Ashok Dongre\n9833455170	2021-10-28
591	Roshan Nagar	Roshan nagar b2				Res.		82	13	After 2007 (BWG/SRA)	yes	48		0						27/09/2021	Alim Khan\n8879313127	2021-10-28
592	Roshan Nagar	Lashkaria empress				Res.		56	6	After 2007 (BWG/SRA)		-	-	-				Out source		21/09/2021	Sameer Shaik\n9920048273	2021-10-28
593	Roshan Nagar	Oriental education 				Clg		0		Others		-	-	-								2021-10-28
594	Roshan Nagar	Green heights (lashkaria)				Res.		0		BWG		-	-	-				Out source		21/09/2021	Aslam Lashkaria\n9820990707	2021-10-28
595	Roshan Nagar	Shree sai lila (sra)				Res.		56		BWG	no	0	0	0								2021-10-28
596	Roshan Nagar	Shivspruthi bldg no.1 				Res.		88		BWG	yes	123	25	0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-28
597	Roshan Nagar	Shivspruthi bldg no.2 				Res.				BWG /SRA	yes	132		0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-28
598	Anand Nagar	Techweb centre				Com				Others	yes	0	5	0								2021-10-28
599	Anand Nagar	Daimond /pearl				Res.		18	2	Others	yes	43	15	0								2021-10-28
600	Anand Nagar	Vijay vishal				Res.		78		BWG	yes	9	18	4						20/09/2021	Chandrakant Kale\n9969003025	2021-10-28
601	Anand Nagar	Spice tower				Com			16	Others		-	-	-				out source				2021-10-28
602	Anand Nagar	Sandipani shikshak oshiwara				Res.		91	28	After 2007 (BWG)	yes	32	0	0						20/09/2021	Rammani C. Dube\n9702334382	2021-10-28
603	Anand Nagar	Vaibhav palace				Res.		48	28	Others	yes	14	9	0								2021-10-28
604	Mega Mall	Assistant commissioner police oshiwara division mumbai				Com					no	0	0	0								2021-10-28
605	Mega Mall	Jay ambe				Res.		100		BWG	yes	0	15	0						28/09/2021	Amar Pal\n9920612050	2021-10-28
606	Mega Mall	Mahataranga				Res.		52	4	Others	yes	0	0	0								2021-10-28
607	Mega Mall	Swati apartment				Res.		28	7	Others	yes	10	14	0								2021-10-28
608	Mega Mall	1 bhk				Com				Others		0	30	0					-			2021-10-28
609	Mega Mall	Meera tower				Res.		100	28	BWG		-	-	-				out source			A.K.Singh (Mang)\n9930317315	2021-10-28
610	Green Park	East side no.28				Res.		32		MHADA	yes	10	16	0				bin comp	24/09/2021			2021-10-28
611	Green Park	Samruddhi no.29				Res.		32		MHADA	yes	0	12	0				bin comp	06.10.2021			2021-10-28
612	Green Park	Anand vihar				Res.		42		MHADA	yes	22	10	0				bin comp	24/09/2021			2021-10-28
613	Green Park	Oshiwara basera				Res.		28		MHADA	yes	21	10	6				bin comp				2021-10-28
614	Green Park	Park paradise				Res.		44	12	MHADA	yes	0	12	7				bin comp	25/09/2021			2021-10-28
615	Green Park	The park (lotus)				Res.		42		MHADA		-	-	-				-	-			2021-10-28
616	Tarapore	K.l walawalkar mcgm garden				Grdn				Others		-	-	-								2021-10-28
617	Tarapore	Atlantis				Res.		22		Others	yes	20	15	3								2021-10-28
618	Tarapore	Deep apartment & tower				Res.		100		BWG	yes	0	16	0						28/09/2021	Zuber Menon	2021-10-28
619	Tarapore	Harjanhans				Res.				Others	no	0	8	0								2021-10-28
620	Tarapore	Kohinoor i				Res.				Others	yes	0	-	0								2021-10-28
621	Tarapore	Kohinoor ii				Res.				Others	yes	0	23	0								2021-10-28
622	Tarapore	Shantivan mhada (7 bldg)				Res.		7x28		MHADA	yes	138	27	0					25/09/2021			2021-10-28
623	Tarapore	Bmc garden ii				Grdn				Others	yes	0	0	0								2021-10-28
624	Tarapore	Rims international school 				Scl				Others	yes	0	0	0								2021-10-28
625	Tarapore	Samartha deep				Res.		160		BWG		-	-	-				Out Source	-	-	-	2021-10-28
626	Tarapore	Samartha ashish				Res.		74		Others	yes	0	0	0								2021-10-28
627	Tarapore	Aakash				Res.		28		MHADA	yes	15	19	0				bin comp	26/09/2021			2021-10-28
628	Tarapore	Eden garden no.22				Res.		32		MHADA	yes	0	10	0				bin comp	18/09/2021			2021-10-28
629	Tarapore	Samartha aangan				Res.		330		After 2007 (BWG)	yes	98	68	48								2021-10-28
630	Tarapore	Gulmohar				Res.		32		MHADA	yes	18	13	0								2021-10-28
631	Tarapore	Mayfair no.20				Res.		32	6	MHADA	yes	22	15	0				bin comp	18/09/2021			2021-10-28
632	Tarapore	Indra darshan l				Res.		264		BWG		-	-	-				Out source	-		-	2021-10-28
633	Tarapore	Indra darshan ll				Res.		330		BWG		-	-	-				Out source	-	-	-	2021-10-28
634	Tarapore	Tarapore garden no. 1,2,3				Res.		294		BWG	yes	0	54	15				OWC		18/09/2021	Sanjeev Sharma\n9920304152	2021-10-28
635	Tarapore	Tarapore tower				Res.		269		BWG		-	-	-				Out source	-	18/09/2021	Arun poddar\n9920720066	2021-10-28
636	Tarapore	Samartha vaibhav				Com		103	20	Others	yes	0	0	0								2021-10-28
637	Azad Nagar Petrol Pump	Tulip no.6				Res.		37	2	MHADA	yes	0	8	0				Bin comp				2021-10-28
638	Azad Nagar Petrol Pump	Aster no.5				Res.		34		MHADA	yes	17	7	0				Bin comp				2021-10-28
639	Jbcn School Lane	Blue bell no.8				Res.		34	4	MHADA	yes	28	20	0				Bin comp				2021-10-28
640	Jbcn School Lane	Avalon no7				Res.		30		MHADA	yes	44	16	0								2021-10-28
641	Jbcn School Lane	(jbcn) international school				Scl				Others	yes	0	9	0								2021-10-28
642	Jbcn School Lane	Daffodils no.10				Res.		32		MHADA	yes	17	15	0				Bin comp				2021-10-28
643	Jbcn School Lane	Indus no.9				Res.		32		MHADA	yes	30	7	0				Bin comp				2021-10-28
644	Oshiwara Garden	Maheshwari hall				Com				Others	yes	0	0	0								2021-10-28
645	Oshiwara Garden	Suriyakiran no.19				Res.		32	6	MHADA	yes	5	12	0				bin comp	18/09/2021			2021-10-28
646	Oshiwara Garden	Amity no.18				Res.		32		MHADA	yes	9	15	0				bin comp	18/09/2021			2021-10-28
647	Oshiwara Garden	Oshiwara mhada garden				Grdn				After 2007 (BWG)	yes	0	0	0				bin comp	18/09/2021			2021-10-28
648	Oshiwara Garden	Green view no.17				Res.		32		MHADA	yes	5	11	2				bin comp	18/09/2021			2021-10-28
649	Oshiwara Garden	Hima sai no.16				Res.		32		MHADA	yes	30	12	0				bin comp	18/09/2021			2021-10-28
650	Oshiwara Garden	Raja rani malhotra vidyalaya				Scl		40		Others	yes	0	4	0								2021-10-28
651	Oshiwara Garden	Hvps education complex				Clg				Others	yes	0	0	0								2021-10-28
652	Oshiwara Garden	Goenka international school				Scl			22	Others	yes	0	15	0								2021-10-28
653	Oshiwara Garden	Marble arch school				Scl			22	Others	yes	0	0	0								2021-10-28
654	Oshiwara Garden	Goverment of india building				Res.		30		Others	yes	0	4	0								2021-10-28
655	Oshiwara Garden	Sanskar no.15				Res.		28		MHADA	yes	0	15	0					-	-	-	2021-10-28
656	Bmc Road	Aradhana gurunanak sra				Res.		286	25	BWG	yes	147	35	0					-	-	-	2021-10-28
657	Bmc Road	Annapoorna chs				Res.		30		Others	yes	0	15	0					-	-	-	2021-10-28
658	Bmc Road	Godavari no1				Res.		40		MHADA	yes	0	15	0				Bin comp	02/10/2021			2021-10-28
659	Bmc Road	Krishna no 2				Res.		40		MHADA	yes	0	12	0				Bin comp	02/10/2021			2021-10-28
660	Bmc Road	Narmadha no 3				Res.		40		MHADA	yes	0		0				Bin comp	02/10/2021			2021-10-28
661	Bmc Road	Kaveri no 4				Res.		40		MHADA	yes	0		0				Bin comp	02/10/2021			2021-10-28
662	Bmc Road	Panchvati no 5				Res.		40		MHADA	yes	0	25	0				Bin comp	02/10/2021			2021-10-28
663	Bmc Road	Saptha shrungi no 6				Res.		40		MHADA	yes	0		0				Bin comp				2021-10-28
664	Bmc Road	Sai siddhii no 7				Res.		40		MHADA	yes	0		0				Bin comp				2021-10-28
665	Bmc Road	Serenity shree sai wings adef chs				Res.		72		BWG	yes	48	25	9				Drum\n composting		18/09/2021	Nandkishore Ghag\n9821394023	2021-10-28
666	Bmc Road	Serenity shree sai wings b1,b2 chs				Res.				BWG	yes									18/09/2021	Vare (Mang)\n9699720927	2021-10-28
667	Bmc Road	Serenity shree sai wings ghi chs				Res.		84		BWG	yes		20							18/09/2021	Suryanarayan Chube \n9702021707	2021-10-28
668	Bmc Road	City international school				Scl				Others	yes	0	2	0								2021-10-28
669	Heera Panna Road	Sumukh heights				Res.		42		Others		-	5	-								2021-10-28
670	Heera Panna Road	Aanand seva samity				Res.		102	11	BWG /SRA		-	0	-						27/09/2021	Mansoor Ali Khan\n9022887279	2021-10-28
671	Heera Panna Road	Reliable business centre				Com			11	After 2007 (BWG/SRA)	yes	0	27	0						27/09/2021	Shakeel Shaik\n9821326518	2021-10-28
672	Heera Panna Road	Om heera panna premises				Com			290	BWG	no	0	35	0				bin comp	27/09/2021	27/09/2021	Kisanlal Hans\n9892408602	2021-10-28
673	Heera Panna Road	Oshiwara link plaza				Com			199	Others	no	0	0	0								2021-10-28
674	Heera Panna Road	Oshiwara yashodeep 				Res.		60		BWG /SRA	yes	5	25	0				Bin comp		18/09/2021	Ishwar  Hubale\n9870473923	2021-10-28
675	Heera Panna Road	(sbi) officers quatres 35				Res.		90		MHADA	yes	9	12	7				Bin comp				2021-10-28
676	Heera Panna Road	Godavari 								MHADA	yes	0	12	0				Bin comp				2021-10-28
677	Heera Panna Road	Yamuna 38				Res.		55	12	MHADA	yes	2	15	0				Bin comp				2021-10-28
678	Heera Panna Road	Kaveri no41				Res.				MHADA	yes	3	11	0				Bin comp				2021-10-28
679	Heera Panna Road	Mhada sargam no40				Res.		88	4	MHADA	yes	1	7	0				Bin comp				2021-10-28
680	Heera Panna Road	Sebi gaurur				Res.		32		Others	yes	0	12	0				Bin comp				2021-10-28
681	Heera Panna Road	Gujarat bhavan				Res.		28		Others	yes	0	12	0				Bin comp				2021-10-28
682	Heera Panna Road	Tata communication residential colony				Res.		105		MHADA	yes	2	30	5				comp bin				2021-10-28
683	Heera Panna Road	Andhra bank quartres				Res.		62		MHADA	yes	0	15	5				comp bin				2021-10-28
684	Heera Panna Road	Bmc garden i				Grdn				Others	yes	-	-	-								2021-10-28
685	Oshiwara Mahada New Link Road	Marigold no. 1				Res.		34		MHADA	yes	3	14	2				Bin comp				2021-10-28
686	Oshiwara Mahada New Link Road	Anushkaa no.2				Res.		34		MHADA	yes	4	15	4				Bin comp				2021-10-28
687	Oshiwara Mahada New Link Road	Aroma no.3				Res.		34		MHADA	yes	7	10	3				Bin comp				2021-10-28
688	Oshiwara Mahada New Link Road	Sunshine no.4				Res.		34		MHADA	yes	3	8	6				Bin comp				2021-10-28
689	Oshiwara Mahada New Link Road	Starship no.11				Res.		28		MHADA		4	0	3				Bin comp	18/09/2021			2021-10-28
690	Oshiwara Mahada New Link Road	Lotus no.12				Res.		32		MHADA	yes	0	5	0				Bin comp	18/09/2021			2021-10-28
691	Oshiwara Mahada New Link Road	Utsav no.13				Res.		32		MHADA	yes	4	10	3				comp bin  returned				2021-10-28
692	Oshiwara Mahada New Link Road	Rajanigandha no.14				Res.		32		MHADA		0	8	0				Bin comp	18/09/2021			2021-10-28
693	Oshiwara Mahada New Link Road	Income tax officers no.24				Res.		34		MHADA	yes	8	5	7				Bin comp	05.10.2021			2021-10-28
694	Oshiwara Mahada New Link Road	Link way no.25				Res.		34		MHADA	yes		9					Bin comp				2021-10-28
695	Oshiwara Mahada New Link Road	Central excise res.iety no.26				Res.		32		MHADA	yes	0	16	0								2021-10-28
696	Oshiwara Mahada New Link Road	Central excise res.iety no.27				Res.		32		MHADA	yes	29	15	11								2021-10-28
697	Oshiwara Mahada New Link Road	Harshvardhan chamber										0	4	0								2021-10-28
698	Oshiwara Mahada New Link Road	Oshiwara police chowki				Com				Others	no	0	0	0								2021-10-28
699	Oshiwara Mahada New Link Road	Matru chayya				Res.		32		MHADA	yes	0	15	0				Bin comp				2021-10-28
700	Oshiwara Mahada New Link Road	Ekdant society				Res.		34		MHADA	yes	0	7	2				Bin comp				2021-10-28
701	Oshiwara Mahada New Link Road	Parth no.43				Res.		32		MHADA	yes	0	12	0				Bin comp				2021-10-28
702	Oshiwara Mahada New Link Road	Fakir wadi (t.camp)				Res.				Others	yes	167	41	0								2021-10-28
703	Behram  Baug	Shakti seva sangh				Res.		91	14	BWG/SRA	no	0	0	0								2021-10-27
704	Behram  Baug	Ujala nagar sra				Res.		116	21	After 2007 (BWG/SRA)	no	0	0	0								2021-10-27
705	Behram  Baug	Patel sra				Res.				Others	no	0	0	0								2021-10-27
706	Behram  Baug	Sakirabi				Res.		114	16	After 2007 (BWG/SRA)	no	0	0	0								2021-10-27
707	Behram  Baug	Parsi colony				Res.		13x28		Others	yes	225	51	0								2021-10-27
708	Behram  Baug	Shama chs				Res.				Others	no	0	0	0								2021-10-27
709	Behram  Baug	Anupa public high scl				Scl				Others		0	0	0								2021-10-27
710	Behram  Baug	Sarvodhaya sra				Res.				BWG	no	0	0	0						03/10/2021		2021-10-27
711	Behram  Baug	Range heights				Com				After 2007 (BWG)		-	-	-								2021-10-27
712	Behram  Baug	Santosh nagar sra				Res.				BWG	no	0	0	0						28/09/2021	Amersen Yadav\n9867974333	2021-10-27
713	Behram  Baug	Green palace				Res.				Others	no	0	0	0								2021-10-27
714	Roshan Nagar	Millenium court				Res.		80	1	BWG	yes	0	15	0						27/09/2021	Nitinn Ranga\n9821337126	2021-10-27
715	Roshan Nagar	Evershine green				Res.		206	14	BWG	yes	15	48	12				OWC		18/09/2021	Rohit Sharma (chr)\n9819309474	2021-10-27
716	Roshan Nagar	Raigad military school\nCom-bldg				Com		32		BWG	yes	0	0	0								2021-10-27
717	Roshan Nagar	Raigad military school				Scl		32		Others	yes	0	0	0								2021-10-27
718	Roshan Nagar	Mariyam public high school				Scl			16	Others	yes	0	0	0								2021-10-27
719	Roshan Nagar	Belvedere spring school				Scl				Others	yes	0	0	0								2021-10-27
720	Roshan Nagar	Level resident				Res.				Others		-	-	-								2021-10-27
721	Roshan Nagar	Oshiwara akash ganga				Res.		28		Others	yes	21	0	0								2021-10-27
722	Roshan Nagar	Oshwara vishal				Res.		28		Others	yes	31	14	0								2021-10-27
723	Roshan Nagar	Oshiwara sahyadri				Res.		56		Others	yes	65	0	0								2021-10-27
724	Roshan Nagar	Oshiwara girnar				Res.		56		Others	yes	29	0	0								2021-10-27
725	Roshan Nagar	Johig				Res.		28		Others	yes	51	9	0								2021-10-27
726	Roshan Nagar	Oshiwara ravikiran				Res.		28		Others	yes	31	12	0								2021-10-27
727	Roshan Nagar	Oshiwara satpuda				Res.		56		Others		-	-	-								2021-10-27
728	Roshan Nagar	Green daimond				Res.		40		After 2007 (BWG)	yes	51	15	0						27/09/2021	Sameer Shaik(sup)\n9920048273	2021-10-27
729	Roshan Nagar	Jogeshwari ganesh niwas				Res.		80		BWG/SRA	yes	71	22	0						27/09/2021	Bhagwan Jadhav\n9821800369	2021-10-27
730	Roshan Nagar	Roshan nagar b1				Res.		52	12	After 2007 (BWG/SRA)	yes	72	21	0						27/09/2021	Ashok Dongre\n9833455170	2021-10-27
731	Roshan Nagar	Roshan nagar b2				Res.		82	13	After 2007 (BWG/SRA)	yes	80		0						27/09/2021	Alim Khan\n8879313127	2021-10-27
732	Roshan Nagar	Lashkaria empress				Res.		56	6	After 2007 (BWG/SRA)		-	-	-				Out source		21/09/2021	Sameer Shaik\n9920048273	2021-10-27
733	Roshan Nagar	Oriental education 				Clg		0		Others		-	-	-								2021-10-27
734	Roshan Nagar	Green heights (lashkaria)				Res.		0		BWG		-	-	-				Out source		21/09/2021	Aslam Lashkaria\n9820990707	2021-10-27
735	Roshan Nagar	Shree sai lila (sra)				Res.		56		BWG	no	0	0	0								2021-10-27
736	Roshan Nagar	Shivspruthi bldg no.1 				Res.		88		BWG	yes	89	26	0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-27
737	Roshan Nagar	Shivspruthi bldg no.2 				Res.				BWG /SRA	yes	69		0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-27
738	Anand Nagar	Techweb centre				Com				Others	yes	0	33	0								2021-10-27
739	Anand Nagar	Daimond /pearl				Res.		18	2	Others	yes	35	16	0								2021-10-27
740	Anand Nagar	Vijay vishal				Res.		78		BWG	yes	20	20	13						20/09/2021	Chandrakant Kale\n9969003025	2021-10-27
741	Anand Nagar	Spice tower				Com			16	Others		-	-	-				out source				2021-10-27
742	Anand Nagar	Sandipani shikshak oshiwara				Res.		91	28	After 2007 (BWG)	yes	157	3	0						20/09/2021	Rammani C. Dube\n9702334382	2021-10-27
743	Anand Nagar	Vaibhav palace				Res.		48	28	Others	yes	16	10	10								2021-10-27
744	Mega Mall	Assistant commissioner police oshiwara division mumbai				Com					no	0	0	0								2021-10-27
745	Mega Mall	Jay ambe				Res.		100		BWG	yes	0	10	0						28/09/2021	Amar Pal\n9920612050	2021-10-27
747	Mega Mall	Swati apartment				Res.		28	7	Others	yes	29	20	0								2021-10-27
748	Mega Mall	1 bhk				Com				Others	yes	0	15	0					-			2021-10-27
749	Mega Mall	Meera tower				Res.		100	28	BWG		-	-	-				out source			A.K.Singh (Mang)\n9930317315	2021-10-27
750	Green Park	East side no.28				Res.		32		MHADA	yes	5	0	0				bin comp	24/09/2021			2021-10-27
751	Green Park	Samruddhi no.29				Res.		32		MHADA	yes	0	13	11				bin comp	06.10.2021			2021-10-27
752	Green Park	Anand vihar				Res.		42		MHADA	yes	12	17	0				bin comp	24/09/2021			2021-10-27
753	Green Park	Oshiwara basera				Res.		28		MHADA	yes	15	22	0				bin comp				2021-10-27
754	Green Park	Park paradise				Res.		44	12	MHADA	yes	25	18	3				bin comp	25/09/2021			2021-10-27
755	Green Park	The park (lotus)				Res.		42		MHADA		-	-	-				-	-			2021-10-27
756	Tarapore	K.l walawalkar mcgm garden				Grdn				Others		-	-	-								2021-10-27
757	Tarapore	Atlantis				Res.		22		Others	yes	35	11	0								2021-10-27
758	Tarapore	Deep apartment & tower				Res.		100		BWG	yes	0	18	0						28/09/2021	Zuber Menon	2021-10-27
759	Tarapore	Harjanhans				Res.				Others	no	0	5	0								2021-10-27
760	Tarapore	Kohinoor i				Res.				Others	yes	-	-	-								2021-10-27
761	Tarapore	Kohinoor ii				Res.				Others	yes	-	9	-								2021-10-27
762	Tarapore	Shantivan mhada (7 bldg)				Res.		7x28		MHADA	yes	130	39	20					25/09/2021			2021-10-27
763	Tarapore	Bmc garden ii				Grdn				Others	yes	-	-	-								2021-10-27
764	Tarapore	Rims international school 				Scl				Others	yes	0	0	0								2021-10-27
765	Tarapore	Samartha deep				Res.		160		BWG		-	-	-				Out Source	-	-	-	2021-10-27
766	Tarapore	Samartha ashish				Res.		74		Others	yes	0	0	0								2021-10-27
767	Tarapore	Aakash				Res.		28		MHADA	yes	21	13	0				bin comp	26/09/2021			2021-10-27
768	Tarapore	Eden garden no.22				Res.		32		MHADA	yes	11	12	10				bin comp	18/09/2021			2021-10-27
769	Tarapore	Samartha aangan				Res.		330		After 2007 (BWG)	yes	10	66	2								2021-10-27
770	Tarapore	Gulmohar				Res.		32		MHADA	yes	11	22	5								2021-10-27
771	Tarapore	Mayfair no.20				Res.		32	6	MHADA	yes	7	18	2				bin comp	18/09/2021			2021-10-27
772	Tarapore	Indra darshan l				Res.		264		BWG		-	-	-				Out source	-		-	2021-10-27
773	Tarapore	Indra darshan ll				Res.		330		BWG		-	-	-				Out source	-	-	-	2021-10-27
774	Tarapore	Tarapore garden no. 1,2,3				Res.		294		BWG	yes	127	63	0				OWC		18/09/2021	Sanjeev Sharma\n9920304152	2021-10-27
775	Tarapore	Tarapore tower				Res.		269		BWG		-	-	-				Out source	-	18/09/2021	Arun poddar\n9920720066	2021-10-27
776	Tarapore	Samartha vaibhav				Com		103	20	Others	yes	0	26	0								2021-10-27
777	Azad Nagar Petrol Pump	Tulip no.6				Res.		37	2	MHADA	yes	8	15	7				Bin comp				2021-10-27
778	Azad Nagar Petrol Pump	Aster no.5				Res.		34		MHADA	yes	0	17	0				Bin comp				2021-10-27
779	Jbcn School Lane	Blue bell no.8				Res.		34	4	MHADA	yes	20	20	1				Bin comp				2021-10-27
780	Jbcn School Lane	Avalon no7				Res.		30		MHADA	yes	26	10	0								2021-10-27
781	Jbcn School Lane	(jbcn) international school				Scl				Others	yes		6									2021-10-27
782	Jbcn School Lane	Daffodils no.10				Res.		32		MHADA	yes	20	12	10				Bin comp				2021-10-27
783	Jbcn School Lane	Indus no.9				Res.		32		MHADA	yes	21	8	5				Bin comp				2021-10-27
784	Oshiwara Garden	Maheshwari hall				Com				Others	yes	0	0	0								2021-10-27
785	Oshiwara Garden	Suriyakiran no.19				Res.		32	6	MHADA	yes	10	21	2				bin comp	18/09/2021			2021-10-27
786	Oshiwara Garden	Amity no.18				Res.		32		MHADA	yes	15	17	1				bin comp	18/09/2021			2021-10-27
787	Oshiwara Garden	Oshiwara mhada garden				Grdn				After 2007 (BWG)	yes	-	-	-				bin comp	18/09/2021			2021-10-27
788	Oshiwara Garden	Green view no.17				Res.		32		MHADA	yes	10	15	1				bin comp	18/09/2021			2021-10-27
789	Oshiwara Garden	Hima sai no.16				Res.		32		MHADA	yes	20	19	2				bin comp	18/09/2021			2021-10-27
790	Oshiwara Garden	Raja rani malhotra vidyalaya				Scl		40		Others	yes	-	4	-								2021-10-27
791	Oshiwara Garden	Hvps education complex				Clg				Others	yes	-	31	-								2021-10-27
792	Oshiwara Garden	Goenka international school				Scl			22	Others	yes	-	12	-								2021-10-27
793	Oshiwara Garden	Marble arch school				Scl			22	Others	yes	-	0	-								2021-10-27
794	Oshiwara Garden	Goverment of india building				Res.		30		Others	yes	-	5	-								2021-10-27
795	Oshiwara Garden	Sanskar no.15				Res.		28		MHADA	yes	-	20	-					-	-	-	2021-10-27
796	Bmc Road	Aradhana gurunanak sra				Res.		286	25	BWG	yes	271	35	0					-	-	-	2021-10-27
797	Bmc Road	Annapoorna chs				Res.		30		Others	yes	51	15	0					-	-	-	2021-10-27
798	Bmc Road	Godavari no1				Res.		40		MHADA	yes	8	8	3				Bin comp	02/10/2021			2021-10-27
799	Bmc Road	Krishna no 2				Res.		40		MHADA	yes	0	40	0				Bin comp	02/10/2021			2021-10-27
800	Bmc Road	Narmadha no 3				Res.		40		MHADA	yes	10		7				Bin comp	02/10/2021			2021-10-27
801	Bmc Road	Kaveri no 4				Res.		40		MHADA	yes	18		2				Bin comp	02/10/2021			2021-10-27
802	Bmc Road	Panchvati no 5				Res.		40		MHADA	yes	0	25	0				Bin comp	02/10/2021			2021-10-27
803	Bmc Road	Saptha shrungi no 6				Res.		40		MHADA	yes	0		0				Bin comp				2021-10-27
804	Bmc Road	Sai siddhii no 7				Res.		40		MHADA	yes	20		10				Bin comp				2021-10-27
805	Bmc Road	Serenity shree sai wings adef chs				Res.		72		BWG	yes	61	38	10				Drum\n composting		18/09/2021	Nandkishore Ghag\n9821394023	2021-10-27
806	Bmc Road	Serenity shree sai wings b1,b2 chs				Res.				BWG	yes									18/09/2021	Vare (Mang)\n9699720927	2021-10-27
807	Bmc Road	Serenity shree sai wings ghi chs				Res.		84		BWG	yes		35							18/09/2021	Suryanarayan Chube \n9702021707	2021-10-27
808	Bmc Road	City international school				Scl				Others	yes	0	8	0								2021-10-27
809	Heera Panna Road	Sumukh heights				Res.		42		Others	no	-	-	-								2021-10-27
810	Heera Panna Road	Aanand seva samity				Res.		102	11	BWG /SRA	no	-	-	-						27/09/2021	Mansoor Ali Khan\n9022887279	2021-10-27
811	Heera Panna Road	Reliable business centre				Com			11	After 2007 (BWG/SRA)	yes	0	30	0						27/09/2021	Shakeel Shaik\n9821326518	2021-10-27
812	Heera Panna Road	Om heera panna premises				Com			290	BWG	no	0	0	0				bin comp	27/09/2021	27/09/2021	Kisanlal Hans\n9892408602	2021-10-27
813	Heera Panna Road	Oshiwara link plaza				Com			199	Others	no	0	0	0								2021-10-27
814	Heera Panna Road	Oshiwara yashodeep 				Res.		60		BWG /SRA	yes	20	15	6				Bin comp		18/09/2021	Ishwar  Hubale\n9870473923	2021-10-27
815	Heera Panna Road	(sbi) officers quatres 35				Res.		90		MHADA	yes	10	20	1				Bin comp				2021-10-27
816	Heera Panna Road	Godavari 								MHADA	yes	0	9	0				Bin comp				2021-10-27
817	Heera Panna Road	Yamuna 38				Res.		55	12	MHADA	yes	23	10	4				Bin comp				2021-10-27
818	Heera Panna Road	Kaveri no41				Res.				MHADA	yes	0	12	0				Bin comp				2021-10-27
819	Heera Panna Road	Mhada sargam no40				Res.		88	4	MHADA	yes	15	8	3				Bin comp				2021-10-27
820	Heera Panna Road	Sebi gaurur				Res.		32		Others	yes	0	12	0				Bin comp				2021-10-27
821	Heera Panna Road	Gujarat bhavan				Res.		28		Others	yes	11	18	0				Bin comp				2021-10-27
822	Heera Panna Road	Tata communication residential colony				Res.		105		MHADA	yes	0	25	0				comp bin				2021-10-27
823	Heera Panna Road	Andhra bank quartres				Res.		62		MHADA	yes	0	15	5				comp bin				2021-10-27
824	Heera Panna Road	Bmc garden i				Grdn				Others	yes	0	0	0								2021-10-27
825	Oshiwara Mahada New Link Road	Marigold no. 1				Res.		34		MHADA	yes	0	9	0				Bin comp				2021-10-27
826	Oshiwara Mahada New Link Road	Anushkaa no.2				Res.		34		MHADA	yes	0	15	0				Bin comp				2021-10-27
827	Oshiwara Mahada New Link Road	Aroma no.3				Res.		34		MHADA	yes	0	25	0				Bin comp				2021-10-27
828	Oshiwara Mahada New Link Road	Sunshine no.4				Res.		34		MHADA	yes	0	20	0				Bin comp				2021-10-27
829	Oshiwara Mahada New Link Road	Starship no.11				Res.		28		MHADA	no	27	0	1				Bin comp	18/09/2021			2021-10-27
830	Oshiwara Mahada New Link Road	Lotus no.12				Res.		32		MHADA	yes	0	4	0				Bin comp	18/09/2021			2021-10-27
831	Oshiwara Mahada New Link Road	Utsav no.13				Res.		32		MHADA	yes	31	10	2				comp bin  returned				2021-10-27
832	Oshiwara Mahada New Link Road	Rajanigandha no.14				Res.		32		MHADA		0	10	0				Bin comp	18/09/2021			2021-10-27
833	Oshiwara Mahada New Link Road	Income tax officers no.24				Res.		34		MHADA	yes	0	8	0				Bin comp	05.10.2021			2021-10-27
834	Oshiwara Mahada New Link Road	Link way no.25				Res.		34		MHADA	yes	15	30	0				Bin comp				2021-10-27
835	Oshiwara Mahada New Link Road	Central excise res.iety no.26				Res.		32		MHADA	yes	30	18	0								2021-10-27
836	Oshiwara Mahada New Link Road	Central excise res.iety no.27				Res.		32		MHADA	yes	35	15	0								2021-10-27
837	Oshiwara Mahada New Link Road	Harshvardhan chamber									no	0	0	0								2021-10-27
838	Oshiwara Mahada New Link Road	Oshiwara police chowki				Com				Others	no	0	0	0								2021-10-27
839	Oshiwara Mahada New Link Road	Matru chayya				Res.		32		MHADA	yes	5	5	2				Bin comp				2021-10-27
840	Oshiwara Mahada New Link Road	Ekdant society				Res.		34		MHADA	yes	0	10	3				Bin comp				2021-10-27
841	Oshiwara Mahada New Link Road	Parth no.43				Res.		32		MHADA	yes	0	5	0				Bin comp				2021-10-27
842	Oshiwara Mahada New Link Road	Fakir wadi (t.camp)				Res.				Others	yes	391	61	0								2021-10-27
843	Behram  Baug	Shakti seva sangh				Res.		91	14	BWG/SRA	no	-	-	-					-			2021-10-01
844	Behram  Baug	Ujala nagar sra				Res.		116	21	After 2007 (BWG/SRA)	no	-	-	-					-			2021-10-01
845	Behram  Baug	Patel sra				Res.					no	-	-	-								2021-10-01
846	Behram  Baug	Sakirabi				Res.		114	16	After 2007 (BWG/SRA)	no	-	-	-					-			2021-10-01
847	Behram  Baug	Parsi colony				Res.		13x28		Other	yes	180	40	0								2021-10-01
848	Behram  Baug	Shama chs				Res.					no	-	-	-								2021-10-01
849	Behram  Baug	Anupa public high scl				Scl						-	-	-								2021-10-01
850	Behram  Baug	Sarvodhaya sra				Res.				BWG	no	-	-	-						03/10/2021		2021-10-01
851	Behram  Baug	Range heights				Com				After 2007 (BWG)	no	-	-	-								2021-10-01
852	Behram  Baug	Santosh nagar sra				Res.				BWG	no	-	-	-						28/09/2021	Amersen Yadav\n9867974333	2021-10-01
853	Behram  Baug	Green palace				Res.					no	-	-	-								2021-10-01
854	Roshan Nagar	Milliennium court				Res.		80	1	BWG	yes	0	30	0						27/09/2021	Nitinn Ranga\n9821337126	2021-10-01
855	Roshan Nagar	Evershine green				Res.		206	14	BWG	yes	40	0	5						18/09/2021	Rohit Sharma (chr)\n9819309474	2021-10-01
856	Roshan Nagar	Raigad military school\nCom-bldg				Com		32				-	-	-								2021-10-01
857	Roshan Nagar	Raigad military school				Scl		32			-	-	-	-								2021-10-01
858	Roshan Nagar	Mariyam public high school				Scl			16			-	-	-								2021-10-01
859	Roshan Nagar	Belvedere spring school				Scl						-	-	-								2021-10-01
860	Roshan Nagar	Level resident				Res.						-	-	-								2021-10-01
861	Roshan Nagar	Oshiwara akash ganga				Res.		28			yes	40	10	0								2021-10-01
862	Roshan Nagar	Oshwara vishal				Res.		28			yes	30	10	0								2021-10-01
863	Roshan Nagar	Oshiwara sahyadri				Res.		56			yes	50	5	0								2021-10-01
864	Roshan Nagar	Oshiwara girnar				Res.		56			yes	70	15	0								2021-10-01
865	Roshan Nagar	Johig				Res.		28			yes	15	5	0								2021-10-01
866	Roshan Nagar	Oshiwara ravikiran				Res.		28			yes	10	5	0								2021-10-01
867	Roshan Nagar	Oshiwara satpuda				Res.		56			yes	50	0	0								2021-10-01
868	Roshan Nagar	Green daimond				Res.		40		After 2007 (BWG)	yes	30	25	0						27/09/2021	Sameer Shaik(sup)\n9920048273	2021-10-01
869	Roshan Nagar	Jogeshwari ganesh niwas				Res.		80		BWG/SRA	yes	80	12	0						27/09/2021	Bhagwan Jadhav\n9821800369	2021-10-01
870	Roshan Nagar	Roshan nagar b1				Res.		52	12	After 2007 (BWG/SRA)	yes	35	0	0						27/09/2021	Ashok Dongre\n9833455170	2021-10-01
871	Roshan Nagar	Roshan nagar b2				Res.		82	13	After 2007 (BWG/SRA)	yes	25	0	0						27/09/2021	Alim Khan\n8879313127	2021-10-01
872	Roshan Nagar	Lashkaria empress				Res.		56	6	After 2007 (BWG/SRA)	no	-	-	-						21/09/2021	Sameer Shaik\n9920048273	2021-10-01
873	Roshan Nagar	Oriental education 				Clg						-	-	-								2021-10-01
874	Roshan Nagar	Green heights (lashkaria)				Res.				BWG	no	-	-	-						21/09/2021	Aslam Lashkaria\n9820990707	2021-10-01
875	Roshan Nagar	Sree sai lila (sra)				Res.		56		BWG		-	-	-								2021-10-01
876	Roshan Nagar	Shivspruthi bldg no.1 				Res.				BWG	yes	50	20	0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-01
877	Roshan Nagar	Shivspruthi bldg no.2 				Res.		88		BWG /SRA	yes	90	30	0					-	27/09/2021	Vasant  Mahadik\n7208580681	2021-10-01
878	Anand Nagar	Techweb centre				Com					yes	15	0	0								2021-10-01
879	Anand Nagar	Daimond /pearl				Res.		18	2		no	0	0	0								2021-10-01
880	Anand Nagar	Vijay vishal				Res.		78		BWG	yes	30	10	5						20/09/2021	Chandrakant Kale\n9969003025	2021-10-01
881	Anand Nagar	Spice tower				Com			16			-	-	-					out source			2021-10-01
882	Anand Nagar	Sandipani shikshak oshiwara				Res.		91	28	After 2007 (BWG)	no	-	-	-						20/09/2021	Rammani C. Dube\n9702334382	2021-10-01
883	Anand Nagar	Vaibhav palace				Res.		48	28		no	0	0	0.5								2021-10-01
884	Mega Mall	Assistant commissioner police oshiwara division mumbai				Com					yes	0	10	0								2021-10-01
885	Mega Mall	Jay ambe				Res.		100		BWG	yes	90	10	0						28/09/2021	Amar Pal\n9920612050	2021-10-01
886	Mega Mall	Mahataranga				Res.		52	4		yes	0	20	0								2021-10-01
887	Mega Mall	Sawati apartment				Res.		28	7		no	0	0	2								2021-10-01
888	Mega Mall	1 bhk				Com					no	0	0	0								2021-10-01
889	Mega Mall	Meera tower				Res.		100	28	BWG										18/09/2021	A.K.Singh (Mang)\n9930317315	2021-10-01
890	Green Park	East side no.28				Res.		32		MHADA	yes	0	6	0					24/09/2021			2021-10-01
891	Green Park	Samruddhi no.29				Res.		32		MHADA	yes	35	7	0								2021-10-01
892	Green Park	Anand vihar				Res.		42		MHADA	yes	0	12	0					24/09/2021			2021-10-01
893	Green Park	Oshiwara basera				Res.		28		MHADA	yes	45	4	0								2021-10-01
894	Green Park	Park paradise				Res.		44	12	MHADA	yes	0	17	7					25/09/2021			2021-10-01
895	Green Park																					2021-10-01
896	Tarapore	K.l walawalkar mcgm garden				Grdn					-	-	-	-								2021-10-01
897	Tarapore	Atlantis				Res.		22				0	0	0								2021-10-01
898	Tarapore	Deep apartment				Res.		100		BWG		0	0	0						28/09/2021	Zuber Menon	2021-10-01
899	Tarapore	Arjanhans				Res.						0	0	0								2021-10-01
900	Tarapore	Kohinoor i				Res.						0	0	0								2021-10-01
901	Tarapore	Kohinoor ii				Res.						0	0	0								2021-10-01
902	Tarapore	Shantivan mhada (7 bldg)				Res.		7x28		MHADA		200	30	0								2021-10-01
903	Tarapore	Rims international school 				Scl						-	-	-								2021-10-01
904	Tarapore	Samartha deep				Res.		160				-	-	-				out source				2021-10-01
905	Tarapore	Samartha ashish				Res.		74				-	-	-				out source				2021-10-01
906	Tarapore	Aakash				Res.		28		MHADA	yes	0	13	0					26/09/2021			2021-10-01
907	Tarapore	Eden garden no.22				Res.		32		MHADA	yes	0	10	0					24/09/2021			2021-10-01
908	Tarapore	Samartha aangan				Res.		330		After 2007 (BWG)	yes	80	25	25								2021-10-01
909	Tarapore	Gulmohar				Res.		32		MHADA	no	0	0	0								2021-10-01
910	Tarapore	Mayfair no.20				Res.		32	6	MHADA	yes	0	5	1					23/09/2021			2021-10-01
911	Tarapore	Indra darshan l				Res.		264				0	0	0				out source				2021-10-01
912	Tarapore	Indra darshan ll				Res.		330				0	0	0				out source				2021-10-01
913	Tarapore	Tarapore garden no. 1,2,3				Res.		294		BWG	yes	60	0	26						18/09/2021	Sanjeev Sharma\n9920304152	2021-10-01
914	Tarapore	Tarapore tower				Res.		269		BWG		-	-	-				out source		18/09/2021	Arun poddar\n9920720066	2021-10-01
915	Tarapore	Samartha vaibhav				Com		103	20		yes	0	0	0								2021-10-01
916	Tarapore																					2021-10-01
917	Azad Nagar Petrol Pump	Tulip no.6				Res.		37	2	MHADA	yes	60	10	6								2021-10-01
918	Azad Nagar Petrol Pump	Aster no.5				Res.		34		MHADA	no	0	0	0								2021-10-01
919	Azad Nagar Petrol Pump	Kasturi res.iety				Res.		32				-	-	-								2021-10-01
920	Jbcn School Lane	Blue bell no.8				Res.		34	4	MHADA	yes	40	6	2								2021-10-01
921	Jbcn School Lane	Avalon no7				Res.		30		MHADA	yes	30	12	0								2021-10-01
922	Jbcn School Lane	(jbcn) international school				Scl					yes	0	0	0								2021-10-01
923	Jbcn School Lane	Daffodils no.10				Res.		32		MHADA	yes	70	30	0								2021-10-01
924	Jbcn School Lane	Indus no.9				Res.		32		MHADA	yes	78	23	3								2021-10-01
925	Oshiwara Garden	Maheshwari hall				Com					yes	0	20	0								2021-10-01
926	Oshiwara Garden	Suriyakiran no.19				Res.		32	6	MHADA	yes	15	8	1					21/09/2021			2021-10-01
927	Oshiwara Garden	Amity no.18				Res.		32		MHADA	yes	16	9	1					19/09/2021			2021-10-01
928	Oshiwara Garden	Oshiwara mhada garden				Grdn					yes	10	3	0					20/09/2021			2021-10-01
929	Oshiwara Garden	Green view no.17				Res.		32		MHADA	yes	20	7	2					19/09/2021			2021-10-01
930	Oshiwara Garden	Hima sai no.16				Res.		32		MHADA	yes	20	4	3					20/09/2021			2021-10-01
931	Oshiwara Garden	Raja rani malhotra vidyalaya				Scl		40				0	0	0								2021-10-01
932	Oshiwara Garden	Hvps education complex				Clg						0	0	0								2021-10-01
933	Oshiwara Garden	Goenka international school				Scl			22			0	0	0								2021-10-01
934	Oshiwara Garden	Marble school				Scl			22			0	0	0								2021-10-01
935	Oshiwara Garden	Goverment of india building				Res.		30				-	-	-								2021-10-01
936	Oshiwara Garden	Sanskar no.15				Res.		28		MHADA	yes	50	11	0					-	-	-	2021-10-01
937																						2021-10-01
938		Bmc road																				2021-10-01
939	Bmc Road	Aradhana sra				Res.					no	440	0	0					-	-	-	2021-10-01
940	Bmc Road	Annapoorna chs				Res.		286	25		yes	70	0	0					-	-	-	2021-10-01
941	Bmc Road	Godavari no1				Res.		40		MHADA	yes	60	10	0					02/10/2021			2021-10-01
942	Bmc Road	Krishna no 2				Res.		40		MHADA	yes	39	20	0					02/10/2021			2021-10-01
943	Bmc Road	Narmadha no 3				Res.		40		MHADA	yes			0					02/10/2021			2021-10-01
944	Bmc Road	Kaveri no 4				Res.		40		MHADA	yes			0					02/10/2021			2021-10-01
945	Bmc Road	Panchvati no 5				Res.		40		MHADA	yes			0					02/10/2021			2021-10-01
946	Bmc Road	Saptha shrungi no 6				Res.		40		MHADA	yes	5	5	3								2021-10-01
947	Bmc Road	Sai siddhii no 7				Res.		40		MHADA	yes	17	3	0								2021-10-01
948	Bmc Road	Serenity shree sai wings adef chs				Res.		140		BWG	yes	50	10	0						18/09/2021	Nandkishore Ghag\n9821394023	2021-10-01
949	Bmc Road	Serenity shree sai wings b1,b2 chs				Res.				BWG	yes		54	6.2						18/09/2021	Vare (Mang)\n9699720927	2021-10-01
950	Bmc Road	Serenity shree sai wings ghi chs				Res.				BWG	yes		30	0						18/09/2021	Suryanarayan Chube \n9702021707	2021-10-01
951	Bmc Road	City international school				Scl					yes	0	0	0								2021-10-01
952	Heera Panna Road	Jay ambe				Res.						50	-	-								2021-10-01
953	Heera Panna Road	Sumukh heights				Res.		42			yes	0	20	0								2021-10-01
954	Heera Panna Road	Sai leela(sra)				Res.						-	-	-								2021-10-01
955	Heera Panna Road	Aanand seva samity				Res.		102	11	BWG /SRA	yes	44	15	0						27/09/2021	Mansoor Ali Khan\n9022887279	2021-10-01
956	Heera Panna Road	Reliable business centre				Com			11	After 2007 (BWG/SRA)	yes	0	10	0						27/09/2021	Shakeel Shaik\n9821326518	2021-10-01
957	Heera Panna Road	Om heera panna premises				Com			290	BWG	yes	0	10	0					27/09/2021	27/09/2021	Kisanlal Hans\n9892408602	2021-10-01
958	Heera Panna Road	Oshiwara link plaza				Com			199		yes	0	15	0								2021-10-01
959	Heera Panna Road	Oshiwara yashodeep 				Res.		60		BWG /SRA	yes	40	35	0						18/09/2021	Ishwar  Hubale\n9870473923	2021-10-01
960	Heera Panna Road	(sbi) officers quatres 35				Res.		90		MHADA	yes	10	3	1								2021-10-01
961	Heera Panna Road	Godavari 								MHADA	yes	30	11	0								2021-10-01
962	Heera Panna Road	Yamuna 38				Res.		55	12	MHADA	yes	25	2	0								2021-10-01
963	Heera Panna Road	Kaveri no41				Res.				MHADA	yes	35	0	0								2021-10-01
964	Heera Panna Road	Mhada sargam no40				Res.		88	4	MHADA	yes	-	-	-								2021-10-01
965	Heera Panna Road	Sebi gurur				Res.		30				-	-	-								2021-10-01
966	Heera Panna Road	Gujarat bhavan				Res.		28			yes	50	0	0								2021-10-01
967	Heera Panna Road	Tata communication residential colony				Res.		105		MHADA	yes	30	0	0								2021-10-01
968	Heera Panna Road	Andhra bank quartres				Res.		62		MHADA	yes	75	0	0								2021-10-01
969	Heera Panna Road	Bmc garden i				Grdn					yes	20	0	0								2021-10-01
970	Oshiwara Mahada New Link Road	Marigold no. 1				Res.		34		MHADA	no	25	0	0								2021-10-01
971	Oshiwara Mahada New Link Road	Anuksa no.2				Res.		34		MHADA	no	40	0	0								2021-10-01
972	Oshiwara Mahada New Link Road	Aroma no.3				Res.		34		MHADA	no	0	0	0								2021-10-01
973	Oshiwara Mahada New Link Road	Sunshine no.4				Res.		34		MHADA	no	0	0	0								2021-10-01
974	Oshiwara Mahada New Link Road	Starship no.11				Res.		28		MHADA	yes	15	4	0					23/09/2021			2021-10-01
975	Oshiwara Mahada New Link Road	Lotus no.12				Res.		32		MHADA	yes	20	6	0					23/09/2021			2021-10-01
976	Oshiwara Mahada New Link Road	Utsav no.13				Res.		32		MHADA	yes	60	0	3								2021-10-01
977	Oshiwara Mahada New Link Road	Rajanigandha no.14				Res.		32		MHADA	yes	0	10	3					20/09/2021			2021-10-01
978	Oshiwara Mahada New Link Road	Income tax officers no.24				Res.		34		MHADA	yes	50	8	0								2021-10-01
979	Oshiwara Mahada New Link Road	Link way no.25				Res.		34		MHADA	yes	30	11	0								2021-10-01
980	Oshiwara Mahada New Link Road	Central excise res.iety no.26				Res.		32		MHADA	yes	40	14	0								2021-10-01
981	Oshiwara Mahada New Link Road	Central excise res.iety no.27				Res.		32		MHADA	yes	50	19	0								2021-10-01
982	Oshiwara Mahada New Link Road	Oshiwara police chowki				Com					yes	0	30	0								2021-10-01
983	Oshiwara Mahada New Link Road	State bank india 				Com			1			-	-	-								2021-10-01
984	Oshiwara Mahada New Link Road	Matru chayya				Res.		32		MHADA	no	0	0	0								2021-10-01
985	Oshiwara Mahada New Link Road	Ekdant res.iety				Res.		34		MHADA	yes	0	0	0								2021-10-01
986	Oshiwara Mahada New Link Road	Parth no.43				Res.		32		MHADA	yes	30	0	0								2021-10-01
987	Oshiwara Mahada New Link Road	Fakir wadi (t.camp)				Res.					yes	273	50	0								2021-10-01
988	Roshan Nagar	Parsi colony				Res.		13x28			yes	145	81	10								2021-10-02
989	Roshan Nagar	Lashkariya pearl				Res.					no	0	0	0								2021-10-02
990	Roshan Nagar	Sakirabi				Res.		114	16	After 2007 (BWG/SRA)	no	0	0	0								2021-10-02
991	Roshan Nagar	Anupamma				Res.					no	0	0	0								2021-10-02
992	Roshan Nagar	Patel sra				Res.					no	0	0	0								2021-10-02
993	Roshan Nagar	Ujala nagar sra				Res.		116	21	After 2007 (BWG/SRA)	no	0	0	0								2021-10-02
994	Roshan Nagar	Shakti seva sangh				Res.		91	14	BWG/SRA	no	0	0	0								2021-10-02
995	Roshan Nagar	Shama chs				Res.					yes	0	37	0								2021-10-02
996	Roshan Nagar	Sarvodhaya sra				Res.					no	0	0	0								2021-10-02
997	Roshan Nagar	Santhosh nagar sra				Res.					no	0	0	0						28/09/2021	Amersen Yadav\n9867974333	2021-10-02
998	Roshan Nagar	Green palace				Res.					no	0	0	0								2021-10-02
999	Roshan Nagar	Range heights				Com				After 2007 (BWG)	Yes	-	10	-								2021-10-02
1000	Roshan Nagar	Evershine green				Res.		206	14	BWG	-Yes	-	-					Out source		18/09/2021	Rohit Sharma (chr)\n9819309474	2021-10-02
1001	Roshan Nagar	Raigad military school\nCom-bldg				Com		32		BWG		-	-	-								2021-10-02
1002	Roshan Nagar	Raigad military school				Scl		32				-	-	-								2021-10-02
1003	Roshan Nagar	Mariyam public high school				Scl			16			-	-	-								2021-10-02
1004	Roshan Nagar	Belvedere spring school				Scl						-	-	-								2021-10-02
1005	Roshan Nagar	Level resident				Res.						-	-	-								2021-10-02
1006	Roshan Nagar	Oshiwara akash ganga				Res.		28			Yes	40	10	1								2021-10-02
1007	Roshan Nagar	Oshwara vishal				Res.		28			Yes	30	15	0								2021-10-02
1008	Roshan Nagar	Oshiwara sahyadri				Res.		56			Yes	50	20	1								2021-10-02
1009	Roshan Nagar	Oshiwara girnar				Res.		56			Yes	70	15	0								2021-10-02
1010	Roshan Nagar	Johig				Res.		28			Yes	15	10	0								2021-10-02
1011	Roshan Nagar	Oshiwara ravikiran				Res.		28			Yes	10	8	3								2021-10-02
1012	Roshan Nagar	Oshiwara satpuda				Res.		56			Yes	50	8	0								2021-10-02
1013	Roshan Nagar	Green daimond				Res.		40		After 2007 (BWG)	Yes	30	15	7						27/09/2021	Sameer Shaik(sup)\n9920048273	2021-10-02
1014	Roshan Nagar	Jogeshwari ganesh niwas				Res.		80		BWG/SRA	Yes	80	10	0						27/09/2021	Bhagwan Jadhav\n9821800369	2021-10-02
1015	Roshan Nagar	Roshan nagar b1				Res.		52	12	After 2007 (BWG/SRA)	Yes	35	30	4						27/09/2021	Ashok Dongre\n9833455170	2021-10-02
1016	Roshan Nagar	Roshan nagar b2				Res.		82	13	After 2007 (BWG/SRA)	Yes	25	41	2						27/09/2021	Alim Khan\n8879313127	2021-10-02
1017	Roshan Nagar	Lashkaria empress				Res.		56	6	After 2007 (BWG/SRA)		-	-	-				Out source		21/09/2021	Sameer Shaik\n9920048273	2021-10-02
1018	Roshan Nagar	Lashkariya green heights								BWG	no	0	0	0						21/09/2021	Aslam Lashkaria\n9820990707	2021-10-02
1019	Roshan Nagar	Sree sai lila (sra)				Res.		56			Yes	23	26	0								2021-10-02
1020	Roshan Nagar	Shiv spruti				Res.		88		BWG /SRA	Yes	69	15	0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-02
1021	Roshan Nagar	Milliennium court				Res.		80	1	BWG	Yes	12	30	0						27/09/2021	Nitinn Ranga\n9821337126	2021-10-02
1022	Anand Nagar	Techweb centre									Yes	0	76	0								2021-10-02
1023	Anand Nagar	Daimond /pearl				Res.		18	2		No	0	5	0								2021-10-02
1024	Anand Nagar	Vijay vishal				Res.		78		BWG	Yes	0	25	9						20/09/2021	Chandrakant Kale\n9969003025	2021-10-02
1025	Anand Nagar	Spice tower							16			-	-	-				Out source				2021-10-02
1026	Anand Nagar	Sandipani shikshak oshiwara				Res.		91	28	After 2007 (BWG)	Yes	12	15	0						20/09/2021	Rammani C. Dube\n9702334382	2021-10-02
1027	Anand Nagar	Vaibhav palace				Res.		48	28		Yes	0	20	0								2021-10-02
1028	Mega Mall	Assistant commissioner police oshiwara division mumbai				Com					no	0	0	0								2021-10-02
1029	Mega Mall	Meera tower				Res.		100	28	BWG		-	-	-				out source		18/09/2021	A.K.Singh (Mang)\n9930317315	2021-10-02
1030	Mega Mall	1bhk hotel				Com					no	-	-	-								2021-10-02
1031	Mega Mall	Facing east				Com					no	-	-	-								2021-10-02
1032	Mega Mall	Mahataranga				Res.		52	4			-	-	-								2021-10-02
1033	Mega Mall	Sawati apartment				Res.		28	7		Yes	0	8	0								2021-10-02
1034	Mega Mall	Jay ambe				Res.		100		BWG	Yes	0	80	0						28/09/2021	Amar Pal\n9920612050	2021-10-02
1035	Green Park	East side no.28				Res.		32			yes	0	5	1				comp bin	24/09/2021			2021-10-02
1036	Green Park	Samruddhi no.29				Res.		32			yes	35	9	0				comp bin				2021-10-02
1037	Green Park	Anand vihar				Res.		42			yes	0	12	0				comp bin	24/09/2021			2021-10-02
1038	Green Park	Oshiwara basera				Res.		28			yes	45	4	2				comp bin				2021-10-02
1039	Green Park	Park paradise				Res.		44	12		yes	0	9	7				comp bin	25/09/2021			2021-10-02
1040	Tarapore	The park (lotus)				Res.		42				-	-	-				-	-	-		2021-10-02
1041	Tarapore	K.l walawalkar m.c.g.m garden				Grdn					yes	0	0	0								2021-10-02
1042	Tarapore	Atlantis				Res.		22			yes	12	0	0								2021-10-02
1043	Tarapore	Deep apartment				Res.		100		BWG	yes	90	35	0						28/09/2021	Zuber Menon	2021-10-02
1044	Tarapore	Arjanhans				Res.					yes	0	0	0								2021-10-02
1045	Tarapore	Kohinoor				Res.					yes	0	14	0								2021-10-02
1046	Tarapore	Shantivan mhada (7 bldg)				Res.		7x28			yes	160	20	7								2021-10-02
1047	Tarapore	Rims international school college				Scl						-	-	-								2021-10-02
1048	Tarapore	Samartha deep				Res.		160				-	-	-				Out source				2021-10-02
1049	Tarapore	Samartha ashish				Res.		74			yes	39	12	0								2021-10-02
1050	Tarapore	Aakash				Res.		28			yes	12	6	0								2021-10-02
1051	Tarapore	Oshiwara eden garden				Grdn		32			yes	11	7	0								2021-10-02
1052	Tarapore	Samartha aangan				Res.		330		After 2007 (BWG)	yes	170	31	0								2021-10-02
1053	Tarapore	Gulmohar				Res.		32			yes	22	7	0								2021-10-02
1054	Tarapore	Mayfair no.20				Res.		32	6		yes	15	6	1								2021-10-02
1055	Tarapore	Indra darshan l						264				-	-	-				Out source				2021-10-02
1056	Tarapore	Indra darshan ll						330				-	-	-				Out source				2021-10-02
1057	Tarapore	Tarapore garden no. 1,2,3						294		BWG	yes	44	37	31						18/09/2021	Sanjeev Sharma\n9920304152	2021-10-02
1058	Tarapore	Tarapore tower				Res.		269		BWG		-	-	-				Out source		18/09/2021	Arun poddar\n9920720066	2021-10-02
1059	Tarapore	Samtha vaibhav				Com		103	20		yes	37	22	0								2021-10-02
1060	Tarapore	Tulip no.6				Res.		37	2		yes	12	0	0								2021-10-02
1061	Tarapore	Aster no.5				Res.		34			yes	14	0	0								2021-10-02
1062	Tarapore	Blue bell no.8				Res.		34	4		yes	22	4	2								2021-10-02
1063	Tarapore	Avalon no7				Res.		30			yes	9	9	0								2021-10-02
1064	Tarapore	(jbcn) international school				Scl						-	-	-								2021-10-02
1065	Tarapore	Daffodils no.10				Res.		32			no	0	6	0								2021-10-02
1066	Tarapore	Indus no.9				Res.		32			no	0	9	1								2021-10-02
1067	Tarapore	Marigold no. 1				Res.		34			yes	24	0	0								2021-10-02
1068	Tarapore	Starship no.11				Res.		28			yes	12	0	4								2021-10-02
1069	Oshiwara Garden	Maheshwari hall									yes	-	-	-								2021-10-02
1070	Oshiwara Garden	Suriyakiran no.19				Res.		32	6		yes	0	0	4				comp bin				2021-10-02
1071	Oshiwara Garden	Amity no.18				Res.		32			yes	0	4	1				comp bin				2021-10-02
1072	Oshiwara Garden	Oshiwara garden				Grdn				After 2007 (BWG)	yes	0	1	0								2021-10-02
1073	Oshiwara Garden	Green view no.17				Res.		32			yes	0	6	0				comp bin				2021-10-02
1074	Oshiwara Garden	Hima sai no.16				Res.		32			yes	0	2	2				comp bin				2021-10-02
1075	Oshiwara Garden	Raja rani malhotra vidyalaya				Scl		40			yes	0	0	0								2021-10-02
1076	Oshiwara Garden	Hvps education complex				Scl					yes	0	0	0								2021-10-02
1077	Oshiwara Garden	Goenka international school				Scl			22		yes	0	0	0								2021-10-02
1078	Oshiwara Garden	Marble school				Scl			22		yes	0	0	0								2021-10-02
1079	Oshiwara Garden	Goverment of india building				Res.		30			yes	21	7	0								2021-10-02
1080	Oshiwara Garden	Sanskar no.15				Res.		28			no	11	9	2								2021-10-02
1081	Bmc Road	Aradhana sra				Res.					Yes	114	40	0								2021-10-02
1082	Bmc Road	Annapoorna chs				Res.		286	25		Yes	65	20	0								2021-10-02
1083	Bmc Road	Godavari 7 res.				Res.		44			Yes	16	40	1								2021-10-02
1084	Bmc Road	Godavari no1				Res.		40			Yes	9	14	0								2021-10-02
1085	Bmc Road	Krishna no 2				Res.		40			Yes	11	8.3	1								2021-10-02
1086	Bmc Road	Narmadha no 3				Res.		40			Yes	8	8.4	2								2021-10-02
1087	Bmc Road	Kaveri no 4				Res.		40			Yes	5	8.3	1								2021-10-02
1088	Bmc Road	Panchvati no 5				Res.		40			Yes	7	12	0								2021-10-02
1089	Bmc Road	Saptha shrungi no 6				Res.		40			Yes	22	17	3								2021-10-02
1090	Bmc Road	Sai siddhii no 7				Res.		40			Yes	7	9	1								2021-10-02
1091	Bmc Road	Serenity shree sai wings adef chs				Res.		140		BWG	Yes	59	20	7						18/09/2021	Nandkishore Ghag\n9821394023	2021-10-02
1092	Bmc Road	Serenity shree sai wings b1,b2 chs									Yes	29	20	0						18/09/2021	Vare (Mang)\n9699720927	2021-10-02
1093	Bmc Road	Serenity shree sai wings ghi chs									Yes	29	65	0						18/09/2021	Suryanarayan Chube \n9702021707	2021-10-02
1094	Bmc Road	City international school				Scl					Yes	3	17	0								2021-10-02
1095	Heera Panna Road	Om heera panna premises				Com			290	BWG	yes	0	32	0						27/09/2021	Kisanlal Hans\n9892408602	2021-10-02
1096	Heera Panna Road	Reliable business centre				Com			11	After 2007 (BWG/SRA)	Yes	0	30	0						27/09/2021	Shakeel Shaik\n9821326518	2021-10-02
1097	Heera Panna Road	Oshiwara yashodeep 				Res.		60		BWG /SRA	No	0	0	0						18/09/2021	Ishwar  Hubale\n9870473923	2021-10-02
1098	Heera Panna Road	Yamuna 38				Res.		55	12		Yes	23	17	1								2021-10-02
1099	Heera Panna Road	Kaveri no41				Res.					Yes	12	18	1								2021-10-02
1100	Heera Panna Road	Oshiwara link plaza							199		Yes	15	60	0								2021-10-02
1101	Heera Panna Road	Aanand seva samity						102	11	BWG /SRA	no	0	0	0						27/09/2021	Mansoor Ali Khan\n9022887279	2021-10-02
1102	Heera Panna Road	Sumukh heights						42			Yes	32	20	0								2021-10-02
1103	Heera Panna Road	Mhada sargam no40				Res.		88	4		Yes	22	15	0								2021-10-02
1104	Heera Panna Road	Sebi gaurur				Res.		30			yes	16	13	0								2021-10-02
1105	Heera Panna Road	Gujarat bhavan				Res.		28			no	0	0	0								2021-10-02
1106	Heera Panna Road	(sbi) officers quatres 35				Res.		90			Yes	6	15	1								2021-10-02
1107	Heera Panna Road	Tata communication residential colony				Res.		105			Yes	8	30	0								2021-10-02
1108	Heera Panna Road	Andhra bank quartres				Res.		62			Yes	12	20	0								2021-10-02
1109	Heera Panna Road	Oshiwara mhada b.m.c garden				Grdn					Yes	0	2	0								2021-10-02
1110	New Link Road	Anuksa no.2				Res.		34			yes	16	3	0								2021-10-02
1111	New Link Road	Aroma no.3				Res.		34			yes	20	2	0								2021-10-02
1112	New Link Road	Sunshine no.4				Res.		34			yes	14	5	2								2021-10-02
1113	Oshiwara Mahada New Link Road	Lotus no.12				Res.		32			yes	13	2	0								2021-10-02
1114	Oshiwara Mahada New Link Road	Utsav no.13				Res.		32			yes	17	12	0								2021-10-02
1115	Oshiwara Mahada New Link Road	Rajanigandha no.14				Res.		32			yes	0	0	1					comp bin			2021-10-02
1116	Oshiwara Mahada New Link Road	Tax officers no.24				Res.					yes	16	0	0								2021-10-02
1117	Oshiwara Mahada New Link Road	Link way no.25				Res.		34			yes	21	5	0								2021-10-02
1118	Oshiwara Mahada New Link Road	Kasturi res.iety				Res.		32				-	-	-								2021-10-02
1119	Oshiwara Mahada New Link Road	Oshiwara police chowki									no	0	0	0								2021-10-02
1120	Oshiwara Mahada New Link Road	State bank india 							1			-	-	-								2021-10-02
1121	Oshiwara Mahada New Link Road	Matru chayya				Res.		32			Yes	6	27	0								2021-10-02
1122	Oshiwara Mahada New Link Road	Evershine 				Res.		32			Yes	12	0	0								2021-10-02
1123	Oshiwara Mahada New Link Road	Central excise no.26				Res.		32			Yes	15	5	0								2021-10-02
1124	Oshiwara Mahada New Link Road	Central excise  no.27				Res.		32			Yes	11	8	0								2021-10-02
1125	Oshiwara Mahada New Link Road	Ekdant 				Res.		34			Yes	9	0	0								2021-10-02
1126	Oshiwara Mahada New Link Road	Parth 43				Res.		32			Yes	12	20	0								2021-10-02
1127	Oshiwara Mahada New Link Road	Fakir wadi				Res.					yes	214	25	0								2021-10-02
1128	Behram  Baug	Shakti seva sangh				Res.		91	14	BWG/SRA	no	0	0	0					-			2021-10-03
1129	Behram  Baug	Ujala nagar sra				Res.		116	21	After 2007 (BWG/SRA)	no	0	0	0					-			2021-10-03
1130	Behram  Baug	Patel sra				Res.						-	-	-								2021-10-03
1131	Behram  Baug	Sakirabi				Res.		114	16	After 2007 (BWG/SRA)	no	0	0	0					-			2021-10-03
1132	Behram  Baug	Parsi colony				Res.		13x28		Other	yes	166	29	0								2021-10-03
1133	Behram  Baug	Shama chs				Res.					yes	-	-	-								2021-10-03
1134	Behram  Baug	Anupa public high scl				Scl						0	0	0								2021-10-03
1135	Behram  Baug	Sarvodhaya sra				Res.				BWG	yes	-	-	-						03/10/2021		2021-10-03
1136	Behram  Baug	Range heights				Com				After 2007 (BWG)	no	0	0	0								2021-10-03
1137	Behram  Baug	Santosh nagar sra				Res.				BWG	no	0	0	0						28/09/2021	Amersen Yadav\n9867974333	2021-10-03
1138	Behram  Baug	Green palace				Res.					no	-	-	-								2021-10-03
1139	Roshan Nagar	Milliennium court				Res.		80	1	BWG	yes	80	0	0						27/09/2021	Nitinn Ranga\n9821337126	2021-10-03
1140	Roshan Nagar	Evershine green				Res.		206	14	BWG	yes	0	0	5				OWC		18/09/2021	Rohit Sharma (chr)\n9819309474	2021-10-03
1141	Roshan Nagar	Raigad military school\nCom-bldg				Com		32		BWG	yes	0	0	0								2021-10-03
1142	Roshan Nagar	Raigad military school				Scl		32			yes	-	-	-								2021-10-03
1143	Roshan Nagar	Mariyam public high school				Scl			16		yes	-	-	-								2021-10-03
1144	Roshan Nagar	Belvedere spring school				Scl					yes	-		-								2021-10-03
1145	Roshan Nagar	Level resident				Res.						-	-	-				-	-			2021-10-03
1146	Roshan Nagar	Oshiwara akash ganga				Res.		28			yes	40	6	1								2021-10-03
1147	Roshan Nagar	Oshwara vishal				Res.		28			yes	30	8	0								2021-10-03
1148	Roshan Nagar	Oshiwara sahyadri				Res.		56			yes	50	3	1								2021-10-03
1149	Roshan Nagar	Oshiwara girnar				Res.		56			yes	70	9	0								2021-10-03
1150	Roshan Nagar	Johig				Res.		28			yes	15	12	0								2021-10-03
1151	Roshan Nagar	Oshiwara ravikiran				Res.		28			yes	10	11	3								2021-10-03
1152	Roshan Nagar	Oshiwara satpuda				Res.		56			yes	50	17	0								2021-10-03
1153	Roshan Nagar	Green daimond				Res.		40		After 2007 (BWG)	yes	30	7	7						27/09/2021	Sameer Shaik(sup)\n9920048273	2021-10-03
1154	Roshan Nagar	Jogeshwari ganesh niwas				Res.		80		BWG/SRA	yes	80	20	0						27/09/2021	Bhagwan Jadhav\n9821800369	2021-10-03
1155	Roshan Nagar	Roshan nagar b1				Res.		52	12	After 2007 (BWG/SRA)	yes	35	12	4						27/09/2021	Ashok Dongre\n9833455170	2021-10-03
1156	Roshan Nagar	Roshan nagar b2				Res.		82	13	After 2007 (BWG/SRA)	yes	25	15	2						27/09/2021	Alim Khan\n8879313127	2021-10-03
1157	Roshan Nagar	Lashkaria empress				Res.		56	6	After 2007 (BWG/SRA)	no		0	0				Out source		21/09/2021	Sameer Shaik\n9920048273	2021-10-03
1158	Roshan Nagar	Oriental education 				Clg					yes	0	0	0								2021-10-03
1159	Roshan Nagar	Green heights (lashkaria)				Res.				BWG	no	0	0	0						21/09/2021	Aslam Lashkaria\n9820990707	2021-10-03
1160	Roshan Nagar	Sree sai lila (sra)				Res.		56		BWG	no	0	0	0								2021-10-03
1161	Roshan Nagar	Shivspruthi bldg no.1 				Res.				BWG	yes	50	13	2						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-03
1162	Roshan Nagar	Shivspruthi bldg no.2 				Res.		88		BWG /SRA	yes	90	26	2					-	27/09/2021	Vasant  Mahadik\n7208580681	2021-10-03
1163	Anand Nagar	Techweb centre				Com					yes	15	4	0								2021-10-03
1164	Anand Nagar	Daimond /pearl				Res.		18	2		no	0	0	0								2021-10-03
1165	Anand Nagar	Vijay vishal				Res.		78		BWG	yes	0	14	0						20/09/2021	Chandrakant Kale\n9969003025	2021-10-03
1166	Anand Nagar	Spice tower				Com			16			0	0	0				out source				2021-10-03
1167	Anand Nagar	Sandipani shikshak oshiwara				Res.		91	28	After 2007 (BWG)	yes	30	20	0						20/09/2021	Rammani C. Dube\n9702334382	2021-10-03
1168	Anand Nagar	Vaibhav palace				Res.		48	28		no	0	0	0.5								2021-10-03
1169	Mega Mall	Assistant commissioner police oshiwara division mumbai				Com					no	0	0	0								2021-10-03
1170	Mega Mall	Jay ambe				Res.		100		BWG	yes	90	25	0						28/09/2021	Amar Pal\n9920612050	2021-10-03
1172	Mega Mall	Sawati apartment				Res.		28	7		yes	0	2	2								2021-10-03
1174	Mega Mall	Meera tower				Res.		100	28	BWG		-	-	-				Out source		18/09/2021	A.K.Singh (Mang)\n9930317315	2021-10-03
1175	Green Park	East side no.28				Res.		32		MHADA		0	5	0					24/09/2021			2021-10-03
1176	Green Park	Samruddhi no.29				Res.		32		MHADA		35	9	0								2021-10-03
1177	Green Park	Anand vihar				Res.		42		MHADA		0	12	0					24/09/2021			2021-10-03
1178	Green Park	Oshiwara basera				Res.		28		MHADA		45	4	0								2021-10-03
1179	Green Park	Park paradise				Res.		44	12	MHADA		0	9	7					25/09/2021			2021-10-03
1180	Tarapore	The park (lotus)				Res.		42		MHADA		-	-	-								2021-10-03
1181	Tarapore	K.l walawalkar mcgm garden				Grdn					yes	0	1	0								2021-10-03
1182	Tarapore	Atlantis				Res.		22			yes	0	13	0								2021-10-03
1183	Tarapore	Deep apartment				Res.		100		BWG	yes	0	50	0						28/09/2021	Zuber Menon	2021-10-03
1184	Tarapore	Arjanhans				Res.					yes	0	0	0								2021-10-03
1185	Tarapore	Kohinoor i				Res.					yes	0	6	0								2021-10-03
1186	Tarapore	Kohinoor ii				Res.					yes	0	7	0								2021-10-03
1187	Tarapore	Shantivan mhada (7 bldg)				Res.		7x28		MHADA	yes	200	33	0								2021-10-03
1188	Tarapore	Rims international school 				Scl					yes	-	-	-								2021-10-03
1189	Tarapore	Samartha deep				Res.		160				-	-	-				Out source				2021-10-03
1190	Tarapore	Samartha ashish				Res.		74				-	-	-				Out source				2021-10-03
1191	Tarapore	Aakash				Res.		28		MHADA	yes	0	4	0					26/09/2021			2021-10-03
1192	Tarapore	Eden garden no.22				Res.		32		MHADA	yes	0	7	0					24/09/2021			2021-10-03
1193	Tarapore	Samartha aangan				Res.		330		After 2007 (BWG)	yes	80	40	25								2021-10-03
1194	Tarapore	Gulmohar				Res.		32		MHADA	no	0	7	0								2021-10-03
1195	Tarapore	Mayfair no.20				Res.		32	6	MHADA	yes	0	20	0					23/09/2021			2021-10-03
1196	Tarapore	Indra darshan l				Res.		264				-	-	-				Out source				2021-10-03
1197	Tarapore	Indra darshan ll				Res.		330				-	-	-				Out source				2021-10-03
1198	Tarapore	Tarapore garden no. 1,2,3				Res.		294		BWG	yes	60	38	26						18/09/2021	Sanjeev Sharma\n9920304152	2021-10-03
1199	Tarapore	Tarapore tower				Res.		269		BWG		-	--	-				Out source		18/09/2021	Arun poddar\n9920720066	2021-10-03
1200	Tarapore	Samartha vaibhav				Com		103	20		yes	0	0	0								2021-10-03
1201	Tarapore																					2021-10-03
1202	Azad Nagar Petrol Pump	Tulip no.6				Res.		37	2	MHADA	yes	60	9	0								2021-10-03
1203	Azad Nagar Petrol Pump	Aster no.5				Res.		34		MHADA	no	0	15	0								2021-10-03
1204	Azad Nagar Petrol Pump	Kasturi res.iety				Res.		32				-	-	-								2021-10-03
1205	Jbcn School Lane	Blue bell no.8				Res.		34	4	MHADA	yes	40	7									2021-10-03
1206	Jbcn School Lane	Avalon no7				Res.		30		MHADA	yes	30	14									2021-10-03
1207	Jbcn School Lane	(jbcn) international school				Scl						-	-	-								2021-10-03
1208	Jbcn School Lane	Daffodils no.10				Res.		32		MHADA	yes	70	11									2021-10-03
1209	Jbcn School Lane	Indus no.9				Res.		32		MHADA	yes	78	16									2021-10-03
1210	Oshiwara Garden	Maheshwari hall				Com					yes	0	10	0								2021-10-03
1211	Oshiwara Garden	Suriyakiran no.19				Res.		32	6	MHADA	yes	0	8	0					21/09/2021			2021-10-03
1212	Oshiwara Garden	Amity no.18				Res.		32		MHADA	yes	0	9	1					19/09/2021			2021-10-03
1213	Oshiwara Garden	Oshiwara mhada garden				Grdn					yes	0	0	0					20/09/2021			2021-10-03
1214	Oshiwara Garden	Green view no.17				Res.		32		MHADA	yes	0	8	2					19/09/2021			2021-10-03
1215	Oshiwara Garden	Hima sai no.16				Res.		32		MHADA	yes	0	6	3					20/09/2021			2021-10-03
1216	Oshiwara Garden	Raja rani malhotra vidyalaya				Scl		40			yes	0	0	0								2021-10-03
1217	Oshiwara Garden	Hvps education complex				Clg					yes	0	0	0								2021-10-03
1218	Oshiwara Garden	Goenka international school				Scl			22		yes	0	0	0								2021-10-03
1219	Oshiwara Garden	Marble school				Scl			22		yes	0	0	0								2021-10-03
1220	Oshiwara Garden	Goverment of india building				Res.		30			yes	0	0	0								2021-10-03
1221	Oshiwara Garden	Sanskar no.15				Res.		28		MHADA	yes	50	17	0					-	-	-	2021-10-03
1222	Bmc Road	Aradhana sra				Res.					yes	440	34	0					-	-	-	2021-10-03
1223	Bmc Road	Annapoorna chs				Res.		286	25		yes	70	45	0					-	-	-	2021-10-03
1224	Bmc Road	Godavari no1				Res.		40		MHADA	yes	0	10	0					02/10/2021			2021-10-03
1225	Bmc Road	Krishna no 2				Res.		40		MHADA	yes	0	8	0					02/10/2021			2021-10-03
1226	Bmc Road	Narmadha no 3				Res.		40		MHADA	yes	0	37	0					02/10/2021			2021-10-03
1227	Bmc Road	Kaveri no 4				Res.		40		MHADA	yes	0		0					02/10/2021			2021-10-03
1228	Bmc Road	Panchvati no 5				Res.		40		MHADA	yes	0		0					02/10/2021			2021-10-03
1229	Bmc Road	Saptha shrungi no 6				Res.		40		MHADA	yes	0		0								2021-10-03
1230	Bmc Road	Sai siddhii no 7				Res.		40		MHADA	yes	0		0								2021-10-03
1231	Bmc Road	Serenity shree sai wings adef chs				Res.		140		BWG	yes	0	48	0						18/09/2021	Nandkishore Ghag\n9821394023	2021-10-03
1232	Bmc Road	Serenity shree sai wings b1,b2 chs				Res.		88		BWG	yes	0		0						18/09/2021	Vare (Mang)\n9699720927	2021-10-03
1233	Bmc Road	Serenity shree sai wings ghi chs				Res.				BWG	yes	0	24	0						18/09/2021	Suryanarayan Chube \n9702021707	2021-10-03
1234	Bmc Road	City international school				Scl					yes	0	0	0								2021-10-03
1235	Heera Panna Road	Jay ambe				Res.						-	-	-								2021-10-03
1236	Heera Panna Road	Sumukh heights				Res.		42				-	-	-								2021-10-03
1237	Heera Panna Road	Sai leela(sra)				Res.						-	-	-								2021-10-03
1238	Heera Panna Road	Aanand seva samity				Res.		102	11	BWG /SRA	yes	0	36	0						27/09/2021	Mansoor Ali Khan\n9022887279	2021-10-03
1239	Heera Panna Road	Reliable business centre				Com			11	After 2007 (BWG)	yes	10	8	0						27/09/2021	Shakeel Shaik\n9821326518	2021-10-03
1240	Heera Panna Road	Om heera panna premises				Com			290	BWG	yes	0	26	0					27/09/2021	27/09/2021	Kisanlal Hans\n9892408602	2021-10-03
1241	Heera Panna Road	Oshiwara link plaza				Com			199		yes	0	31	0								2021-10-03
1306	Anand Nagar	Techweb centre				Com				Others	no	-	-	-								2021-10-05
1242	Heera Panna Road	Oshiwara yashodeep 				Res.		60		BWG /SRA	yes	0	17	0						18/09/2021	Ishwar  Hubale\n9870473923	2021-10-03
1243	Heera Panna Road	(sbi) officers quatres 35				Res.		90		MHADA	yes	25	7	0								2021-10-03
1244	Heera Panna Road	Godavari 								MHADA	yes	30	8	0								2021-10-03
1245	Heera Panna Road	Yamuna 38				Res.		55	12	MHADA	yes	25	5	0								2021-10-03
1246	Heera Panna Road	Kaveri no41				Res.				MHADA	yes	35	5	0								2021-10-03
1247	Heera Panna Road	Mhada sargam no40				Res.		88	4	MHADA	yes	0	13	0								2021-10-03
1248	Heera Panna Road	Sebi gurur				Res.		30			yes	0	10	0								2021-10-03
1249	Heera Panna Road	Gujarat bhavan				Res.		28			yes	50	0	0								2021-10-03
1250	Heera Panna Road	Tata communication residential colony				Res.		105		MHADA	yes	30	5	0								2021-10-03
1251	Heera Panna Road	Andhra bank quartres				Res.		62		MHADA	yes	75	0	0								2021-10-03
1252	Heera Panna Road	Bmc garden i				Grdn					yes	20	0	0								2021-10-03
1253	Oshiwara Mahada New Link Road	Marigold no. 1				Res.		34		MHADA	yes	25	7	0								2021-10-03
1254	Oshiwara Mahada New Link Road	Anuksa no.2				Res.		34		MHADA	yes	40	5	0								2021-10-03
1255	Oshiwara Mahada New Link Road	Aroma no.3				Res.		34		MHADA	no	0	9	0								2021-10-03
1256	Oshiwara Mahada New Link Road	Sunshine no.4				Res.		34		MHADA	no	0	12	0								2021-10-03
1257	Oshiwara Mahada New Link Road	Starship no.11				Res.		28		MHADA	yes	0	10	0					23/09/2021			2021-10-03
1258	Oshiwara Mahada New Link Road	Lotus no.12				Res.		32		MHADA	yes	0	8	0					23/09/2021			2021-10-03
1259	Oshiwara Mahada New Link Road	Utsav no.13				Res.		32		MHADA	yes	60	9	3								2021-10-03
1260	Oshiwara Mahada New Link Road	Rajanigandha no.14				Res.		32		MHADA	yes	0	6	0					20/09/2021			2021-10-03
1261	Oshiwara Mahada New Link Road	Income tax officers no.24				Res.		34		MHADA	yes	50	5	0								2021-10-03
1262	Oshiwara Mahada New Link Road	Link way no.25				Res.		34		MHADA	yes	30	8	0								2021-10-03
1263	Oshiwara Mahada New Link Road	Central excise res.iety no.26				Res.		32		MHADA	yes	40	3	0								2021-10-03
1264	Oshiwara Mahada New Link Road	Central excise res.iety no.27				Res.		32		MHADA	yes	50	9	0								2021-10-03
1265	Oshiwara Mahada New Link Road	Oshiwara police chowki				Com					no	0	0	0								2021-10-03
1266	Oshiwara Mahada New Link Road	State bank india 				Com			1			-	-	-								2021-10-03
1267	Oshiwara Mahada New Link Road	Matru chayya				Res.		32		MHADA	yes	0	30	0								2021-10-03
1268	Oshiwara Mahada New Link Road	Ekdant res.iety				Res.		34		MHADA	yes	0	22	0								2021-10-03
1269	Oshiwara Mahada New Link Road	Parth no.43				Res.		32		MHADA	yes	0	19	0								2021-10-03
1270	Oshiwara Mahada New Link Road	Fakir wadi (t.camp)				Res.						273	69	0				0				2021-10-03
1271	Behram  Baug	Shakti seva sangh				Res.		91	14	BWG/SRA	no	0	0	0					-			2021-10-05
1272	Behram  Baug	Ujala nagar sra				Res.		116	21	After 2007 (BWG/SRA)	no	0	0	0					-			2021-10-05
1273	Behram  Baug	Patel sra				Res.				Others	yes	0	0	0								2021-10-05
1274	Behram  Baug	Sakirabi				Res.		114	16	After 2007 (BWG/SRA)	no	0	0	0					-			2021-10-05
1275	Behram  Baug	Parsi colony				Res.		13x28		Others	no	0	0	0								2021-10-05
1276	Behram  Baug	Shama chs				Res.				Others	no	0	0	0								2021-10-05
1277	Behram  Baug	Anupa public high scl				Scl				Others	no	0	0	0								2021-10-05
1278	Behram  Baug	Sarvodhaya sra				Res.				BWG	no	0	0	0					03/10/2021			2021-10-05
1279	Behram  Baug	Range heights				Com				After 2007 (BWG)	no	0	0	0								2021-10-05
1280	Behram  Baug	Santosh nagar sra				Res.				BWG	no	0	0	0						28/09/2021	Amersen Yadav\n9867974333	2021-10-05
1281	Behram  Baug	Green palace				Res.				Others		-	-	-								2021-10-05
1282	Roshan Nagar	Milliennium court				Res.		80	1	BWG	yes	330	0	0						27/09/2021	Nitinn Ranga\n9821337126	2021-10-05
1283	Roshan Nagar	Evershine green				Res.		206	14	BWG	yes	0	50	7						18/09/2021	Rohit Sharma (chr)\n9819309474	2021-10-05
1284	Roshan Nagar	Raigad military school\nCom-bldg				Com		32		BWG		-	-	-								2021-10-05
1285	Roshan Nagar	Raigad military school				Scl		32		Others		-	-	-								2021-10-05
1286	Roshan Nagar	Mariyam public high school				Scl			16	Others		-	-	-								2021-10-05
1287	Roshan Nagar	Belvedere spring school				Scl				Others		-	-	-								2021-10-05
1288	Roshan Nagar	Level resident				Res.				Others		-	-	-								2021-10-05
1289	Roshan Nagar	Oshiwara akash ganga				Res.		28		Others	yes	20	25	0								2021-10-05
1290	Roshan Nagar	Oshwara vishal				Res.		28		Others	yes	35	20	0								2021-10-05
1291	Roshan Nagar	Oshiwara sahyadri				Res.		56		Others	yes	50	25	0								2021-10-05
1292	Roshan Nagar	Oshiwara girnar				Res.		56		Others	yes	60	15	0								2021-10-05
1293	Roshan Nagar	Johig				Res.		28		Others	yes	17	10	0								2021-10-05
1294	Roshan Nagar	Oshiwara ravikiran				Res.		28		Others	yes	46	10	0								2021-10-05
1295	Roshan Nagar	Oshiwara satpuda				Res.		56		Others	yes	6	20	0								2021-10-05
1296	Roshan Nagar	Green daimond				Res.		40		After 2007 (BWG)	yes	20	40	0						27/09/2021	Sameer Shaik(sup)\n9920048273	2021-10-05
1297	Roshan Nagar	Jogeshwari ganesh niwas				Res.		80		BWG/SRA	yes	76	20	0						27/09/2021	Bhagwan Jadhav\n9821800369	2021-10-05
1298	Roshan Nagar	Roshan nagar b1				Res.		52	12	After 2007 (BWG/SRA)	yes	56	23	0						27/09/2021	Ashok Dongre\n9833455170	2021-10-05
1299	Roshan Nagar	Roshan nagar b2				Res.		82	13	After 2007 (BWG/SRA)	yes	54	17	0						27/09/2021	Alim Khan\n8879313127	2021-10-05
1300	Roshan Nagar	Lashkaria empress				Res.		56	6	After 2007 (BWG/SRA)		-	-	-						21/09/2021	Sameer Shaik\n9920048273	2021-10-05
1301	Roshan Nagar	Oriental education 				Clg				Others		-	-	-								2021-10-05
1302	Roshan Nagar	Green heights (lashkaria)				Res.				BWG		-	-	-						21/09/2021	Aslam Lashkaria\n9820990707	2021-10-05
1303	Roshan Nagar	Sree sai lila (sra)				Res.		56		BWG	yes		40	0								2021-10-05
1304	Roshan Nagar	Shivspruthi bldg no.1 				Res.				BWG	yes	136	20	0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-05
1305	Roshan Nagar	Shivspruthi bldg no.2 				Res.		88		BWG /SRA	yes	63	40	0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-05
1307	Anand Nagar	Daimond /pearl				Res.		18	2	Others	yes	35	20	0								2021-10-05
1308	Anand Nagar	Vijay vishal				Res.		78		BWG	yes	0	25	0						20/09/2021	Chandrakant Kale\n9969003025	2021-10-05
1309	Anand Nagar	Spice tower				Com			16	Others	no	-	-	-								2021-10-05
1310	Anand Nagar	Sandipani shikshak oshiwara				Res.		91	28	After 2007 (BWG)	yes	0	25	0						20/09/2021	Rammani C. Dube\n9702334382	2021-10-05
1311	Anand Nagar	Vaibhav palace				Res.		48	28	Others	yes	40	0	0								2021-10-05
1312	Mega Mall	Assistant commissioner police oshiwara division mumbai				Com																2021-10-05
1450	Anand Nagar	Daimond /pearl				Res.		18	2	Others		0	0	0								2021-10-06
1313	Mega Mall	Jay ambe				Res.		100		BWG	yes	400	3	0						28/09/2021	Amar Pal\n9920612050	2021-10-05
1314	Mega Mall	Mahataranga				Res.		52	4	Others	yes	25	20	0								2021-10-05
1315	Mega Mall	Swati apartment				Res.		28	7	Others	yes	30.9	5	1								2021-10-05
1316	Mega Mall	1 bhk				Com				Others	yes	0	20	0					-			2021-10-05
1317	Mega Mall	Meera tower				Res.		100	28	BWG	yes	0	20	0				out source		18/09/2021	A.K.Singh (Mang)\n9930317315	2021-10-05
1318	Green Park	East side no.28				Res.		32		MHADA	yes	0	0	0					24/09/2021			2021-10-05
1319	Green Park	Samruddhi no.29				Res.		32		MHADA	yes	25	0	0								2021-10-05
1320	Green Park	Anand vihar				Res.		42		MHADA	yes	20	3	0					24/09/2021			2021-10-05
1321	Green Park	Oshiwara basera				Res.		28		MHADA	yes	0	3	0				bin comp				2021-10-05
1322	Green Park	Park paradise				Res.		44	12	MHADA	yes	0	10	2				bin comp	25/09/2021			2021-10-05
1323	Tarapore	The park (lotus)				Res.		42		MHADA		-	-	-								2021-10-05
1324	Tarapore	K.l walawalkar mcgm garden				Grdn				Others	yes		5									2021-10-05
1325	Tarapore	Atlantis				Res.		22		Others		-	-	-								2021-10-05
1326	Tarapore	Deep apartment				Res.		100		BWG		-	-	-						28/09/2021	Zuber Menon	2021-10-05
1327	Tarapore	Arjanhans				Res.				Others		-	-	-								2021-10-05
1328	Tarapore	Kohinoor i				Res.				Others		-	-	-								2021-10-05
1329	Tarapore	Kohinoor ii				Res.				Others		-	-	-								2021-10-05
1330	Tarapore	Shantivan mhada (7 bldg)				Res.		7x28		MHADA	yes	125	3	0					25/09/2021			2021-10-05
1331	Tarapore	Bmc garden ii				Grdn				Others		-	-	-								2021-10-05
1332	Tarapore	Rims international school 				Scl				Others		-	-	-								2021-10-05
1333	Tarapore	Samartha deep				Res.		160		BWG	yes	0	20	0					-	-	-	2021-10-05
1334	Tarapore	Samartha ashish				Res.		74		Others		-	-	-								2021-10-05
1335	Tarapore	Aakash				Res.		28		MHADA	yes	0	0	0				bin comp	26/09/2021			2021-10-05
1336	Tarapore	Eden garden no.22				Res.		32		MHADA	yes	0	20	15				bin comp	18/09/2021			2021-10-05
1337	Tarapore	Samartha aangan				Res.		330		After 2007 (BWG)	yes	104	0	25								2021-10-05
1338	Tarapore	Gulmohar				Res.		32		MHADA	yes	42.6	0	0								2021-10-05
1339	Tarapore	Mayfair no.20				Res.		32	6	MHADA	yes	0	20	0				bin comp	18/09/2021			2021-10-05
1340	Tarapore	Indra darshan l				Res.		264		BWG		0	20	0				out source	-	-	-	2021-10-05
1341	Tarapore	Indra darshan ll				Res.		330		BWG		0	20	0				out source	-	-	-	2021-10-05
1342	Tarapore	Tarapore garden no. 1,2,3				Res.		294		BWG	yes	0	120	10						18/09/2021	Sanjeev Sharma\n9920304152	2021-10-05
1343	Tarapore	Tarapore tower				Res.		269		BWG	yes	0	100	0				out source	-	18/09/2021	Arun poddar\n9920720066	2021-10-05
1344	Tarapore	Samartha vaibhav				Com		103	20	Others		-	-	-								2021-10-05
1345	Azad Nagar Petrol Pump	Tulip no.6				Res.		37	2	MHADA	yes	45	0	0								2021-10-05
1346	Azad Nagar Petrol Pump	Aster no.5				Res.		34		MHADA	yes	0	0	0				Bin comp				2021-10-05
1347	Azad Nagar Petrol Pump	Kasturi				Res.		32		Others		--	-	-								2021-10-05
1348	Jbcn School Lane	Blue bell no.8				Res.		34	4	MHADA	yes	35	0	0								2021-10-05
1349	Jbcn School Lane	Avalon no7				Res.		30		MHADA	yes	65	0	0								2021-10-05
1350	Jbcn School Lane	(jbcn) international school				Scl				Others		-	-	-								2021-10-05
1351	Jbcn School Lane	Daffodils no.10				Res.		32		MHADA	yes	50	0	0								2021-10-05
1352	Jbcn School Lane	Indus no.9				Res.		32		MHADA	yes	55	0	0								2021-10-05
1353	Oshiwara Garden	Maheshwari hall				Com				Others		-	-	-								2021-10-05
1354	Oshiwara Garden	Suriyakiran no.19				Res.		32	6	MHADA	yes	0	-	0				bin comp	18/09/2021			2021-10-05
1355	Oshiwara Garden	Amity no.18				Res.		32		MHADA	yes	0	15	2				bin comp	18/09/2021			2021-10-05
1356	Oshiwara Garden	Oshiwara mhada garden				Grdn				After 2007 (BWG)	yes	0	0	0				bin comp	18/09/2021			2021-10-05
1357	Oshiwara Garden	Green view no.17				Res.		32		MHADA	yes	0	15	2				bin comp	18/09/2021			2021-10-05
1358	Oshiwara Garden	Hima sai no.16				Res.		32		MHADA	yes	0	0	0				bin comp	18/09/2021			2021-10-05
1359	Oshiwara Garden	Raja rani malhotra vidyalaya				Scl		40		Others		-	-	-								2021-10-05
1360	Oshiwara Garden	Hvps education complex				Clg				Others	yes	0	20	0								2021-10-05
1361	Oshiwara Garden	Goenka international school				Scl			22	Others	yes	0	2	0								2021-10-05
1362	Oshiwara Garden	Marble school				Scl			22	Others		--	-	-								2021-10-05
1363	Oshiwara Garden	Goverment of india building				Res.		30		Others		0	0	0								2021-10-05
1364	Oshiwara Garden	Sanskar no.15				Res.		28		MHADA	yes	50	0	0					-	-	-	2021-10-05
1365	Bmc Road	Aradhana sra				Res.		286	25	Others	yes	643	0	0					-	-	-	2021-10-05
1366	Bmc Road	Annapoorna chs				Res.				Others	yes	64	5	0					-	-	-	2021-10-05
1367	Bmc Road	Godavari no1				Res.		40		MHADA	yes	0	5	0					02/10/2021			2021-10-05
1368	Bmc Road	Krishna no 2				Res.		40		MHADA	yes	0	5	6					02/10/2021			2021-10-05
1369	Bmc Road	Narmadha no 3				Res.		40		MHADA	yes	0	10	5					02/10/2021			2021-10-05
1370	Bmc Road	Kaveri no 4				Res.		40		MHADA	yes	0	5	10					02/10/2021			2021-10-05
1371	Bmc Road	Panchvati no 5				Res.		40		MHADA	yes	0	15	0					02/10/2021			2021-10-05
1372	Bmc Road	Saptha shrungi no 6				Res.		40		MHADA	yes	0	10	0								2021-10-05
1373	Bmc Road	Sai siddhii no 7				Res.		40		MHADA	yes	0	2	0								2021-10-05
1374	Bmc Road	Serenity shree sai wings adef chs				Res.		72		BWG	yes	0	8	0						18/09/2021	Nandkishore Ghag\n9821394023	2021-10-05
1375	Bmc Road	Serenity shree sai wings b1,b2 chs				Res.				BWG	yes	130	8	20						18/09/2021	Vare (Mang)\n9699720927	2021-10-05
1376	Bmc Road	Serenity shree sai wings ghi chs				Res.		84		BWG	yes		9	20						18/09/2021	Suryanarayan Chube \n9702021707	2021-10-05
1377	Bmc Road	City international school				Scl				Others	yes	0	0	36								2021-10-05
1378	Heera Panna Road	Jay ambe				Res.				Others		-	-	-								2021-10-05
1379	Heera Panna Road	Sumukh heights				Res.		42		Others	yes	0	20	0								2021-10-05
1380	Heera Panna Road	Sai leela(sra)				Res.				Others		-	-	-								2021-10-05
1381	Heera Panna Road	Aanand seva samity				Res.		102	11	BWG /SRA	yes	0	15	0						27/09/2021	Mansoor Ali Khan\n9022887279	2021-10-05
1382	Heera Panna Road	Reliable business centre				Com			11	After 2007 (BWG)	yes	0	10	0						27/09/2021	Shakeel Shaik\n9821326518	2021-10-05
1383	Heera Panna Road	Om heera panna premises				Com			290	BWG	yes	0	10	0					27/09/2021	27/09/2021	Kisanlal Hans\n9892408602	2021-10-05
1384	Heera Panna Road	Oshiwara link plaza				Com			199	Others	yes	0	15	0								2021-10-05
1385	Heera Panna Road	Oshiwara yashodeep 				Res.		60		BWG /SRA	yes	0	35	0					-	18/09/2021	Ishwar  Hubale\n9870473923	2021-10-05
1386	Heera Panna Road	(sbi) officers quatres 35				Res.		90		MHADA	yes	0	3	0				comp.				2021-10-05
1387	Heera Panna Road	Godavari 								MHADA	yes	0	0	0								2021-10-05
1388	Heera Panna Road	Yamuna 38				Res.		55	12	MHADA	yes	0	10	0								2021-10-05
1389	Heera Panna Road	Kaveri no41				Res.				MHADA	yes	0	0	0								2021-10-05
1390	Heera Panna Road	Mhada sargam no40				Res.		88	4	MHADA	yes	28	10	2								2021-10-05
1391	Heera Panna Road	Sebi gaurur				Res.		30		Others	yes	0	2	0								2021-10-05
1392	Heera Panna Road	Gujarat bhavan				Res.		28		Others	yes	56	3	0								2021-10-05
1393	Heera Panna Road	Tata communication residential colony				Res.		105		MHADA	yes	0	4	0								2021-10-05
1394	Heera Panna Road	Andhra bank quartres				Res.		62		MHADA	yes	23	10	0								2021-10-05
1395	Heera Panna Road	Bmc garden i				Grdn				Others	yes	0	20	0								2021-10-05
1396	Oshiwara Mahada New Link Road	Marigold no. 1				Res.		34		MHADA	yes	0	0	2								2021-10-05
1397	Oshiwara Mahada New Link Road	Anuksa no.2				Res.		34		MHADA	yes	0	0	7								2021-10-05
1398	Oshiwara Mahada New Link Road	Aroma no.3				Res.		34		MHADA	yes	0	0	0								2021-10-05
1399	Oshiwara Mahada New Link Road	Sunshine no.4				Res.		34		MHADA	yes	0	0	0								2021-10-05
1400	Oshiwara Mahada New Link Road	Starship no.11				Res.		28		MHADA	yes	0	0	0					18/09/2021			2021-10-05
1401	Oshiwara Mahada New Link Road	Lotus no.12				Res.		32		MHADA	yes	41	0	5					18/09/2021			2021-10-05
1402	Oshiwara Mahada New Link Road	Utsav no.13				Res.		32		MHADA	yes	20	0	0				comp bin  returned				2021-10-05
1403	Oshiwara Mahada New Link Road	Rajanigandha no.14				Res.		32		MHADA	yes	0	20	2					18/09/2021			2021-10-05
1404	Oshiwara Mahada New Link Road	Income tax officers no.24				Res.		34		MHADA	yes	35	0	0								2021-10-05
1405	Oshiwara Mahada New Link Road	Link way no.25				Res.		34		MHADA	yes	43	12	0								2021-10-05
1406	Oshiwara Mahada New Link Road	Central excise res.iety no.26				Res.		32		MHADA	yes	30	0	0								2021-10-05
1407	Oshiwara Mahada New Link Road	Central excise res.iety no.27				Res.		32		MHADA	yes	45	0	0								2021-10-05
1408	Oshiwara Mahada New Link Road	Oshiwara police chowki				Com				Others		-	-	-								2021-10-05
1409	Oshiwara Mahada New Link Road	State bank india 				Com			1	Others		-	-	-								2021-10-05
1410	Oshiwara Mahada New Link Road	Matru chayya				Res.		32		MHADA		-	-	-								2021-10-05
1411	Oshiwara Mahada New Link Road	Ekdant society				Res.		34		MHADA	yes	0	10	0								2021-10-05
1412	Oshiwara Mahada New Link Road	Parth no.43				Res.		32		MHADA	yes	0	10	2								2021-10-05
1413	Oshiwara Mahada New Link Road	Fakir wadi (t.camp)				Res.				Others	yes	275	0	0								2021-10-05
1414	Behram  Baug	Shakti seva sangh				Res.		91	14	BWG/SRA	no	0	0	0								2021-10-06
1415	Behram  Baug	Ujala nagar sra				Res.		116	21	After 2007 (BWG/SRA)	no	0	0	0								2021-10-06
1416	Behram  Baug	Patel sra				Res.				Others	no	0	0	0								2021-10-06
1417	Behram  Baug	Sakirabi				Res.		114	16	After 2007 (BWG/SRA)	no	0	0	0								2021-10-06
1418	Behram  Baug	Parsi colony				Res.		13x28		Others	yes	80	36	0								2021-10-06
1419	Behram  Baug	Shama chs				Res.				Others	no	0	0	0								2021-10-06
1420	Behram  Baug	Anupa public high scl				Scl				Others		-	-	-								2021-10-06
1421	Behram  Baug	Sarvodhaya sra				Res.				BWG	no	0	0	0					03/10/2021			2021-10-06
1422	Behram  Baug	Range heights				Com				After 2007 (BWG)	no	-	-	-								2021-10-06
1423	Behram  Baug	Santosh nagar sra				Res.				BWG	no	0	0	0						28/09/2021	Amersen Yadav\n9867974333	2021-10-06
1424	Behram  Baug	Green palace				Res.				Others	no	0	0	0								2021-10-06
1425	Roshan Nagar	Millienium court				Res.		80	1	BWG	yes	0	0	0						27/09/2021	Nitinn Ranga\n9821337126	2021-10-06
1426	Roshan Nagar	Evershine green				Res.		206	14	BWG	yes	-	70	3						18/09/2021	Rohit Sharma (chr)\n9819309474	2021-10-06
1427	Roshan Nagar	Raigad military school\nCom-bldg				Com		32		BWG	yes	-	-	0								2021-10-06
1428	Roshan Nagar	Raigad military school				Scl		32		Others	yes	-	-	0								2021-10-06
1429	Roshan Nagar	Mariyam public high school				Scl			16	Others	yes	-	-	-								2021-10-06
1430	Roshan Nagar	Belvedere spring school				Scl				Others												2021-10-06
1431	Roshan Nagar	Level resident				Res.				Others												2021-10-06
1432	Roshan Nagar	Oshiwara akash ganga				Res.		28		Others	yes	46	5	-								2021-10-06
1433	Roshan Nagar	Oshwara vishal				Res.		28		Others	yes	33	8	-								2021-10-06
1434	Roshan Nagar	Oshiwara sahyadri				Res.		56		Others	yes	0	12	0								2021-10-06
1435	Roshan Nagar	Oshiwara girnar				Res.		56		Others	yes	0	15	0								2021-10-06
1436	Roshan Nagar	Johig				Res.		28		Others	yes	32	5	0								2021-10-06
1437	Roshan Nagar	Oshiwara ravikiran				Res.		28		Others	yes	34	4	0								2021-10-06
1438	Roshan Nagar	Oshiwara satpuda				Res.		56		Others	yes	67	6	0								2021-10-06
2469	Tarapore	Atlantis				Res.		22		Others	yes	20	8	0								2021-10-13
1439	Roshan Nagar	Green daimond				Res.		40		After 2007 (BWG)	yes	44	10	0						27/09/2021	Sameer Shaik(sup)\n9920048273	2021-10-06
1440	Roshan Nagar	Jogeshwari ganesh niwas				Res.		80		BWG/SRA	yes	77	8	0						27/09/2021	Bhagwan Jadhav\n9821800369	2021-10-06
1441	Roshan Nagar	Roshan nagar b1				Res.		52	12	After 2007 (BWG/SRA)	yes	36	0	0						27/09/2021	Ashok Dongre\n9833455170	2021-10-06
1442	Roshan Nagar	Roshan nagar b2				Res.		82	13	After 2007 (BWG/SRA)	yes	44	0	0						27/09/2021	Alim Khan\n8879313127	2021-10-06
1443	Roshan Nagar	Lashkaria empress				Res.		56	6	After 2007 (BWG/SRA)	no	-	--	-						21/09/2021	Sameer Shaik\n9920048273	2021-10-06
1444	Roshan Nagar	Oriental education 				Clg				Others		-	--	-								2021-10-06
1445	Roshan Nagar	Green heights (lashkaria)				Res.				BWG	no	-	-	-						21/09/2021	Aslam Lashkaria\n9820990707	2021-10-06
1446	Roshan Nagar	Sree sai lila (sra)				Res.		56		BWG		-	-	-								2021-10-06
1447	Roshan Nagar	Shivspruthi bldg no.1 				Res.				BWG	yes	67	10	0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-06
1448	Roshan Nagar	Shivspruthi bldg no.2 				Res.		88		BWG /SRA	yes	73	15	0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-06
1449	Anand Nagar	Techweb centre				Com				Others	yes	0	0	0								2021-10-06
1451	Anand Nagar	Vijay vishal				Res.		78		BWG	yes	41	0	0						20/09/2021	Chandrakant Kale\n9969003025	2021-10-06
1452	Anand Nagar	Spice tower				Com			16	Others		-	-	-				out source				2021-10-06
1453	Anand Nagar	Sandipani shikshak oshiwara				Res.		91	28	After 2007 (BWG)	no	0	0	0						20/09/2021	Rammani C. Dube\n9702334382	2021-10-06
1454	Anand Nagar	Vaibhav palace				Res.		48	28	Others	yes	83	0	0								2021-10-06
1455	Mega Mall	Assistant commissioner police oshiwara division mumbai				Com					no	-	-	-								2021-10-06
1456	Mega Mall	Jay ambe				Res.		100		BWG	yes	180	25	0						28/09/2021	Amar Pal\n9920612050	2021-10-06
1457	Mega Mall	Mahataranga				Res.		52	4	Others	no	0	0	0								2021-10-06
1458	Mega Mall	Swati apartment				Res.		28	7	Others	no	0	10	0								2021-10-06
1459	Mega Mall	1 bhk				Com				Others		-	-	-					-			2021-10-06
1460	Mega Mall	Meera tower				Res.		100	28	BWG		-	-	-				out source		18/09/2021	A.K.Singh (Mang)\n9930317315	2021-10-06
1461	Green Park	East side no.28				Res.		32		MHADA	yes	0	18	0				bin comp	24/09/2021			2021-10-06
1462	Green Park	Samruddhi no.29				Res.		32		MHADA	yes	0	0	0				bin comp				2021-10-06
1463	Green Park	Anand vihar				Res.		42		MHADA	yes	8	12	0					24/09/2021			2021-10-06
1464	Green Park	Oshiwara basera				Res.		28		MHADA	yes	0	5	0				bin comp				2021-10-06
1465	Green Park	Park paradise				Res.		44	12	MHADA	yes	0	0	3				bin comp	25/09/2021			2021-10-06
1466	Tarapore	The park (lotus)				Res.		42		MHADA	--	-	-	-								2021-10-06
1467	Tarapore	K.l walawalkar mcgm garden				Grdn				Others		0	0	0								2021-10-06
1468	Tarapore	Atlantis				Res.		22		Others	yes	0	0	0								2021-10-06
1469	Tarapore	Deep apartment				Res.		100		BWG	no	0	0	0						28/09/2021	Zuber Menon	2021-10-06
1470	Tarapore	Harjanhans				Res.				Others	yes	0	0	0								2021-10-06
1471	Tarapore	Kohinoor i				Res.				Others	no	0	0	0								2021-10-06
1472	Tarapore	Kohinoor ii				Res.				Others	no	0	0	0								2021-10-06
1473	Tarapore	Shantivan mhada (7 bldg)				Res.		7x28		MHADA	yes	110	0	0					25/09/2021			2021-10-06
1474	Tarapore	Bmc garden ii				Grdn				Others		-	-	-								2021-10-06
1475	Tarapore	Rims international school 				Scl				Others		-	-	-								2021-10-06
1476	Tarapore	Samartha deep				Res.		160		BWG		-	-	-					-	-	-	2021-10-06
1477	Tarapore	Samartha ashish				Res.		74		Others		-	-	-								2021-10-06
1478	Tarapore	Aakash				Res.		28		MHADA	yes	0	0	0				bin comp	26/09/2021			2021-10-06
1479	Tarapore	Eden garden no.22				Res.		32		MHADA	yes	0	0	0				bin comp	18/09/2021			2021-10-06
1480	Tarapore	Samartha aangan				Res.		330		After 2007 (BWG)	yes	0	0	10								2021-10-06
1481	Tarapore	Gulmohar				Res.		32		MHADA	yes	43	0	0								2021-10-06
1482	Tarapore	Mayfair no.20				Res.		32	6	MHADA	yes	0	0	0				bin comp	18/09/2021			2021-10-06
1483	Tarapore	Indra darshan l				Res.		264		BWG		-	-	-				out source	-	-	-	2021-10-06
1484	Tarapore	Indra darshan ll				Res.		330		BWG		-	-	-				out source	-	-	-	2021-10-06
1485	Tarapore	Tarapore garden no. 1,2,3				Res.		294		BWG	yes	0	0	0						18/09/2021	Sanjeev Sharma\n9920304152	2021-10-06
1486	Tarapore	Tarapore tower				Res.		269		BWG	yes	0	0	0					-	18/09/2021	Arun poddar\n9920720066	2021-10-06
1487	Tarapore	Samartha vaibhav				Com		103	20	Others	no	0	0	0								2021-10-06
1488	Azad Nagar Petrol Pump	Tulip no.6				Res.		37	2	MHADA	yes	0						Bin comp				2021-10-06
1489	Azad Nagar Petrol Pump	Aster no.5				Res.		34		MHADA	yes	0						Bin comp				2021-10-06
1490	Azad Nagar Petrol Pump	Kasturi				Res.		32		Others												2021-10-06
1491	Jbcn School Lane	Blue bell no.8				Res.		34	4	MHADA	no	-	-	-								2021-10-06
1492	Jbcn School Lane	Avalon no7				Res.		30		MHADA	no	-	-	-								2021-10-06
1493	Jbcn School Lane	(jbcn) international school				Scl				Others	--	-	-	-								2021-10-06
1494	Jbcn School Lane	Daffodils no.10				Res.		32		MHADA	yes	0	35	0								2021-10-06
1495	Jbcn School Lane	Indus no.9				Res.		32		MHADA	yes	0	37	0								2021-10-06
1496	Oshiwara Garden	Maheshwari hall				Com				Others	yes	0	18	0								2021-10-06
1497	Oshiwara Garden	Suriyakiran no.19				Res.		32	6	MHADA	yes	0	12	0				bin comp	18/09/2021			2021-10-06
1498	Oshiwara Garden	Amity no.18				Res.		32		MHADA	yes	0	10	0				bin comp	18/09/2021			2021-10-06
1499	Oshiwara Garden	Oshiwara mhada garden				Grdn				After 2007 (BWG)	yes	0	0	0				bin comp	18/09/2021			2021-10-06
1500	Oshiwara Garden	Green view no.17				Res.		32		MHADA	yes	0	18	0				bin comp	18/09/2021			2021-10-06
1501	Oshiwara Garden	Hima sai no.16				Res.		32		MHADA	yes	0	15	0				bin comp	18/09/2021			2021-10-06
1502	Oshiwara Garden	Raja rani malhotra vidyalaya				Scl		40		Others	--	-	-	-								2021-10-06
1503	Oshiwara Garden	Hvps education complex				Clg				Others	--	-	-	-								2021-10-06
1504	Oshiwara Garden	Goenka international school				Scl			22	Others	--	-	-	-								2021-10-06
1505	Oshiwara Garden	Marble school				Scl			22	Others	--	-	-	-								2021-10-06
1506	Oshiwara Garden	Goverment of india building				Res.		30		Others		0	0	0								2021-10-06
1507	Oshiwara Garden	Sanskar no.15				Res.		28		MHADA	yes	27	10	0					-	-	-	2021-10-06
1508	Bmc Road	Aradhana sra				Res.		286	25	Others	yes	180	45	0					-	-	-	2021-10-06
1509	Bmc Road	Annapoorna chs				Res.				Others	yes	0	0	0					-	-	-	2021-10-06
1510	Bmc Road	Godavari no1				Res.		40		MHADA	yes	0	10	0				Bin comp	02/10/2021			2021-10-06
1511	Bmc Road	Krishna no 2				Res.		40		MHADA	yes	0	8	0				Bin comp	02/10/2021			2021-10-06
1512	Bmc Road	Narmadha no 3				Res.		40		MHADA	yes	0	9	0				Bin comp	02/10/2021			2021-10-06
1513	Bmc Road	Kaveri no 4				Res.		40		MHADA	yes	0	11	0				Bin comp	02/10/2021			2021-10-06
1514	Bmc Road	Panchvati no 5				Res.		40		MHADA	yes	0	5	0				Bin comp	02/10/2021			2021-10-06
1515	Bmc Road	Saptha shrungi no 6				Res.		40		MHADA	yes	0	5	0				Bin comp				2021-10-06
1516	Bmc Road	Sai siddhii no 7				Res.		40		MHADA	yes	0	5	0				Bin comp				2021-10-06
1517	Bmc Road	Serenity shree sai wings adef chs				Res.		72		BWG	yes	0	10	10						18/09/2021	Nandkishore Ghag\n9821394023	2021-10-06
1518	Bmc Road	Serenity shree sai wings b1,b2 chs				Res.				BWG	yes	0	11	10						18/09/2021	Vare (Mang)\n9699720927	2021-10-06
1519	Bmc Road	Serenity shree sai wings ghi chs				Res.		84		BWG	yes	0	11	10						18/09/2021	Suryanarayan Chube \n9702021707	2021-10-06
1520	Bmc Road	City international school				Scl				Others	yes	-	2	-								2021-10-06
1521	Heera Panna Road	Jay ambe				Res.				Others	yes	0	25	0								2021-10-06
1522	Heera Panna Road	Sumukh heights				Res.		42		Others	yes	-	-	-								2021-10-06
1523	Heera Panna Road	Sai leela(sra)				Res.				Others		-	-	-								2021-10-06
1524	Heera Panna Road	Aanand seva samity				Res.		102	11	BWG /SRA	yes	0	0	0						27/09/2021	Mansoor Ali Khan\n9022887279	2021-10-06
1525	Heera Panna Road	Reliable business centre				Com			11	After 2007 (BWG)	yes	0	0	0						27/09/2021	Shakeel Shaik\n9821326518	2021-10-06
1526	Heera Panna Road	Om heera panna premises				Com			290	BWG		0	0	0					27/09/2021	27/09/2021	Kisanlal Hans\n9892408602	2021-10-06
1527	Heera Panna Road	Oshiwara link plaza				Com			199	Others		-	-	-								2021-10-06
1528	Heera Panna Road	Oshiwara yashodeep 				Res.		60		BWG /SRA	yes	0	10	0					-	18/09/2021	Ishwar  Hubale\n9870473923	2021-10-06
1529	Heera Panna Road	(sbi) officers quatres 35				Res.		90		MHADA	yes	0	10	-				comp.				2021-10-06
1530	Heera Panna Road	Godavari 								MHADA	yes	0	12	-								2021-10-06
1531	Heera Panna Road	Yamuna 38				Res.		55	12	MHADA	yes	0	11	-				Bin comp				2021-10-06
1532	Heera Panna Road	Kaveri no41				Res.				MHADA	yes	0	7	-								2021-10-06
1533	Heera Panna Road	Mhada sargam no40				Res.		88	4	MHADA	yes	0	6	0				Bin comp				2021-10-06
1534	Heera Panna Road	Sebi gaurur				Res.		30		Others	no	0	0	0								2021-10-06
1535	Heera Panna Road	Gujarat bhavan				Res.		28		Others	yes	0	0	0				Bin comp				2021-10-06
1536	Heera Panna Road	Tata communication residential colony				Res.		105		MHADA	yes	0	8	0				comp bin				2021-10-06
1537	Heera Panna Road	Andhra bank quartres				Res.		62		MHADA	yes	0	5	0				comp bin				2021-10-06
1538	Heera Panna Road	Bmc garden i				Grdn				Others		-	-	-								2021-10-06
1539	Oshiwara Mahada New Link Road	Marigold no. 1				Res.		34		MHADA	yes	0	10	0				Bin comp				2021-10-06
1540	Oshiwara Mahada New Link Road	Anuksa no.2				Res.		34		MHADA	yes	0	7	0				Bin comp				2021-10-06
1541	Oshiwara Mahada New Link Road	Aroma no.3				Res.		34		MHADA	yes	0	5	0				Bin comp				2021-10-06
1542	Oshiwara Mahada New Link Road	Sunshine no.4				Res.		34		MHADA	yes	0	5	0				Bin comp				2021-10-06
1543	Oshiwara Mahada New Link Road	Starship no.11				Res.		28		MHADA	yes	0	2	0				Bin comp	18/09/2021			2021-10-06
1544	Oshiwara Mahada New Link Road	Lotus no.12				Res.		32		MHADA	yes	37	4	0				Bin comp	18/09/2021			2021-10-06
1545	Oshiwara Mahada New Link Road	Utsav no.13				Res.		32		MHADA	noyes	0	5	0				comp bin  returned				2021-10-06
1546	Oshiwara Mahada New Link Road	Rajanigandha no.14				Res.		32		MHADA	yes	0	10	0				Bin comp	18/09/2021			2021-10-06
1547	Oshiwara Mahada New Link Road	Income tax officers no.24				Res.		34		MHADA	yes	39	5	0								2021-10-06
1548	Oshiwara Mahada New Link Road	Link way no.25				Res.		34		MHADA	yes	35	15	0								2021-10-06
1549	Oshiwara Mahada New Link Road	Central excise res.iety no.26				Res.		32		MHADA	yes	29	0	0								2021-10-06
1550	Oshiwara Mahada New Link Road	Central excise res.iety no.27				Res.		32		MHADA	yes	32	0	0								2021-10-06
1551	Oshiwara Mahada New Link Road	Oshiwara police chowki				Com				Others	no	-	-	-								2021-10-06
1552	Oshiwara Mahada New Link Road	State bank india 				Com			1	Others		-	-	-								2021-10-06
1553	Oshiwara Mahada New Link Road	Matru chayya				Res.		32		MHADA	yes	0	12	0				Bin comp				2021-10-06
1554	Oshiwara Mahada New Link Road	Ekdant society				Res.		34		MHADA	yes	0	8	0				Bin comp				2021-10-06
1555	Oshiwara Mahada New Link Road	Parth no.43				Res.		32		MHADA	yes	0	9	0				Bin comp				2021-10-06
1556	Oshiwara Mahada New Link Road	Fakir wadi (t.camp)				Res.				Others	yes	47	25	0								2021-10-06
1557	Behram  Baug	Shakti seva sangh				Res.		91	14	BWG/SRA	no	0	0	0								2021-10-07
1558	Behram  Baug	Ujala nagar sra				Res.		116	21	After 2007 (BWG/SRA)	no	0	0	0								2021-10-07
1559	Behram  Baug	Patel sra				Res.				Others	no	0	0	0								2021-10-07
1560	Behram  Baug	Sakirabi				Res.		114	16	After 2007 (BWG/SRA)	no	0	0	0								2021-10-07
1561	Behram  Baug	Parsi colony				Res.		13x28		Others	yes	121	30	0								2021-10-07
1562	Behram  Baug	Shama chs				Res.				Others	no	0	0	0								2021-10-07
1563	Behram  Baug	Anupa public high scl				Scl				Others		-	-	-								2021-10-07
1564	Behram  Baug	Sarvodhaya sra				Res.				BWG	no	0	0	0					03/10/2021			2021-10-07
1565	Behram  Baug	Range heights				Com				After 2007 (BWG)		-	-	-								2021-10-07
1566	Behram  Baug	Santosh nagar sra				Res.				BWG	no	0	0	0						28/09/2021	Amersen Yadav\n9867974333	2021-10-07
1567	Behram  Baug	Green palace				Res.				Others	no	0	0	0								2021-10-07
1568	Roshan Nagar	Millienium court				Res.		80	1	BWG	yes	0	8	0						27/09/2021	Nitinn Ranga\n9821337126	2021-10-07
1569	Roshan Nagar	Evershine green				Res.		206	14	BWG	yes	22	66	3						18/09/2021	Rohit Sharma (chr)\n9819309474	2021-10-07
1570	Roshan Nagar	Raigad military school\nCom-bldg				Com		32		BWG		-	-	-								2021-10-07
1571	Roshan Nagar	Raigad military school				Scl		32		Others		-	-	-								2021-10-07
1572	Roshan Nagar	Mariyam public high school				Scl			16	Others		-	-	-								2021-10-07
1573	Roshan Nagar	Belvedere spring school				Scl				Others		-	-	-								2021-10-07
1574	Roshan Nagar	Level resident				Res.				Others		-	-	-								2021-10-07
1575	Roshan Nagar	Oshiwara akash ganga				Res.		28		Others	yes	46	15	-								2021-10-07
1576	Roshan Nagar	Oshwara vishal				Res.		28		Others	yes	33	8	-								2021-10-07
1577	Roshan Nagar	Oshiwara sahyadri				Res.		56		Others	yes	22	10	0								2021-10-07
1578	Roshan Nagar	Oshiwara girnar				Res.		56		Others	yes	25	5	0								2021-10-07
1579	Roshan Nagar	Johig				Res.		28		Others	yes	32	10	0								2021-10-07
1580	Roshan Nagar	Oshiwara ravikiran				Res.		28		Others	yes	34	3	0								2021-10-07
1581	Roshan Nagar	Oshiwara satpuda				Res.		56		Others	yes	67	0	0								2021-10-07
1582	Roshan Nagar	Green daimond				Res.		40		After 2007 (BWG)	yes	44	10	0						27/09/2021	Sameer Shaik(sup)\n9920048273	2021-10-07
1583	Roshan Nagar	Jogeshwari ganesh niwas				Res.		80		BWG/SRA	yes	77	5	0						27/09/2021	Bhagwan Jadhav\n9821800369	2021-10-07
1584	Roshan Nagar	Roshan nagar b1				Res.		52	12	After 2007 (BWG/SRA)	yes	36	0	0						27/09/2021	Ashok Dongre\n9833455170	2021-10-07
1585	Roshan Nagar	Roshan nagar b2				Res.		82	13	After 2007 (BWG/SRA)	yes	44	0	0						27/09/2021	Alim Khan\n8879313127	2021-10-07
1586	Roshan Nagar	Lashkaria empress				Res.		56	6	After 2007 (BWG/SRA)		-	-	-					out source	21/09/2021	Sameer Shaik\n9920048273	2021-10-07
1587	Roshan Nagar	Oriental education 				Clg				Others		-	-	-								2021-10-07
1588	Roshan Nagar	Green heights (lashkaria)				Res.				BWG		-	-	-						21/09/2021	Aslam Lashkaria\n9820990707	2021-10-07
1589	Roshan Nagar	Sree sai lila (sra)				Res.		56		BWG		-	-	-								2021-10-07
1590	Roshan Nagar	Shivspruthi bldg no.1 				Res.				BWG	yes	67	11	0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-07
1591	Roshan Nagar	Shivspruthi bldg no.2 				Res.		88		BWG /SRA	yes	73	10	0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-07
1592	Anand Nagar	Techweb centre				Com				Others	yes	10	0	0								2021-10-07
1593	Anand Nagar	Daimond /pearl				Res.		18	2	Others	yes	23	0	0								2021-10-07
1594	Anand Nagar	Vijay vishal				Res.		78		BWG	yes	41	0	0						20/09/2021	Chandrakant Kale\n9969003025	2021-10-07
1595	Anand Nagar	Spice tower				Com			16	Others		-	-	-					out source			2021-10-07
1596	Anand Nagar	Sandipani shikshak oshiwara				Res.		91	28	After 2007 (BWG)		-	-	-						20/09/2021	Rammani C. Dube\n9702334382	2021-10-07
1597	Anand Nagar	Vaibhav palace				Res.		48	28	Others	yes	83		0								2021-10-07
1598	Mega Mall	Assistant commissioner police oshiwara division mumbai				Com						-		-								2021-10-07
1599	Mega Mall	Jay ambe				Res.		100		BWG	yes	180	20	0						28/09/2021	Amar Pal\n9920612050	2021-10-07
1600	Mega Mall	Mahataranga				Res.		52	4	Others		0	0	0								2021-10-07
1601	Mega Mall	Swati apartment				Res.		28	7	Others	yes	0	5	0								2021-10-07
1602	Mega Mall	1 bhk				Com				Others	no	-	0	-					-			2021-10-07
1603	Mega Mall	Meera tower				Res.		100	28	BWG		-	-	-				out source		18/09/2021	A.K.Singh (Mang)\n9930317315	2021-10-07
1604	Green Park	East side no.28				Res.		32		MHADA		0	0	0				bin comp	24/09/2021			2021-10-07
1605	Green Park	Samruddhi no.29				Res.		32		MHADA		0	0	0				bin comp				2021-10-07
1606	Green Park	Anand vihar				Res.		42		MHADA		8	0	0				bin comp	24/09/2021			2021-10-07
1607	Green Park	Oshiwara basera				Res.		28		MHADA		0	0	0				bin comp				2021-10-07
1608	Green Park	Park paradise				Res.		44	12	MHADA		0	0	3				bin comp	25/09/2021			2021-10-07
1609	Tarapore	The park (lotus)				Res.		42		MHADA		-	0	-								2021-10-07
1610	Tarapore	K.l walawalkar mcgm garden				Grdn				Others		-	-	-								2021-10-07
1611	Tarapore	Atlantis				Res.		22		Others		0	0	0								2021-10-07
1612	Tarapore	Deep apartment				Res.		100		BWG	no	0	0	0						28/09/2021	Zuber Menon	2021-10-07
1613	Tarapore	Arjanhans				Res.				Others		0	0	0								2021-10-07
1614	Tarapore	Kohinoor i				Res.				Others	no	0	0	0								2021-10-07
1615	Tarapore	Kohinoor ii				Res.				Others	no	0	0	0								2021-10-07
1616	Tarapore	Shantivan mhada (7 bldg)				Res.		7x28		MHADA	yes	110	0	0					25/09/2021			2021-10-07
1617	Tarapore	Bmc garden ii				Grdn				Others		-	-	-								2021-10-07
1618	Tarapore	Rims international school 				Scl				Others		-	-	-								2021-10-07
1619	Tarapore	Samartha deep				Res.		160		BWG		-	-	-					-	-	-	2021-10-07
1620	Tarapore	Samartha ashish				Res.		74		Others		-	-	-								2021-10-07
1621	Tarapore	Aakash				Res.		28		MHADA	yes	0	0	0				bin comp	26/09/2021			2021-10-07
1622	Tarapore	Eden garden no.22				Res.		32		MHADA	yes	0	0	0				bin comp	18/09/2021			2021-10-07
1623	Tarapore	Samartha aangan				Res.		330		After 2007 (BWG)	yes	0	0	10								2021-10-07
1624	Tarapore	Gulmohar				Res.		32		MHADA	yes	43	0	0								2021-10-07
1625	Tarapore	Mayfair no.20				Res.		32	6	MHADA	yes	0	0	0				bin comp	18/09/2021			2021-10-07
1626	Tarapore	Indra darshan l				Res.		264		BWG		-	-	-				out source	-	-	-	2021-10-07
1627	Tarapore	Indra darshan ll				Res.		330		BWG		-	-	-				out source	-	-	-	2021-10-07
1628	Tarapore	Tarapore garden no. 1,2,3				Res.		294		BWG	yes	0	0	0						18/09/2021	Sanjeev Sharma\n9920304152	2021-10-07
1629	Tarapore	Tarapore tower				Res.		269		BWG		0	0	0				out source	-	18/09/2021	Arun poddar\n9920720066	2021-10-07
1630	Tarapore	Samartha vaibhav				Com		103	20	Others		0	0	0								2021-10-07
1631	Azad Nagar Petrol Pump	Tulip no.6				Res.		37	2	MHADA	yes	0	0	1				Bin comp				2021-10-07
1632	Azad Nagar Petrol Pump	Aster no.5				Res.		34		MHADA	yes	0	0	1				Bin comp				2021-10-07
1633	Azad Nagar Petrol Pump	Kasturi				Res.		32		Others		-	-	-								2021-10-07
1634	Jbcn School Lane	Blue bell no.8				Res.		34	4	MHADA	no	-	-	-								2021-10-07
1635	Jbcn School Lane	Avalon no7				Res.		30		MHADA	no	-	-	-								2021-10-07
1636	Jbcn School Lane	(jbcn) international school				Scl				Others		-	-	-								2021-10-07
1637	Jbcn School Lane	Daffodils no.10				Res.		32		MHADA	yes	30	-	0								2021-10-07
1638	Jbcn School Lane	Indus no.9				Res.		32		MHADA	yes	12	-	0								2021-10-07
1639	Oshiwara Garden	Maheshwari hall				Com				Others	yes	0	0	0								2021-10-07
1640	Oshiwara Garden	Suriyakiran no.19				Res.		32	6	MHADA	yes	0	18	3				bin comp	18/09/2021			2021-10-07
1641	Oshiwara Garden	Amity no.18				Res.		32		MHADA	yes	0	10	0				bin comp	18/09/2021			2021-10-07
1642	Oshiwara Garden	Oshiwara mhada garden				Grdn				After 2007 (BWG)		0	0	0				bin comp	18/09/2021			2021-10-07
1643	Oshiwara Garden	Green view no.17				Res.		32		MHADA	yes	0	6	0				bin comp	18/09/2021			2021-10-07
1644	Oshiwara Garden	Hima sai no.16				Res.		32		MHADA	yes	0	7	0				bin comp	18/09/2021			2021-10-07
1645	Oshiwara Garden	Raja rani malhotra vidyalaya				Scl		40		Others	yes	-	2	-								2021-10-07
1646	Oshiwara Garden	Hvps education complex				Clg				Others	yes	-	0	-								2021-10-07
1647	Oshiwara Garden	Goenka international school				Scl			22	Others	yes	-	10	-								2021-10-07
1648	Oshiwara Garden	Marble school				Scl			22	Others	yes	-	-	-								2021-10-07
1649	Oshiwara Garden	Goverment of india building				Res.		30		Others		0	-	0								2021-10-07
1650	Oshiwara Garden	Sanskar no.15				Res.		28		MHADA	yes	27	-	3					-	-	-	2021-10-07
1651	Bmc Road	Aradhana sra				Res.		286	25	Others	yes	180	0	0					-	-	-	2021-10-07
1652	Bmc Road	Annapoorna chs				Res.				Others	yes	0	10	0					-	-	-	2021-10-07
1653	Bmc Road	Godavari no1				Res.		40		MHADA	yes	0	20	2				Bin comp	02/10/2021			2021-10-07
1654	Bmc Road	Krishna no 2				Res.		40		MHADA	yes	0	10	0				Bin comp	02/10/2021			2021-10-07
1655	Bmc Road	Narmadha no 3				Res.		40		MHADA	yes	0	7	0				Bin comp	02/10/2021			2021-10-07
1656	Bmc Road	Kaveri no 4				Res.		40		MHADA	yes	0	10	0				Bin comp	02/10/2021			2021-10-07
1657	Bmc Road	Panchvati no 5				Res.		40		MHADA	yes	0	0	1				Bin comp	02/10/2021			2021-10-07
1658	Bmc Road	Saptha shrungi no 6				Res.		40		MHADA	yes	0	0	1				Bin comp				2021-10-07
1659	Bmc Road	Sai siddhii no 7				Res.		40		MHADA	yes	0	0	0				Bin comp				2021-10-07
1660	Bmc Road	Serenity shree sai wings adef chs				Res.		72		BWG	yes	0	0	10						18/09/2021	Nandkishore Ghag\n9821394023	2021-10-07
1661	Bmc Road	Serenity shree sai wings b1,b2 chs				Res.				BWG	yes	0	0	10						18/09/2021	Vare (Mang)\n9699720927	2021-10-07
1662	Bmc Road	Serenity shree sai wings ghi chs				Res.		84		BWG	yee	0	25	10						18/09/2021	Suryanarayan Chube \n9702021707	2021-10-07
1663	Bmc Road	City international school				Scl				Others	yes	-	1	-								2021-10-07
1664	Heera Panna Road	Jay ambe				Res.				Others		-	-	-								2021-10-07
1665	Heera Panna Road	Sumukh heights				Res.		42		Others	yes	0	12	0								2021-10-07
1666	Heera Panna Road	Sai leela(sra)				Res.				Others		-	-	-								2021-10-07
1667	Heera Panna Road	Aanand seva samity				Res.		102	11	BWG /SRA	no	0	0	0						27/09/2021	Mansoor Ali Khan\n9022887279	2021-10-07
1668	Heera Panna Road	Reliable business centre				Com			11	After 2007 (BWG)	yes	0	20	0						27/09/2021	Shakeel Shaik\n9821326518	2021-10-07
1669	Heera Panna Road	Om heera panna premises				Com			290	BWG	no	0	0	0					27/09/2021	27/09/2021	Kisanlal Hans\n9892408602	2021-10-07
1670	Heera Panna Road	Oshiwara link plaza				Com			199	Others	yes	-	18	-								2021-10-07
1671	Heera Panna Road	Oshiwara yashodeep 				Res.		60		BWG /SRA	yes	0	0	0					-	18/09/2021	Ishwar  Hubale\n9870473923	2021-10-07
1672	Heera Panna Road	(sbi) officers quatres 35				Res.		90		MHADA	yes	0	7	-				comp.				2021-10-07
1673	Heera Panna Road	Godavari 								MHADA	yes	30		0								2021-10-07
1674	Heera Panna Road	Yamuna 38				Res.		55	12	MHADA	yes		15	0				Bin comp				2021-10-07
1675	Heera Panna Road	Kaveri no41				Res.				MHADA	yes		10	-								2021-10-07
1676	Heera Panna Road	Mhada sargam no40				Res.		88	4	MHADA	yes	40	15	0				Bin comp				2021-10-07
1677	Heera Panna Road	Sebi gaurur				Res.		30		Others	no	0	0	1								2021-10-07
1678	Heera Panna Road	Gujarat bhavan				Res.		28		Others	yes	0	0	0				Bin comp				2021-10-07
1679	Heera Panna Road	Tata communication residential colony				Res.		105		MHADA	yes	0	5	0				comp bin				2021-10-07
1680	Heera Panna Road	Andhra bank quartres				Res.		62		MHADA	yes	0	7	0				comp bin				2021-10-07
1681	Heera Panna Road	Bmc garden i				Grdn				Others		-		-								2021-10-07
1682	Oshiwara Mahada New Link Road	Marigold no. 1				Res.		34		MHADA	yes	0	8	2				Bin comp				2021-10-07
1683	Oshiwara Mahada New Link Road	Anuksa no.2				Res.		34		MHADA	yes	0	15	0				Bin comp				2021-10-07
1684	Oshiwara Mahada New Link Road	Aroma no.3				Res.		34		MHADA	yes	0	5	0				Bin comp				2021-10-07
1685	Oshiwara Mahada New Link Road	Sunshine no.4				Res.		34		MHADA	yes	0	10	1				Bin comp				2021-10-07
1686	Oshiwara Mahada New Link Road	Starship no.11				Res.		28		MHADA	yes	0	5	0				Bin comp	18/09/2021			2021-10-07
1687	Oshiwara Mahada New Link Road	Lotus no.12				Res.		32		MHADA	yes	37	8	3				Bin comp	18/09/2021			2021-10-07
1688	Oshiwara Mahada New Link Road	Utsav no.13				Res.		32		MHADA	yes	0	2	0				comp bin  returned				2021-10-07
1689	Oshiwara Mahada New Link Road	Rajanigandha no.14				Res.		32		MHADA	yes	0	4	0				Bin comp	18/09/2021			2021-10-07
1690	Oshiwara Mahada New Link Road	Income tax officers no.24				Res.		34		MHADA	yes	39	0	0								2021-10-07
1691	Oshiwara Mahada New Link Road	Link way no.25				Res.		34		MHADA	yes	35	7	0								2021-10-07
1692	Oshiwara Mahada New Link Road	Central excise res.iety no.26				Res.		32		MHADA	yes	29	12	0								2021-10-07
1693	Oshiwara Mahada New Link Road	Central excise res.iety no.27				Res.		32		MHADA	yes	32	5	0								2021-10-07
1694	Oshiwara Mahada New Link Road	Oshiwara police chowki				Com				Others		-		-								2021-10-07
1695	Oshiwara Mahada New Link Road	State bank india 				Com			1	Others		-		-								2021-10-07
1696	Oshiwara Mahada New Link Road	Matru chayya				Res.		32		MHADA	yes	0	15	0				Bin comp				2021-10-07
1697	Oshiwara Mahada New Link Road	Ekdant society				Res.		34		MHADA	yes	0	10	0				Bin comp				2021-10-07
1698	Oshiwara Mahada New Link Road	Parth no.43				Res.		32		MHADA	yes	0	12	0				Bin comp				2021-10-07
1699	Oshiwara Mahada New Link Road	Fakir wadi (t.camp)				Res.				Others		47	0	0								2021-10-07
1700	Behram  Baug	Shakti seva sangh				Res.		91	14	BWG/SRA	no	0	0	0								2021-10-08
1701	Behram  Baug	Ujala nagar sra				Res.		116	21	After 2007 (BWG/SRA)	no	0	0	0								2021-10-08
1702	Behram  Baug	Patel sra				Res.				Others	yes	0	5	0								2021-10-08
1703	Behram  Baug	Sakirabi				Res.		114	16	After 2007 (BWG/SRA)	no	0	0	0								2021-10-08
1704	Behram  Baug	Parsi colony				Res.		13x28		Others	yes	118	0	0								2021-10-08
1705	Behram  Baug	Shama chs				Res.				Others	no	0	0	0								2021-10-08
1706	Behram  Baug	Anupa public high scl				Scl				Others		-	-	-								2021-10-08
1707	Behram  Baug	Sarvodhaya sra				Res.				BWG	yes	30	0	0					03/10/2021			2021-10-08
1708	Behram  Baug	Range heights				Com				After 2007 (BWG)		-	-	-								2021-10-08
1709	Behram  Baug	Santosh nagar sra				Res.				BWG	no	0	0	0						28/09/2021	Amersen Yadav\n9867974333	2021-10-08
1710	Behram  Baug	Green palace				Res.				Others	yes	0	7	0								2021-10-08
1711	Roshan Nagar	Millienium court				Res.		80	1	BWG	yes	0	20	0						27/09/2021	Nitinn Ranga\n9821337126	2021-10-08
1712	Roshan Nagar	Evershine green				Res.		206	14	BWG	yes	22	25	7						18/09/2021	Rohit Sharma (chr)\n9819309474	2021-10-08
1713	Roshan Nagar	Raigad military school\nCom-bldg				Com		32		BWG		-	0	0								2021-10-08
1714	Roshan Nagar	Raigad military school				Scl		32		Others		-	0	0								2021-10-08
1715	Roshan Nagar	Mariyam public high school				Scl			16	Others		-	0	0								2021-10-08
1716	Roshan Nagar	Belvedere spring school				Scl				Others		-	0	0								2021-10-08
1717	Roshan Nagar	Level resident				Res.				Others		-	-	-								2021-10-08
1718	Roshan Nagar	Oshiwara akash ganga				Res.		28		Others	yes	46	5	0								2021-10-08
1719	Roshan Nagar	Oshwara vishal				Res.		28		Others	yes	33	7	0								2021-10-08
1720	Roshan Nagar	Oshiwara sahyadri				Res.		56		Others	yes	22	12	0								2021-10-08
1721	Roshan Nagar	Oshiwara girnar				Res.		56		Others	yes	10	0	0								2021-10-08
1722	Roshan Nagar	Johig				Res.		28		Others	yes	32	3	0								2021-10-08
1723	Roshan Nagar	Oshiwara ravikiran				Res.		28		Others	yes	32	10	0								2021-10-08
1724	Roshan Nagar	Oshiwara satpuda				Res.		56		Others	yes	46	5	0								2021-10-08
1725	Roshan Nagar	Green daimond				Res.		40		After 2007 (BWG)	yes	0	5	0						27/09/2021	Sameer Shaik(sup)\n9920048273	2021-10-08
1726	Roshan Nagar	Jogeshwari ganesh niwas				Res.		80		BWG/SRA	yes	77	10	0						27/09/2021	Bhagwan Jadhav\n9821800369	2021-10-08
1727	Roshan Nagar	Roshan nagar b1				Res.		52	12	After 2007 (BWG/SRA)	yes	36	5	0						27/09/2021	Ashok Dongre\n9833455170	2021-10-08
1728	Roshan Nagar	Roshan nagar b2				Res.		82	13	After 2007 (BWG/SRA)	yes	44	4	0						27/09/2021	Alim Khan\n8879313127	2021-10-08
1729	Roshan Nagar	Lashkaria empress				Res.		56	6	After 2007 (BWG/SRA)	no	-	-	-						21/09/2021	Sameer Shaik\n9920048273	2021-10-08
1730	Roshan Nagar	Oriental education 				Clg				Others		-	-	-								2021-10-08
1731	Roshan Nagar	Green heights (lashkaria)				Res.				BWG		-	-	-						21/09/2021	Aslam Lashkaria\n9820990707	2021-10-08
1732	Roshan Nagar	Sree sai lila (sra)				Res.		56		BWG	yes	0	0	0								2021-10-08
1733	Roshan Nagar	Shivspruthi bldg no.1 				Res.				BWG	yes	67	0	3						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-08
1734	Roshan Nagar	Shivspruthi bldg no.2 				Res.		88		BWG /SRA	yes	73	0	7						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-08
1735	Anand Nagar	Techweb centre				Com				Others	yes	10	12	0								2021-10-08
1736	Anand Nagar	Daimond /pearl				Res.		18	2	Others	yes	23	0	0								2021-10-08
1737	Anand Nagar	Vijay vishal				Res.		78		BWG	yes	41	10	6						20/09/2021	Chandrakant Kale\n9969003025	2021-10-08
1738	Anand Nagar	Spice tower				Com			16	Others		-	-	-					out source			2021-10-08
1739	Anand Nagar	Sandipani shikshak oshiwara				Res.		91	28	After 2007 (BWG)	yes	-	5	0						20/09/2021	Rammani C. Dube\n9702334382	2021-10-08
1740	Anand Nagar	Vaibhav palace				Res.		48	28	Others	yes	83	0	0								2021-10-08
1741	Mega Mall	Assistant commissioner police oshiwara division mumbai				Com					yes	0	0	0								2021-10-08
1742	Mega Mall	Jay ambe				Res.		100		BWG	yes	180	0	0						28/09/2021	Amar Pal\n9920612050	2021-10-08
1743	Mega Mall	Mahataranga				Res.		52	4	Others		0	0	0								2021-10-08
1744	Mega Mall	Swati apartment				Res.		28	7	Others	yes	0	0	0								2021-10-08
1745	Mega Mall	1 bhk				Com				Others	no	0	0	0					-			2021-10-08
1746	Mega Mall	Meera tower				Res.		100	28	BWG		-						out source		18/09/2021	A.K.Singh (Mang)\n9930317315	2021-10-08
1747	Green Park	East side no.28				Res.		32		MHADA	yes	0	15	0				bin comp	24/09/2021			2021-10-08
1748	Green Park	Samruddhi no.29				Res.		32		MHADA	yes	0	0	0				bin comp				2021-10-08
1749	Green Park	Anand vihar				Res.		42		MHADA	yes	8	0	0					24/09/2021			2021-10-08
1750	Green Park	Oshiwara basera				Res.		28		MHADA	yes	0	5	0				bin comp				2021-10-08
1751	Green Park	Park paradise				Res.		44	12	MHADA	yes	0	7	2				bin comp	25/09/2021			2021-10-08
1752	Tarapore	The park (lotus)				Res.		42		MHADA	--	-	10	-								2021-10-08
1753	Tarapore	K.l walawalkar mcgm garden				Grdn				Others	yes	-	2	0								2021-10-08
1754	Tarapore	Atlantis				Res.		22		Others	yes	0	12	0								2021-10-08
1755	Tarapore	Deep apartment				Res.		100		BWG		0	0	0						28/09/2021	Zuber Menon	2021-10-08
1756	Tarapore	Harjanhans				Res.				Others	yes	0	12	0								2021-10-08
1757	Tarapore	Kohinoor i				Res.				Others	yes	0	2	0								2021-10-08
1758	Tarapore	Kohinoor ii				Res.				Others	yes	0	3	0								2021-10-08
1759	Tarapore	Shantivan mhada (7 bldg)				Res.		7x28		MHADA	yes	110	15	0					25/09/2021			2021-10-08
1760	Tarapore	Bmc garden ii				Grdn				Others		-	-	-								2021-10-08
1761	Tarapore	Rims international school 				Scl				Others	yes	0	0	0								2021-10-08
1762	Tarapore	Samartha deep				Res.		160		BWG		0	0	0					-	-	-	2021-10-08
1763	Tarapore	Samartha ashish				Res.		74		Others	yes	-	5	0								2021-10-08
1764	Tarapore	Aakash				Res.		28		MHADA	yes	0	4	0				bin comp	26/09/2021			2021-10-08
1765	Tarapore	Eden garden no.22				Res.		32		MHADA	yes	0	7	15				bin comp	18/09/2021			2021-10-08
1766	Tarapore	Samartha aangan				Res.		330		After 2007 (BWG)	yes	0	55	25								2021-10-08
1767	Tarapore	Gulmohar				Res.		32		MHADA	yes	43	10	0								2021-10-08
1768	Tarapore	Mayfair no.20				Res.		32	6	MHADA	yes	0	17	0				bin comp	18/09/2021			2021-10-08
1769	Tarapore	Indra darshan l				Res.		264		BWG		-	0	0				out source	-	-	-	2021-10-08
1770	Tarapore	Indra darshan ll				Res.		330		BWG		-	0	0				out source	-	-	-	2021-10-08
1771	Tarapore	Tarapore garden no. 1,2,3				Res.		294		BWG	yes	0	27	10						18/09/2021	Sanjeev Sharma\n9920304152	2021-10-08
1772	Tarapore	Tarapore tower				Res.		269		BWG	yes	0	0	0				out source	-	18/09/2021	Arun poddar\n9920720066	2021-10-08
1773	Tarapore	Samartha vaibhav				Com		103	20	Others	yes	0	40	0								2021-10-08
1774	Azad Nagar Petrol Pump	Tulip no.6				Res.		37	2	MHADA	yes	0	10	0				Bin comp				2021-10-08
1775	Azad Nagar Petrol Pump	Aster no.5				Res.		34		MHADA	yes	0	11	0				Bin comp				2021-10-08
1776	Azad Nagar Petrol Pump	Kasturi				Res.		32		Others		-	-	-								2021-10-08
1777	Jbcn School Lane	Blue bell no.8				Res.		34	4	MHADA	yes	-	20	0								2021-10-08
1778	Jbcn School Lane	Avalon no7				Res.		30		MHADA	yes	-	5	0								2021-10-08
1779	Jbcn School Lane	(jbcn) international school				Scl				Others	--	-	-	0								2021-10-08
1780	Jbcn School Lane	Daffodils no.10				Res.		32		MHADA	yes	30	20	0								2021-10-08
1781	Jbcn School Lane	Indus no.9				Res.		32		MHADA	yes	12	11	0								2021-10-08
1782	Oshiwara Garden	Maheshwari hall				Com				Others	yes	0	0	0								2021-10-08
1783	Oshiwara Garden	Suriyakiran no.19				Res.		32	6	MHADA	yes	0	10	0				bin comp	18/09/2021			2021-10-08
1784	Oshiwara Garden	Amity no.18				Res.		32		MHADA	yes	0	9	0				bin comp	18/09/2021			2021-10-08
1785	Oshiwara Garden	Oshiwara mhada garden				Grdn				After 2007 (BWG)	yes	0	0	0				bin comp	18/09/2021			2021-10-08
1786	Oshiwara Garden	Green view no.17				Res.		32		MHADA	yes	0	5	2				bin comp	18/09/2021			2021-10-08
1787	Oshiwara Garden	Hima sai no.16				Res.		32		MHADA	yes	0	5					bin comp	18/09/2021			2021-10-08
1788	Oshiwara Garden	Raja rani malhotra vidyalaya				Scl		40		Others	yes	-	0	0								2021-10-08
1789	Oshiwara Garden	Hvps education complex				Clg				Others	yes	-	7	0								2021-10-08
1790	Oshiwara Garden	Goenka international school				Scl			22	Others	yes	-	40	0								2021-10-08
1791	Oshiwara Garden	Marble school				Scl			22	Others	yes	-	0	0								2021-10-08
1792	Oshiwara Garden	Gov of india				Res.		30		Others	yes	0	4	0								2021-10-08
1793	Oshiwara Garden	Sanskar no.15				Res.		28		MHADA	yes	27	0	0					-	-	-	2021-10-08
1794	Bmc Road	Annapoorna chs				Res.				Others	yes	180	10	0					-	-	-	2021-10-08
1795	Bmc Road	Aradhana sra				Res.		286	25	Others	no	0	0	0					-	-	-	2021-10-08
1796	Bmc Road	Godavari no1				Res.		40		MHADA	yes	0	10	0				Bin comp	02/10/2021			2021-10-08
1797	Bmc Road	Krishna no 2				Res.		40		MHADA	yes	0	7	6				Bin comp	02/10/2021			2021-10-08
1798	Bmc Road	Narmadha no 3				Res.		40		MHADA	yes	0		5				Bin comp	02/10/2021			2021-10-08
1799	Bmc Road	Kaveri no 4				Res.		40		MHADA	yes	0		0				Bin comp	02/10/2021			2021-10-08
1800	Bmc Road	Panchvati no 5				Res.		40		MHADA	yes	0	10	0				Bin comp	02/10/2021			2021-10-08
1801	Bmc Road	Saptha shrungi no 6				Res.		40		MHADA	yes	0		0				Bin comp				2021-10-08
1802	Bmc Road	Sai siddhii no 7				Res.		40		MHADA	yes	0		0				Bin comp				2021-10-08
1803	Bmc Road	Serenity shree sai wings adef chs				Res.		72		BWG	yes	0	22	0						18/09/2021	Nandkishore Ghag\n9821394023	2021-10-08
1804	Bmc Road	Serenity shree sai wings b1,b2 chs				Res.				BWG	yes	0	18	0						18/09/2021	Vare (Mang)\n9699720927	2021-10-08
1805	Bmc Road	Serenity shree sai wings ghi chs				Res.		84		BWG	yes	0	8	20						18/09/2021	Suryanarayan Chube \n9702021707	2021-10-08
1806	Bmc Road	City international school				Scl				Others	yes	-	2	16								2021-10-08
1807	Heera Panna Road	Jay ambe				Res.				Others		-		0								2021-10-08
1808	Heera Panna Road	Sumukh heights				Res.		42		Others	yes	0	0	0								2021-10-08
1809	Heera Panna Road	Sai leela(sra)				Res.				Others		-	-	-								2021-10-08
1810	Heera Panna Road	Aanand seva samity				Res.		102	11	BWG /SRA	no	0	0	0						27/09/2021	Mansoor Ali Khan\n9022887279	2021-10-08
1811	Heera Panna Road	Reliable business centre				Com			11	After 2007 (BWG)	yes	0	20	0						27/09/2021	Shakeel Shaik\n9821326518	2021-10-08
1812	Heera Panna Road	Om heera panna premises				Com			290	BWG	no	0	0	0					27/09/2021	27/09/2021	Kisanlal Hans\n9892408602	2021-10-08
1813	Heera Panna Road	Oshiwara link plaza				Com			199	Others	yes	-	0	0								2021-10-08
1814	Heera Panna Road	Oshiwara yashodeep 				Res.		60		BWG /SRA	yes	0	0	0					-	18/09/2021	Ishwar  Hubale\n9870473923	2021-10-08
1815	Heera Panna Road	(sbi) officers quatres 35				Res.		90		MHADA	yes	0	12	0				comp.				2021-10-08
1816	Heera Panna Road	Godavari 								MHADA	yes	30	4	0								2021-10-08
1817	Heera Panna Road	Yamuna 38				Res.		55	12	MHADA	yes		5	0				Bin comp				2021-10-08
1818	Heera Panna Road	Kaveri no41				Res.				MHADA	yes		7									2021-10-08
1819	Heera Panna Road	Mhada sargam no40				Res.		88	4	MHADA	yes	40	8	2				Bin comp				2021-10-08
1820	Heera Panna Road	Sebi gaurur				Res.		30		Others	yes	0	8	0								2021-10-08
1821	Heera Panna Road	Gujarat bhavan				Res.		28		Others	yes	0	4	0				Bin comp				2021-10-08
1822	Heera Panna Road	Tata communication residential colony				Res.		105		MHADA	yes	0	0	0				comp bin				2021-10-08
1823	Heera Panna Road	Andhra bank quartres				Res.		62		MHADA	yes	0	7	0				comp bin				2021-10-08
1824	Heera Panna Road	Bmc garden i				Grdn				Others		-	-	-								2021-10-08
1825	Oshiwara Mahada New Link Road	Marigold no. 1				Res.		34		MHADA	yes	0	2	2				Bin comp				2021-10-08
1826	Oshiwara Mahada New Link Road	Anuksa no.2				Res.		34		MHADA	yes	0	10	7				Bin comp				2021-10-08
1827	Oshiwara Mahada New Link Road	Aroma no.3				Res.		34		MHADA	yes	0	11	0				Bin comp				2021-10-08
1828	Oshiwara Mahada New Link Road	Sunshine no.4				Res.		34		MHADA	yes	0	12	0				Bin comp				2021-10-08
1829	Oshiwara Mahada New Link Road	Starship no.11				Res.		28		MHADA	yes	0	30	0				Bin comp	18/09/2021			2021-10-08
1830	Oshiwara Mahada New Link Road	Lotus no.12				Res.		32		MHADA	yes	37	2	5				Bin comp	18/09/2021			2021-10-08
1831	Oshiwara Mahada New Link Road	Utsav no.13				Res.		32		MHADA	yes	0	9	0				comp bin  returned				2021-10-08
1832	Oshiwara Mahada New Link Road	Rajanigandha no.14				Res.		32		MHADA	yes	0	15	2				Bin comp	18/09/2021			2021-10-08
1833	Oshiwara Mahada New Link Road	Income tax officers no.24				Res.		34		MHADA	yes	39	4	0								2021-10-08
1834	Oshiwara Mahada New Link Road	Link way no.25				Res.		34		MHADA	yes	35	5	0								2021-10-08
1835	Oshiwara Mahada New Link Road	Central excise res.iety no.26				Res.		32		MHADA	yes	29	6	0								2021-10-08
1836	Oshiwara Mahada New Link Road	Central excise res.iety no.27				Res.		32		MHADA	yes	32	10	0								2021-10-08
1837	Oshiwara Mahada New Link Road	Oshiwara police chowki				Com				Others	no	-	-	-								2021-10-08
1838	Oshiwara Mahada New Link Road	State bank india 				Com			1	Others		-	-	-								2021-10-08
1839	Oshiwara Mahada New Link Road	Matru chayya				Res.		32		MHADA	yes	0	8	0				Bin comp				2021-10-08
1840	Oshiwara Mahada New Link Road	Ekdant society				Res.		34		MHADA	yes	0	0	0				Bin comp				2021-10-08
1841	Oshiwara Mahada New Link Road	Parth no.43				Res.		32		MHADA	yes	0	8	2				Bin comp				2021-10-08
1842	Oshiwara Mahada New Link Road	Fakir wadi (t.camp)				Res.				Others	yes	47	0	0								2021-10-08
1843	Behram  Baug	Shakti seva sangh				Res.		91	14	BWG/SRA		0	0	0								2021-10-09
1844	Behram  Baug	Ujala nagar sra				Res.		116	21	After 2007 (BWG/SRA)		0	0	0								2021-10-09
1845	Behram  Baug	Patel sra				Res.				Others		0	0	0								2021-10-09
1846	Behram  Baug	Sakirabi				Res.		114	16	After 2007 (BWG/SRA)		0	0	0								2021-10-09
1847	Behram  Baug	Parsi colony				Res.		13x28		Others	yes	158	45	0								2021-10-09
1848	Behram  Baug	Shama chs				Res.				Others		0	0	0								2021-10-09
1849	Behram  Baug	Anupa public high scl				Scl				Others		-		-								2021-10-09
1850	Behram  Baug	Sarvodhaya sra				Res.				BWG		0	0	0					03/10/2021			2021-10-09
1851	Behram  Baug	Range heights				Com				After 2007 (BWG)	yes	-	15	-								2021-10-09
1852	Behram  Baug	Santosh nagar sra				Res.				BWG		0	0	0						28/09/2021	Amersen Yadav\n9867974333	2021-10-09
1853	Behram  Baug	Green palace				Res.				Others		0	0	0								2021-10-09
1854	Roshan Nagar	Millienium court				Res.		80	1	BWG	yes	0	27	0						27/09/2021	Nitinn Ranga\n9821337126	2021-10-09
1855	Roshan Nagar	Evershine green				Res.		206	14	BWG	yes	22	58	3						18/09/2021	Rohit Sharma (chr)\n9819309474	2021-10-09
1856	Roshan Nagar	Raigad military school\nCom-bldg				Com		32		BWG		-	0	-								2021-10-09
1857	Roshan Nagar	Raigad military school				Scl		32		Others	no-	-	0	-								2021-10-09
1858	Roshan Nagar	Mariyam public high school				Scl			16	Others	no	-	0	-								2021-10-09
1859	Roshan Nagar	Belvedere spring school				Scl				Others		-	0	-								2021-10-09
1860	Roshan Nagar	Level resident				Res.				Others	--	-	-	-								2021-10-09
1861	Roshan Nagar	Oshiwara akash ganga				Res.		28		Others	yes	17	17	-								2021-10-09
1862	Roshan Nagar	Oshwara vishal				Res.		28		Others	yes	22	25	-								2021-10-09
1863	Roshan Nagar	Oshiwara sahyadri				Res.		56		Others	yes	14	19	0								2021-10-09
1864	Roshan Nagar	Oshiwara girnar				Res.		56		Others	yes	22	35	0								2021-10-09
1865	Roshan Nagar	Johig				Res.		28		Others	yes	15	18	0								2021-10-09
1866	Roshan Nagar	Oshiwara ravikiran				Res.		28		Others	yes	13	11	0								2021-10-09
1867	Roshan Nagar	Oshiwara satpuda				Res.		56		Others	yes	22	8	0								2021-10-09
1868	Roshan Nagar	Green daimond				Res.		40		After 2007 (BWG)	yes	44	19	0						27/09/2021	Sameer Shaik(sup)\n9920048273	2021-10-09
1869	Roshan Nagar	Jogeshwari ganesh niwas				Res.		80		BWG/SRA	yes	59	17	0						27/09/2021	Bhagwan Jadhav\n9821800369	2021-10-09
1870	Roshan Nagar	Roshan nagar b1				Res.		52	12	After 2007 (BWG/SRA)	yes	20	15	0						27/09/2021	Ashok Dongre\n9833455170	2021-10-09
1871	Roshan Nagar	Roshan nagar b2				Res.		82	13	After 2007 (BWG/SRA)	yes	44		0						27/09/2021	Alim Khan\n8879313127	2021-10-09
1872	Roshan Nagar	Lashkaria empress				Res.		56	6	After 2007 (BWG/SRA)	yes	-	8	-						21/09/2021	Sameer Shaik\n9920048273	2021-10-09
1873	Roshan Nagar	Oriental education 				Clg		0		Others	no	-		-								2021-10-09
1874	Roshan Nagar	Green heights (lashkaria)				Res.		0		BWG	no	-		-						21/09/2021	Aslam Lashkaria\n9820990707	2021-10-09
1875	Roshan Nagar	Sree sai lila (sra)				Res.		56		BWG	no	-		-								2021-10-09
1876	Roshan Nagar	Shivspruthi bldg no.1 				Res.				BWG	yes	67	55	0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-09
1877	Roshan Nagar	Shivspruthi bldg no.2 				Res.		88		BWG /SRA	yes	73		0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-09
1878	Anand Nagar	Techweb centre				Com				Others	yes	10	65	0								2021-10-09
1879	Anand Nagar	Daimond /pearl				Res.		18	2	Others	yes	23	27	0								2021-10-09
1880	Anand Nagar	Vijay vishal				Res.		78		BWG	yes	41	15	4						20/09/2021	Chandrakant Kale\n9969003025	2021-10-09
1881	Anand Nagar	Spice tower				Com			16	Others	-	-	-	-				out source				2021-10-09
1882	Anand Nagar	Sandipani shikshak oshiwara				Res.		91	28	After 2007 (BWG)	yes	-	18	-						20/09/2021	Rammani C. Dube\n9702334382	2021-10-09
1883	Anand Nagar	Vaibhav palace				Res.		48	28	Others	yes	83	8	0								2021-10-09
1884	Mega Mall	Assistant commissioner police oshiwara division mumbai				Com						-	0	-								2021-10-09
1885	Mega Mall	Jay ambe				Res.		100		BWG	yes	180	65	0						28/09/2021	Amar Pal\n9920612050	2021-10-09
1886	Mega Mall	Mahataranga				Res.		52	4	Others	no	0	0	0								2021-10-09
1887	Mega Mall	Swati apartment				Res.		28	7	Others		-	-	-								2021-10-09
1888	Mega Mall	1 bhk				Com				Others	no	0	0	0					-			2021-10-09
1889	Mega Mall	Meera tower				Res.		100	28	BWG	--	-	-	-				out source			A.K.Singh (Mang)\n9930317315	2021-10-09
1890	Green Park	East side no.28				Res.		32		MHADA	yes	0	18	0				bin comp	24/09/2021			2021-10-09
1891	Green Park	Samruddhi no.29				Res.		32		MHADA	yes	0	12	0				bin comp				2021-10-09
1892	Green Park	Anand vihar				Res.		42		MHADA	yes	8	15	0				-	24/09/2021			2021-10-09
1893	Green Park	Oshiwara basera				Res.		28		MHADA	yes	0	5	0				bin comp				2021-10-09
1894	Green Park	Park paradise				Res.		44	12	MHADA	yes	0	18	3				bin comp	25/09/2021			2021-10-09
1895	Tarapore	The park (lotus)				Res.		42		MHADA	--	-	-	-								2021-10-09
1896	Tarapore	K.l walawalkar mcgm garden				Grdn				Others	yes	-	0	-								2021-10-09
1897	Tarapore	Atlantis				Res.		22		Others	yes	0	0	0								2021-10-09
1898	Tarapore	Deep apartment				Res.		100		BWG	yes	0	18	0						28/09/2021	Zuber Menon	2021-10-09
1899	Tarapore	Harjanhans				Res.				Others	yes	0	15	0								2021-10-09
1900	Tarapore	Kohinoor i				Res.				Others	yes	0	10	0								2021-10-09
1901	Tarapore	Kohinoor ii				Res.				Others		0		0								2021-10-09
1902	Tarapore	Shantivan mhada (7 bldg)				Res.		7x28		MHADA	yes	110		0					25/09/2021			2021-10-09
1903	Tarapore	Bmc garden ii				Grdn				Others	yes	-	0	-								2021-10-09
1904	Tarapore	Rims international school 				Scl				Others	yes	-	0	-								2021-10-09
1905	Tarapore	Samartha deep				Res.		160		BWG	yes	-	0	-					-	-	-	2021-10-09
1906	Tarapore	Samartha ashish				Res.		74		Others	yes	-	5	-								2021-10-09
1907	Tarapore	Aakash				Res.		28		MHADA	yes	0	10	1				bin comp	26/09/2021			2021-10-09
1908	Tarapore	Eden garden no.22				Res.		32		MHADA	yes	0	5	0				bin comp	18/09/2021			2021-10-09
1909	Tarapore	Samartha aangan				Res.		330		After 2007 (BWG)	yes	0	85	10								2021-10-09
1910	Tarapore	Gulmohar				Res.		32		MHADA	yes	43	10	0								2021-10-09
1911	Tarapore	Mayfair no.20				Res.		32	6	MHADA	yes	0	0	5				bin comp	18/09/2021			2021-10-09
1912	Tarapore	Indra darshan l				Res.		264		BWG		-		-				Out source	-		-	2021-10-09
1913	Tarapore	Indra darshan ll				Res.		330		BWG	yes	-	35	-					-	-	-	2021-10-09
1914	Tarapore	Tarapore garden no. 1,2,3				Res.		294		BWG	yes	0		0						18/09/2021	Sanjeev Sharma\n9920304152	2021-10-09
1915	Tarapore	Tarapore tower				Res.		269		BWG	--	0	-	0				Out source	-	18/09/2021	Arun poddar\n9920720066	2021-10-09
1916	Tarapore	Samartha vaibhav				Com		103	20	Others	yes	0	9	0								2021-10-09
1917	Azad Nagar Petrol Pump	Tulip no.6				Res.		37	2	MHADA	yes	0	5	1				Bin comp				2021-10-09
1918	Azad Nagar Petrol Pump	Aster no.5				Res.		34		MHADA	yes	0	12	1				Bin comp				2021-10-09
1919	Azad Nagar Petrol Pump	Kasturi				Res.		32		Others		-		-								2021-10-09
1920	Jbcn School Lane	Blue bell no.8				Res.		34	4	MHADA	yes	-	5	-								2021-10-09
1921	Jbcn School Lane	Avalon no7				Res.		30		MHADA	yes	-	20	-								2021-10-09
1922	Jbcn School Lane	(jbcn) international school				Scl				Others		-	-	-								2021-10-09
1923	Jbcn School Lane	Daffodils no.10				Res.		32		MHADA	yes	30	10	0								2021-10-09
1924	Jbcn School Lane	Indus no.9				Res.		32		MHADA	yes	12	5	0								2021-10-09
1925	Oshiwara Garden	Maheshwari hall				Com				Others		0	0	0								2021-10-09
1926	Oshiwara Garden	Suriyakiran no.19				Res.		32	6	MHADA	yes	0	11	3				bin comp	18/09/2021			2021-10-09
1927	Oshiwara Garden	Amity no.18				Res.		32		MHADA	yes	0	4	0				bin comp	18/09/2021			2021-10-09
1928	Oshiwara Garden	Oshiwara mhada garden				Grdn				After 2007 (BWG)	yes	0	0	0				bin comp	18/09/2021			2021-10-09
1929	Oshiwara Garden	Green view no.17				Res.		32		MHADA	yes	0	6	0				bin comp	18/09/2021			2021-10-09
1930	Oshiwara Garden	Hima sai no.16				Res.		32		MHADA	yes	0	8	0				bin comp	18/09/2021			2021-10-09
1931	Oshiwara Garden	Raja rani malhotra vidyalaya				Scl		40		Others	yes	-	10	-								2021-10-09
1932	Oshiwara Garden	Hvps education complex				Clg				Others	yes	-	0	-								2021-10-09
1933	Oshiwara Garden	Goenka international school				Scl			22	Others	yes	-	20	-								2021-10-09
1934	Oshiwara Garden	Marble school				Scl			22	Others	yes	-	-	-								2021-10-09
1935	Oshiwara Garden	Goverment of india building				Res.		30		Others	yes	0	44	0								2021-10-09
1936	Oshiwara Garden	Sanskar no.15				Res.		28		MHADA	yes	12	15	3					-	-	-	2021-10-09
1937	Bmc Road	Aradhana sra				Res.		286	25	Others	yes	77	40	0					-	-	-	2021-10-09
1938	Bmc Road	Annapoorna chs				Res.				Others	yes	0	8	0					-	-	-	2021-10-09
1939	Bmc Road	Godavari no1				Res.		40		MHADA	yes	0	4	2				Bin comp	02/10/2021			2021-10-09
1940	Bmc Road	Krishna no 2				Res.		40		MHADA	yes	0	55	0				Bin comp	02/10/2021			2021-10-09
1941	Bmc Road	Narmadha no 3				Res.		40		MHADA	yes	0		0				Bin comp	02/10/2021			2021-10-09
1942	Bmc Road	Kaveri no 4				Res.		40		MHADA	yes	0		0				Bin comp	02/10/2021			2021-10-09
1943	Bmc Road	Panchvati no 5				Res.		40		MHADA	yes	0	20	1				Bin comp	02/10/2021			2021-10-09
1944	Bmc Road	Saptha shrungi no 6				Res.		40		MHADA	yes	0		1				Bin comp				2021-10-09
1945	Bmc Road	Sai siddhii no 7				Res.		40		MHADA	yes	0		0				Bin comp				2021-10-09
1946	Bmc Road	Serenity shree sai wings adef chs				Res.		72		BWG	yes	0		10						18/09/2021	Nandkishore Ghag\n9821394023	2021-10-09
1947	Bmc Road	Serenity shree sai wings b1,b2 chs				Res.				BWG	yes	90	20	10						18/09/2021	Vare (Mang)\n9699720927	2021-10-09
1948	Bmc Road	Serenity shree sai wings ghi chs				Res.		84		BWG	yes	0	15	10						18/09/2021	Suryanarayan Chube \n9702021707	2021-10-09
1949	Bmc Road	City international school				Scl				Others	yes	-	3	-								2021-10-09
1950	Heera Panna Road	Jay ambe				Res.				Others	yes	-	-	-								2021-10-09
1951	Heera Panna Road	Sumukh heights				Res.		42		Others	no	0	0	0								2021-10-09
1952	Heera Panna Road	Sai leela(sra)				Res.				Others		-		-								2021-10-09
1953	Heera Panna Road	Aanand seva samity				Res.		102	11	BWG /SRA		0	0	0						27/09/2021	Mansoor Ali Khan\n9022887279	2021-10-09
1954	Heera Panna Road	Reliable business centre				Com			11	After 2007 (BWG)	no	0	0	0						27/09/2021	Shakeel Shaik\n9821326518	2021-10-09
1955	Heera Panna Road	Om heera panna premises				Com			290	BWG	no	0	0	0					27/09/2021	27/09/2021	Kisanlal Hans\n9892408602	2021-10-09
1956	Heera Panna Road	Oshiwara link plaza				Com			199	Others	no	-	0	-								2021-10-09
1957	Heera Panna Road	Oshiwara yashodeep 				Res.		60		BWG /SRA	yes	0	3	0					-	18/09/2021	Ishwar  Hubale\n9870473923	2021-10-09
1958	Heera Panna Road	(sbi) officers quatres 35				Res.		90		MHADA	yes	0	11	-				comp.				2021-10-09
1959	Heera Panna Road	Godavari 								MHADA	yes	30	12	0				Bin comp				2021-10-09
1960	Heera Panna Road	Yamuna 38				Res.		55	12	MHADA	yes		10	0				Bin comp				2021-10-09
1961	Heera Panna Road	Kaveri no41				Res.				MHADA	yes		4	-				Bin comp				2021-10-09
1962	Heera Panna Road	Mhada sargam no40				Res.		88	4	MHADA	yes	40	7	0				Bin comp				2021-10-09
1963	Heera Panna Road	Sebi gaurur				Res.		30		Others	yes	0	4	1				Bin comp				2021-10-09
1964	Heera Panna Road	Gujarat bhavan				Res.		28		Others	yes	0	5	0				Bin comp				2021-10-09
1965	Heera Panna Road	Tata communication residential colony				Res.		105		MHADA	yes	0	20	0				comp bin				2021-10-09
1966	Heera Panna Road	Andhra bank quartres				Res.		62		MHADA	yes	0	15	0				comp bin				2021-10-09
1967	Heera Panna Road	Bmc garden i				Grdn				Others	yes	-	0	-								2021-10-09
1968	Oshiwara Mahada New Link Road	Marigold no. 1				Res.		34		MHADA	yes	0	7	2				Bin comp				2021-10-09
1969	Oshiwara Mahada New Link Road	Anuksa no.2				Res.		34		MHADA	yes	0	10	0				Bin comp				2021-10-09
1970	Oshiwara Mahada New Link Road	Aroma no.3				Res.		34		MHADA	yes	0	3	0				Bin comp				2021-10-09
1971	Oshiwara Mahada New Link Road	Sunshine no.4				Res.		34		MHADA	yes	0	4	1				Bin comp				2021-10-09
1972	Oshiwara Mahada New Link Road	Starship no.11				Res.		28		MHADA	yes	0	5	0				Bin comp	18/09/2021			2021-10-09
1973	Oshiwara Mahada New Link Road	Lotus no.12				Res.		32		MHADA	yes	37	8	3				Bin comp	18/09/2021			2021-10-09
1974	Oshiwara Mahada New Link Road	Utsav no.13				Res.		32		MHADA	yes	0	12	0				comp bin  returned				2021-10-09
1975	Oshiwara Mahada New Link Road	Rajanigandha no.14				Res.		32		MHADA	yes	0	5	0				Bin comp	18/09/2021			2021-10-09
1976	Oshiwara Mahada New Link Road	Income tax officers no.24				Res.		34		MHADA	yes	39	0	0								2021-10-09
1977	Oshiwara Mahada New Link Road	Link way no.25				Res.		34		MHADA	yes	35		0								2021-10-09
1978	Oshiwara Mahada New Link Road	Central excise res.iety no.26				Res.		32		MHADA	yes	29	10	0								2021-10-09
1979	Oshiwara Mahada New Link Road	Central excise res.iety no.27				Res.		32		MHADA	yes	32	8	0								2021-10-09
1980	Oshiwara Mahada New Link Road	Oshiwara police chowki				Com				Others	no	-	0	-								2021-10-09
1981	Oshiwara Mahada New Link Road	State bank india 				Com			1	Others		-	-	-								2021-10-09
1982	Oshiwara Mahada New Link Road	Matru chayya				Res.		32		MHADA	yes	10	7	0				Bin comp				2021-10-09
1983	Oshiwara Mahada New Link Road	Ekdant society				Res.		34		MHADA	yes	22	15	0				Bin comp				2021-10-09
1984	Oshiwara Mahada New Link Road	Parth no.43				Res.		32		MHADA	yes	12	8	0				Bin comp				2021-10-09
1985	Oshiwara Mahada New Link Road	Fakir wadi (t.camp)				Res.				Others	yes	47	0	0								2021-10-09
1986	Behram  Baug	Shakti seva sangh				Res.		91	14	BWG/SRA		-	-	-								2021-10-10
1987	Behram  Baug	Ujala nagar sra				Res.		116	21	After 2007 (BWG/SRA)	no	0	0	0								2021-10-10
1988	Behram  Baug	Patel sra				Res.				Others	no	0	-	0								2021-10-10
1989	Behram  Baug	Sakirabi				Res.		114	16	After 2007 (BWG/SRA)	no	0	-	0								2021-10-10
1990	Behram  Baug	Parsi colony				Res.		13x28		Others	yes	0	47	0								2021-10-10
1991	Behram  Baug	Shama chs				Res.				Others	no	0	0	0								2021-10-10
1992	Behram  Baug	Anupa public high scl				Scl				Others	no	0	-	0								2021-10-10
1993	Behram  Baug	Sarvodhaya sra				Res.				BWG	yes	0	7	0					03/10/2021			2021-10-10
1994	Behram  Baug	Range heights				Com				After 2007 (BWG)	no	0	0	0								2021-10-10
1995	Behram  Baug	Santosh nagar sra				Res.				BWG	no	0	0	0						28/09/2021	Amersen Yadav\n9867974333	2021-10-10
1996	Behram  Baug	Green palace				Res.				Others	yes	0	3	0								2021-10-10
1997	Roshan Nagar	Millienium court				Res.		80	1	BWG	yes	20	15							27/09/2021	Nitinn Ranga\n9821337126	2021-10-10
1998	Roshan Nagar	Evershine green				Res.		206	14	BWG	yes	5	34	2						18/09/2021	Rohit Sharma (chr)\n9819309474	2021-10-10
1999	Roshan Nagar	Raigad military school\nCom-bldg				Com		32		BWG		-	-	-								2021-10-10
2000	Roshan Nagar	Raigad military school				Scl		32		Others		-	-	-								2021-10-10
2001	Roshan Nagar	Mariyam public high school				Scl			16	Others		-	-	-								2021-10-10
2002	Roshan Nagar	Belvedere spring school				Scl				Others		-	-	-								2021-10-10
2003	Roshan Nagar	Level resident				Res.				Others		-	-	-								2021-10-10
2004	Roshan Nagar	Oshiwara akash ganga				Res.		28		Others	yes	15	10	0								2021-10-10
2005	Roshan Nagar	Oshwara vishal				Res.		28		Others	yes	15	8	0								2021-10-10
2006	Roshan Nagar	Oshiwara sahyadri				Res.		56		Others	yes	70	5	0								2021-10-10
2007	Roshan Nagar	Oshiwara girnar				Res.		56		Others	yes	50	7	0								2021-10-10
2008	Roshan Nagar	Johig				Res.		28		Others	yes	40	5	0								2021-10-10
2009	Roshan Nagar	Oshiwara ravikiran				Res.		28		Others	yes	25	5	0								2021-10-10
2010	Roshan Nagar	Oshiwara satpuda				Res.		56		Others	yes	30	9	0								2021-10-10
2011	Roshan Nagar	Green daimond				Res.		40		After 2007 (BWG)	yes	0	6	0						27/09/2021	Sameer Shaik(sup)\n9920048273	2021-10-10
2012	Roshan Nagar	Jogeshwari ganesh niwas				Res.		80		BWG/SRA	yes	0	10	0						27/09/2021	Bhagwan Jadhav\n9821800369	2021-10-10
2013	Roshan Nagar	Roshan nagar b1				Res.		52	12	After 2007 (BWG/SRA)	yes	75	25	0						27/09/2021	Ashok Dongre\n9833455170	2021-10-10
2014	Roshan Nagar	Roshan nagar b2				Res.		82	13	After 2007 (BWG/SRA)	yes			0						27/09/2021	Alim Khan\n8879313127	2021-10-10
2015	Roshan Nagar	Lashkaria empress				Res.		56	6	After 2007 (BWG/SRA)	yes	0	15	0						21/09/2021	Sameer Shaik\n9920048273	2021-10-10
2016	Roshan Nagar	Oriental education 				Clg		0		Others		-	-	-								2021-10-10
2017	Roshan Nagar	Green heights (lashkaria)				Res.		0		BWG		0	0	0						21/09/2021	Aslam Lashkaria\n9820990707	2021-10-10
2018	Roshan Nagar	Sree sai lila (sra)				Res.		56		BWG		0	0	0								2021-10-10
2019	Roshan Nagar	Shivspruthi bldg no.1 				Res.				BWG	yes	80	27	0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-10
2020	Roshan Nagar	Shivspruthi bldg no.2 				Res.		88		BWG /SRA	yes	85		0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-10
2021	Anand Nagar	Techweb centre				Com				Others	yes	0	0	0								2021-10-10
2022	Anand Nagar	Daimond /pearl				Res.		18	2	Others	yes	20	15									2021-10-10
2023	Anand Nagar	Vijay vishal				Res.		78		BWG	yes	0	23	0.5						20/09/2021	Chandrakant Kale\n9969003025	2021-10-10
2024	Anand Nagar	Spice tower				Com			16	Others		-	-	-					out source			2021-10-10
2025	Anand Nagar	Sandipani shikshak oshiwara				Res.		91	28	After 2007 (BWG)	yes	0	0	2						20/09/2021	Rammani C. Dube\n9702334382	2021-10-10
2026	Anand Nagar	Vaibhav palace				Res.		48	28	Others	yes	0	20	1								2021-10-10
2027	Mega Mall	Assistant commissioner police oshiwara division mumbai				Com					no	0	0	0								2021-10-10
2028	Mega Mall	Jay ambe				Res.		100		BWG		0	0	0						28/09/2021	Amar Pal\n9920612050	2021-10-10
2029	Mega Mall	Mahataranga				Res.		52	4	Others	no	0	0	1								2021-10-10
2030	Mega Mall	Swati apartment				Res.		28	7	Others	no	0	0	1								2021-10-10
2031	Mega Mall	1 bhk				Com				Others		-	-	-					-			2021-10-10
2032	Mega Mall	Meera tower				Res.		100	28	BWG	-	-	-	-				out source			A.K.Singh (Mang)\n9930317315	2021-10-10
2033	Green Park	East side no.28				Res.		32		MHADA	yes	0	11	0				bin comp	24/09/2021			2021-10-10
2034	Green Park	Samruddhi no.29				Res.		32		MHADA	yes	0	12	0				bin comp				2021-10-10
2035	Green Park	Anand vihar				Res.		42		MHADA	yes	0	10	0				bin comp	24/09/2021			2021-10-10
2036	Green Park	Oshiwara basera				Res.		28		MHADA	yes	0	5	0				bin comp				2021-10-10
2037	Green Park	Park paradise				Res.		44	12	MHADA	yes	0	12	2				bin comp	25/09/2021			2021-10-10
2038	Tarapore	The park (lotus)				Res.		42		MHADA		-	-	-								2021-10-10
2039	Tarapore	K.l walawalkar mcgm garden				Grdn				Others		-	-	-								2021-10-10
2040	Tarapore	Atlantis				Res.		22		Others	yes	30	3	2								2021-10-10
2041	Tarapore	Deep apartment				Res.		100		BWG	yes	0	10	0						28/09/2021	Zuber Menon	2021-10-10
2042	Tarapore	Harjanhans				Res.				Others	yes	0	5	0								2021-10-10
2043	Tarapore	Kohinoor i				Res.				Others		-	-	-								2021-10-10
2044	Tarapore	Kohinoor ii				Res.				Others		-	-									2021-10-10
2045	Tarapore	Shantivan mhada (7 bldg)				Res.		7x28		MHADA	yes	13	27	0					25/09/2021			2021-10-10
2046	Tarapore	Bmc garden ii				Grdn				Others		-	-	-								2021-10-10
2047	Tarapore	Rims international school 				Scl				Others	yes	0	4	0								2021-10-10
2048	Tarapore	Samartha deep				Res.		160		BWG		-	-	-					-	-	-	2021-10-10
2049	Tarapore	Samartha ashish				Res.		74		Others		-	-	-								2021-10-10
2050	Tarapore	Aakash				Res.		28		MHADA	yes	0	15	0				bin comp	26/09/2021			2021-10-10
2051	Tarapore	Eden garden no.22				Res.		32		MHADA	yes	0	10	0				bin comp	18/09/2021			2021-10-10
2052	Tarapore	Samartha aangan				Res.		330		After 2007 (BWG)	yes	74	55	35								2021-10-10
2053	Tarapore	Gulmohar				Res.		32		MHADA	yes	0	14	0								2021-10-10
2054	Tarapore	Mayfair no.20				Res.		32	6	MHADA	yes	0	15	0				bin comp	18/09/2021			2021-10-10
2055	Tarapore	Indra darshan l				Res.		264		BWG		--	-	-				Out source	-		-	2021-10-10
2056	Tarapore	Indra darshan ll				Res.		330		BWG		--	-	-				Out source	-	-	-	2021-10-10
2057	Tarapore	Tarapore garden no. 1,2,3				Res.		294		BWG	yes	0	55	0						18/09/2021	Sanjeev Sharma\n9920304152	2021-10-10
2058	Tarapore	Tarapore tower				Res.		269		BWG		-	-	-				Out source	-	18/09/2021	Arun poddar\n9920720066	2021-10-10
2059	Tarapore	Samartha vaibhav				Com		103	20	Others	yes	0	25	0								2021-10-10
2060	Azad Nagar Petrol Pump	Tulip no.6				Res.		37	2	MHADA	yes	20	11	0				Bin comp				2021-10-10
2061	Azad Nagar Petrol Pump	Aster no.5				Res.		34		MHADA	yes	0	12	0				Bin comp				2021-10-10
2062	Azad Nagar Petrol Pump	Kasturi				Res.		32		Others		-	-	-								2021-10-10
2063	Jbcn School Lane	Blue bell no.8				Res.		34	4	MHADA	yes	32	30	0								2021-10-10
2064	Jbcn School Lane	Avalon no7				Res.		30		MHADA	yes	0	20	0								2021-10-10
2065	Jbcn School Lane	(jbcn) international school				Scl				Others	yes	0	25	0								2021-10-10
2066	Jbcn School Lane	Daffodils no.10				Res.		32		MHADA	yes	70	8	0								2021-10-10
2067	Jbcn School Lane	Indus no.9				Res.		32		MHADA	yes	10	0	0								2021-10-10
2068	Oshiwara Garden	Maheshwari hall				Com				Others		-	-	-								2021-10-10
2069	Oshiwara Garden	Suriyakiran no.19				Res.		32	6	MHADA	yes		0					bin comp	18/09/2021			2021-10-10
2070	Oshiwara Garden	Amity no.18				Res.		32		MHADA	yes		0					bin comp	18/09/2021			2021-10-10
2071	Oshiwara Garden	Oshiwara mhada garden				Grdn				After 2007 (BWG)	yes		0					bin comp	18/09/2021			2021-10-10
2072	Oshiwara Garden	Green view no.17				Res.		32		MHADA	yes		0					bin comp	18/09/2021			2021-10-10
2073	Oshiwara Garden	Hima sai no.16				Res.		32		MHADA	yes		4					bin comp	18/09/2021			2021-10-10
2074	Oshiwara Garden	Raja rani malhotra vidyalaya				Scl		40		Others		0	0	0								2021-10-10
2075	Oshiwara Garden	Hvps education complex				Clg				Others	yes	0	30	0								2021-10-10
2076	Oshiwara Garden	Goenka international school				Scl			22	Others		-	-	-								2021-10-10
2077	Oshiwara Garden	Marble school				Scl			22	Others	yes	0	8	0								2021-10-10
2078	Oshiwara Garden	Goverment of india building				Res.		30		Others	yes	0	44	0								2021-10-10
2079	Oshiwara Garden	Sanskar no.15				Res.		28		MHADA	yes	21	12	2					-	-	-	2021-10-10
2080	Bmc Road	Aradhana sra				Res.		286	25	Others	yes	140	0						-	-	-	2021-10-10
2081	Bmc Road	Annapoorna chs				Res.				Others	yes	60	8						-	-	-	2021-10-10
2082	Bmc Road	Godavari no1				Res.		40		MHADA	yes	0	35	5				Bin comp	02/10/2021			2021-10-10
2083	Bmc Road	Krishna no 2				Res.		40		MHADA	yes	0						Bin comp	02/10/2021			2021-10-10
2084	Bmc Road	Narmadha no 3				Res.		40		MHADA	yes	0						Bin comp	02/10/2021			2021-10-10
2085	Bmc Road	Kaveri no 4				Res.		40		MHADA	yes	0	0					Bin comp	02/10/2021			2021-10-10
2086	Bmc Road	Panchvati no 5				Res.		40		MHADA	yes	0	0					Bin comp	02/10/2021			2021-10-10
2087	Bmc Road	Saptha shrungi no 6				Res.		40		MHADA	yes	0	0					Bin comp				2021-10-10
2088	Bmc Road	Sai siddhii no 7				Res.		40		MHADA	yes	0	42					Bin comp				2021-10-10
2089	Bmc Road	Serenity shree sai wings adef chs				Res.		72		BWG	yes	40		10						18/09/2021	Nandkishore Ghag\n9821394023	2021-10-10
2090	Bmc Road	Serenity shree sai wings b1,b2 chs				Res.				BWG	yes		45							18/09/2021	Vare (Mang)\n9699720927	2021-10-10
2091	Bmc Road	Serenity shree sai wings ghi chs				Res.		84		BWG	yes		5							18/09/2021	Suryanarayan Chube \n9702021707	2021-10-10
2092	Bmc Road	City international school				Scl				Others		0	0	0								2021-10-10
2093	Heera Panna Road	Jay ambe				Res.				Others	no	0	0	0								2021-10-10
2094	Heera Panna Road	Sumukh heights				Res.		42		Others	no	0	0	0								2021-10-10
2095	Heera Panna Road	Sai leela(sra)				Res.				Others		-	-	-								2021-10-10
2096	Heera Panna Road	Aanand seva samity				Res.		102	11	BWG /SRA	yes	0	48	0						27/09/2021	Mansoor Ali Khan\n9022887279	2021-10-10
2097	Heera Panna Road	Reliable business centre				Com			11	After 2007 (BWG)		-	-	-						27/09/2021	Shakeel Shaik\n9821326518	2021-10-10
2098	Heera Panna Road	Om heera panna premises				Com			290	BWG	yes	0	35	0					27/09/2021	27/09/2021	Kisanlal Hans\n9892408602	2021-10-10
2099	Heera Panna Road	Oshiwara link plaza				Com			199	Others	yes	0	30	0								2021-10-10
2100	Heera Panna Road	Oshiwara yashodeep 				Res.		60		BWG /SRA	yes	0	15	2					-	18/09/2021	Ishwar  Hubale\n9870473923	2021-10-10
2101	Heera Panna Road	(sbi) officers quatres 35				Res.		90		MHADA	yes	0	8	2				comp.				2021-10-10
2102	Heera Panna Road	Godavari 								MHADA	yes	190	12	4				Bin comp				2021-10-10
2103	Heera Panna Road	Yamuna 38				Res.		55	12	MHADA	yes		14					Bin comp				2021-10-10
2104	Heera Panna Road	Kaveri no41				Res.				MHADA	yes		0					Bin comp				2021-10-10
2105	Heera Panna Road	Mhada sargam no40				Res.		88	4	MHADA	yes		0					Bin comp				2021-10-10
2106	Heera Panna Road	Sebi gaurur				Res.		30		Others	yes	0	28					Bin comp				2021-10-10
2107	Heera Panna Road	Gujarat bhavan				Res.		28		Others	yes	0	20	0				Bin comp				2021-10-10
2108	Heera Panna Road	Tata communication residential colony				Res.		105		MHADA	yes	0	0	0				comp bin				2021-10-10
2109	Heera Panna Road	Andhra bank quartres				Res.		62		MHADA	yes	0	0	20				comp bin				2021-10-10
2110	Heera Panna Road	Bmc garden i				Grdn				Others	yes	35	0	0								2021-10-10
2111	Oshiwara Mahada New Link Road	Marigold no. 1				Res.		34		MHADA	yes	0	20	0				Bin comp				2021-10-10
2112	Oshiwara Mahada New Link Road	Anuksa no.2				Res.		34		MHADA	yes	0	15	0				Bin comp				2021-10-10
2113	Oshiwara Mahada New Link Road	Aroma no.3				Res.		34		MHADA	yes	0	7	0				Bin comp				2021-10-10
2114	Oshiwara Mahada New Link Road	Sunshine no.4				Res.		34		MHADA	yes	0	5	0				Bin comp				2021-10-10
2115	Oshiwara Mahada New Link Road	Starship no.11				Res.		28		MHADA	yes	0	30	0				Bin comp	18/09/2021			2021-10-10
2116	Oshiwara Mahada New Link Road	Lotus no.12				Res.		32		MHADA	yes	0	12	0				Bin comp	18/09/2021			2021-10-10
2117	Oshiwara Mahada New Link Road	Utsav no.13				Res.		32		MHADA	yes	0	10	0				comp bin  returned				2021-10-10
2118	Oshiwara Mahada New Link Road	Rajanigandha no.14				Res.		32		MHADA	yes	0	8	0				Bin comp	18/09/2021			2021-10-10
2119	Oshiwara Mahada New Link Road	Income tax officers no.24				Res.		34		MHADA	yes	0	7	0								2021-10-10
2120	Oshiwara Mahada New Link Road	Link way no.25				Res.		34		MHADA		0	0	0								2021-10-10
2121	Oshiwara Mahada New Link Road	Central excise res.iety no.26				Res.		32		MHADA	yes	35	24	0								2021-10-10
2122	Oshiwara Mahada New Link Road	Central excise res.iety no.27				Res.		32		MHADA	yes	32	10	0								2021-10-10
2123	Oshiwara Mahada New Link Road	Oshiwara police chowki				Com				Others		-	-	-								2021-10-10
2124	Oshiwara Mahada New Link Road	State bank india 				Com			1	Others		-	-	-								2021-10-10
2125	Oshiwara Mahada New Link Road	Matru chayya				Res.		32		MHADA	yes	0	0	0				Bin comp				2021-10-10
2126	Oshiwara Mahada New Link Road	Ekdant society				Res.		34		MHADA	yes	0	9	2				Bin comp				2021-10-10
2127	Oshiwara Mahada New Link Road	Parth no.43				Res.		32		MHADA	yes	0	0	2.5				Bin comp				2021-10-10
2128	Oshiwara Mahada New Link Road	Fakir wadi (t.camp)				Res.				Others	yes	120	0	0								2021-10-10
2129	Behram  Baug	Shakti seva sangh				Res.		91	14	BWG/SRA	no	0	0	0								2021-10-11
2130	Behram  Baug	Ujala nagar sra				Res.		116	21	After 2007 (BWG/SRA)	no	0	0	0								2021-10-11
2131	Behram  Baug	Patel sra				Res.				Others	no	-	-	-								2021-10-11
2132	Behram  Baug	Sakirabi				Res.		114	16	After 2007 (BWG/SRA)	no	-	-	-								2021-10-11
2133	Behram  Baug	Parsi colony				Res.		13x28		Others	yes	0	55	0								2021-10-11
2134	Behram  Baug	Shama chs				Res.				Others	no		0	0								2021-10-11
2135	Behram  Baug	Anupa public high scl				Scl				Others		-	-	-								2021-10-11
2136	Behram  Baug	Sarvodhaya sra				Res.				BWG	no	0	0	0					03/10/2021			2021-10-11
2137	Behram  Baug	Range heights				Com				After 2007 (BWG)	no	0	0	0								2021-10-11
2138	Behram  Baug	Santosh nagar sra				Res.				BWG	no	0	0	0						28/09/2021	Amersen Yadav\n9867974333	2021-10-11
2139	Behram  Baug	Green palace				Res.				Others	no	0	0	0								2021-10-11
2140	Roshan Nagar	Millienium court				Res.		80	1	BWG	yes	0	15	0						27/09/2021	Nitinn Ranga\n9821337126	2021-10-11
2141	Roshan Nagar	Evershine green				Res.		206	14	BWG	yes	20	55	15						18/09/2021	Rohit Sharma (chr)\n9819309474	2021-10-11
2142	Roshan Nagar	Raigad military school\nCom-bldg				Com		32		BWG	no	0	0	0								2021-10-11
2143	Roshan Nagar	Raigad military school				Scl		32		Others	no	0	0	0								2021-10-11
2144	Roshan Nagar	Mariyam public high school				Scl			16	Others	no	0	0	0								2021-10-11
2145	Roshan Nagar	Belvedere spring school				Scl				Others	no	0	0	0								2021-10-11
2146	Roshan Nagar	Level resident				Res.				Others		-	-	-				-				2021-10-11
2147	Roshan Nagar	Oshiwara akash ganga				Res.		28		Others	yes	25	10	0								2021-10-11
2148	Roshan Nagar	Oshwara vishal				Res.		28		Others	yes	21	8	0								2021-10-11
2149	Roshan Nagar	Oshiwara sahyadri				Res.		56		Others	yes	0	5	0								2021-10-11
2150	Roshan Nagar	Oshiwara girnar				Res.		56		Others	yes	0	15	0								2021-10-11
2151	Roshan Nagar	Johig				Res.		28		Others	yes	35	5	0								2021-10-11
2152	Roshan Nagar	Oshiwara ravikiran				Res.		28		Others	yes	15	5	0								2021-10-11
2153	Roshan Nagar	Oshiwara satpuda				Res.		56		Others	yes	60	9	0								2021-10-11
2154	Roshan Nagar	Green daimond				Res.		40		After 2007 (BWG)	yes	0	10	0						27/09/2021	Sameer Shaik(sup)\n9920048273	2021-10-11
2155	Roshan Nagar	Jogeshwari ganesh niwas				Res.		80		BWG/SRA	yes	70	20	0						27/09/2021	Bhagwan Jadhav\n9821800369	2021-10-11
2156	Roshan Nagar	Roshan nagar b1				Res.		52	12	After 2007 (BWG/SRA)	yes	110	25	0						27/09/2021	Ashok Dongre\n9833455170	2021-10-11
2157	Roshan Nagar	Roshan nagar b2				Res.		82	13	After 2007 (BWG/SRA)	yes			0						27/09/2021	Alim Khan\n8879313127	2021-10-11
2158	Roshan Nagar	Lashkaria empress				Res.		56	6	After 2007 (BWG/SRA)	yes	0	15	0						21/09/2021	Sameer Shaik\n9920048273	2021-10-11
2159	Roshan Nagar	Oriental education 				Clg		0		Others	no	-	-	-								2021-10-11
2160	Roshan Nagar	Green heights (lashkaria)				Res.		0		BWG	no	-	-	-						21/09/2021	Aslam Lashkaria\n9820990707	2021-10-11
2161	Roshan Nagar	Sree sai lila (sra)				Res.		56		BWG	no	-	-	-								2021-10-11
2162	Roshan Nagar	Shivspruthi bldg no.1 				Res.				BWG	yes	75	27	0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-11
2163	Roshan Nagar	Shivspruthi bldg no.2 				Res.		88		BWG /SRA	yes	65		0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-11
2164	Anand Nagar	Techweb centre				Com				Others	yes	0	55	0								2021-10-11
2165	Anand Nagar	Daimond /pearl				Res.		18	2	Others	yes	20	15	0								2021-10-11
2166	Anand Nagar	Vijay vishal				Res.		78		BWG	yes	5	23	2						20/09/2021	Chandrakant Kale\n9969003025	2021-10-11
2167	Anand Nagar	Spice tower				Com			16	Others	no	0	0	0								2021-10-11
2168	Anand Nagar	Sandipani shikshak oshiwara				Res.		91	28	After 2007 (BWG)	no	0	0	0						20/09/2021	Rammani C. Dube\n9702334382	2021-10-11
2169	Anand Nagar	Vaibhav palace				Res.		48	28	Others	no	0	66	2								2021-10-11
2170	Mega Mall	Assistant commissioner police oshiwara division mumbai				Com					no	0	0	0								2021-10-11
2171	Mega Mall	Jay ambe				Res.		100		BWG	yes	0	0	0						28/09/2021	Amar Pal\n9920612050	2021-10-11
2172	Mega Mall	Mahataranga				Res.		52	4	Others	no	45	0	1								2021-10-11
2173	Mega Mall	Swati apartment				Res.		28	7	Others	yes	47	0	1								2021-10-11
2174	Mega Mall	1 bhk				Com				Others	no	-	-	-					-			2021-10-11
2175	Mega Mall	Meera tower				Res.		100	28	BWG	yes	0	0	0				out source			A.K.Singh (Mang)\n9930317315	2021-10-11
2176	Green Park	East side no.28				Res.		32		MHADA	yes	0	11	0				bin comp	24/09/2021			2021-10-11
2177	Green Park	Samruddhi no.29				Res.		32		MHADA	yes	0	12	0				bin comp				2021-10-11
2178	Green Park	Anand vihar				Res.		42		MHADA	yes	0	10	0				-	24/09/2021			2021-10-11
2179	Green Park	Oshiwara basera				Res.		28		MHADA	yes	0	5	0				bin comp				2021-10-11
2180	Green Park	Park paradise				Res.		44	12	MHADA	yes	0	12	0				bin comp	25/09/2021			2021-10-11
2181	Tarapore	The park (lotus)				Res.		42		MHADA		-	-	-								2021-10-11
2182	Tarapore	K.l walawalkar mcgm garden				Grdn				Others	no	-	-	-								2021-10-11
2183	Tarapore	Atlantis				Res.		22		Others	yes	0	3	0								2021-10-11
2184	Tarapore	Deep apartment				Res.		100		BWG	yes	0	10	0						28/09/2021	Zuber Menon	2021-10-11
2185	Tarapore	Harjanhans				Res.				Others	yes	0	5	0								2021-10-11
2186	Tarapore	Kohinoor i				Res.				Others	no	0	0	0								2021-10-11
2187	Tarapore	Kohinoor ii				Res.				Others	yes	0	10	0								2021-10-11
2188	Tarapore	Shantivan mhada (7 bldg)				Res.		7x28		MHADA	yes	190	27	0					25/09/2021			2021-10-11
2189	Tarapore	Bmc garden ii				Grdn				Others		-	-	-								2021-10-11
2190	Tarapore	Rims international school 				Scl				Others	yes	0	4	0								2021-10-11
2191	Tarapore	Samartha deep				Res.		160		BWG		-	-	-				Out Source	-	-	-	2021-10-11
2192	Tarapore	Samartha ashish				Res.		74		Others	no	0	0	0								2021-10-11
2193	Tarapore	Aakash				Res.		28		MHADA	yes	0	15	0				bin comp	26/09/2021			2021-10-11
2194	Tarapore	Eden garden no.22				Res.		32		MHADA	yes	0	10	0				bin comp	18/09/2021			2021-10-11
2195	Tarapore	Samartha aangan				Res.		330		After 2007 (BWG)	yes	150	55	15								2021-10-11
2196	Tarapore	Gulmohar				Res.		32		MHADA	yes	0	14	0								2021-10-11
2197	Tarapore	Mayfair no.20				Res.		32	6	MHADA	no	0	15	0				bin comp	18/09/2021			2021-10-11
2198	Tarapore	Indra darshan l				Res.		264		BWG		-	-	-				Out source	-		-	2021-10-11
2199	Tarapore	Indra darshan ll				Res.		330		BWG		-	-	-				Out source	-	-	-	2021-10-11
2200	Tarapore	Tarapore garden no. 1,2,3				Res.		294		BWG	yes	0	55	0				OWC		18/09/2021	Sanjeev Sharma\n9920304152	2021-10-11
2201	Tarapore	Tarapore tower				Res.		269		BWG		0	0	0				Out source	-	18/09/2021	Arun poddar\n9920720066	2021-10-11
2202	Tarapore	Samartha vaibhav				Com		103	20	Others	yes	0	25	0								2021-10-11
2203	Azad Nagar Petrol Pump	Tulip no.6				Res.		37	2	MHADA	yes		11					Bin comp				2021-10-11
2204	Azad Nagar Petrol Pump	Aster no.5				Res.		34		MHADA	yes	0	12					Bin comp				2021-10-11
2205	Jbcn School Lane	Blue bell no.8				Res.		34	4	MHADA	yes	0	20	0				Bin comp				2021-10-11
2206	Jbcn School Lane	Avalon no7				Res.		30		MHADA	yes	45	30									2021-10-11
2207	Jbcn School Lane	(jbcn) international school				Scl				Others	yes	0	0	0								2021-10-11
2208	Jbcn School Lane	Daffodils no.10				Res.		32		MHADA	yes	15	25	0								2021-10-11
2209	Jbcn School Lane	Indus no.9				Res.		32		MHADA	yes		8									2021-10-11
2210	Oshiwara Garden	Maheshwari hall				Com				Others	yes	0	0	0								2021-10-11
2211	Oshiwara Garden	Suriyakiran no.19				Res.		32	6	MHADA	yes	0	0	0				bin comp	18/09/2021			2021-10-11
2212	Oshiwara Garden	Amity no.18				Res.		32		MHADA	yes	0	0	0				bin comp	18/09/2021			2021-10-11
2213	Oshiwara Garden	Oshiwara mhada garden				Grdn				After 2007 (BWG)	yes	0	0	0				bin comp	18/09/2021			2021-10-11
2214	Oshiwara Garden	Green view no.17				Res.		32		MHADA	yes	1	0	1				bin comp	18/09/2021			2021-10-11
2215	Oshiwara Garden	Hima sai no.16				Res.		32		MHADA	yes	5	0	1				bin comp	18/09/2021			2021-10-11
2216	Oshiwara Garden	Raja rani malhotra vidyalaya				Scl		40		Others	yes	0	4	0								2021-10-11
2217	Oshiwara Garden	Hvps education complex				Clg				Others	yes	90	0	0								2021-10-11
2218	Oshiwara Garden	Goenka international school				Scl			22	Others	yes	0	30	0								2021-10-11
2219	Oshiwara Garden	Marble school				Scl			22	Others	yes	0	0	0								2021-10-11
2220	Oshiwara Garden	Goverment of india building				Res.		30		Others	yes	0	8	0								2021-10-11
2221	Oshiwara Garden	Sanskar no.15				Res.		28		MHADA	yes	15	44	1					-	-	-	2021-10-11
2222	Bmc Road	Aradhana sra				Res.		286	25	BWG	yes	280	0	0					-	-	-	2021-10-11
2223	Bmc Road	Annapoorna chs				Res.				Others	yes	25	0	0					-	-	-	2021-10-11
2224	Bmc Road	Godavari no1				Res.		40		MHADA	yes	0	8	0				Bin comp	02/10/2021			2021-10-11
2225	Bmc Road	Krishna no 2				Res.		40		MHADA	yes		35	0				Bin comp	02/10/2021			2021-10-11
2226	Bmc Road	Narmadha no 3				Res.		40		MHADA	yes			0				Bin comp	02/10/2021			2021-10-11
2227	Bmc Road	Kaveri no 4				Res.		40		MHADA	yes			0				Bin comp	02/10/2021			2021-10-11
2228	Bmc Road	Panchvati no 5				Res.		40		MHADA	yes		0	0				Bin comp	02/10/2021			2021-10-11
2229	Bmc Road	Saptha shrungi no 6				Res.		40		MHADA	yes		0	0				Bin comp				2021-10-11
2230	Bmc Road	Sai siddhii no 7				Res.		40		MHADA	yes		0	0				Bin comp				2021-10-11
2231	Bmc Road	Serenity shree sai wings adef chs				Res.		72		BWG	yes	0	42	0						18/09/2021	Nandkishore Ghag\n9821394023	2021-10-11
2232	Bmc Road	Serenity shree sai wings b1,b2 chs				Res.				BWG	yes	0								18/09/2021	Vare (Mang)\n9699720927	2021-10-11
2233	Bmc Road	Serenity shree sai wings ghi chs				Res.		84		BWG	yes	0	45							18/09/2021	Suryanarayan Chube \n9702021707	2021-10-11
2234	Bmc Road	City international school				Scl				Others	yes	0	5	0								2021-10-11
2235	Heera Panna Road	Sumukh heights				Res.		42		Others	yes	0	0	0								2021-10-11
2236	Heera Panna Road	Sai leela(sra)				Res.				Others	yes	0	0	0								2021-10-11
2237	Heera Panna Road	Aanand seva samity				Res.		102	11	BWG /SRA	yes	0	0	0						27/09/2021	Mansoor Ali Khan\n9022887279	2021-10-11
2238	Heera Panna Road	Reliable business centre				Com			11	After 2007 (BWG)	no	0	0	0						27/09/2021	Shakeel Shaik\n9821326518	2021-10-11
2239	Heera Panna Road	Om heera panna premises				Com			290	BWG	yes	-	48	-					27/09/2021	27/09/2021	Kisanlal Hans\n9892408602	2021-10-11
2240	Heera Panna Road	Oshiwara link plaza				Com			199	Others	no	-	-	-								2021-10-11
2241	Heera Panna Road	Oshiwara yashodeep 				Res.		60		BWG /SRA	yes	0	35	3					-	18/09/2021	Ishwar  Hubale\n9870473923	2021-10-11
2242	Heera Panna Road	(sbi) officers quatres 35				Res.		90		MHADA	yes	0	30	1				comp.				2021-10-11
2243	Heera Panna Road	Godavari 								MHADA	yes	25	15	4				Bin comp				2021-10-11
2244	Heera Panna Road	Yamuna 38				Res.		55	12	MHADA	yes		8					Bin comp				2021-10-11
2245	Heera Panna Road	Kaveri no41				Res.				MHADA	yes		12					Bin comp				2021-10-11
2246	Heera Panna Road	Mhada sargam no40				Res.		88	4	MHADA	yes		14					Bin comp				2021-10-11
2247	Heera Panna Road	Sebi gaurur				Res.		30		Others	yes	0	0	0				Bin comp				2021-10-11
2248	Heera Panna Road	Gujarat bhavan				Res.		28		Others	yes	0	0	0				Bin comp				2021-10-11
2249	Heera Panna Road	Tata communication residential colony				Res.		105		MHADA	yes	0	28	2				comp bin				2021-10-11
2250	Heera Panna Road	Andhra bank quartres				Res.		62		MHADA	yes	0	20	1				comp bin				2021-10-11
2251	Heera Panna Road	Bmc garden i				Grdn				Others	yes	30	0	0								2021-10-11
2252	Oshiwara Mahada New Link Road	Marigold no. 1				Res.		34		MHADA	yes	0	20	0				Bin comp				2021-10-11
2253	Oshiwara Mahada New Link Road	Anuksa no.2				Res.		34		MHADA	yes	0	15	0				Bin comp				2021-10-11
2254	Oshiwara Mahada New Link Road	Aroma no.3				Res.		34		MHADA	yes	0	7	0				Bin comp				2021-10-11
2255	Oshiwara Mahada New Link Road	Sunshine no.4				Res.		34		MHADA	yes	0	5	0				Bin comp				2021-10-11
2256	Oshiwara Mahada New Link Road	Starship no.11				Res.		28		MHADA	yes	10	30	5				Bin comp	18/09/2021			2021-10-11
2257	Oshiwara Mahada New Link Road	Lotus no.12				Res.		32		MHADA	yes	0	12	0				Bin comp	18/09/2021			2021-10-11
2258	Oshiwara Mahada New Link Road	Utsav no.13				Res.		32		MHADA	yes	0	10	0				comp bin  returned				2021-10-11
2259	Oshiwara Mahada New Link Road	Rajanigandha no.14				Res.		32		MHADA	yes	0	8	10				Bin comp	18/09/2021			2021-10-11
2260	Oshiwara Mahada New Link Road	Income tax officers no.24				Res.		34		MHADA	yes	0	7	0				Bin comp				2021-10-11
2261	Oshiwara Mahada New Link Road	Link way no.25				Res.		34		MHADA	yes	0	0	0								2021-10-11
2262	Oshiwara Mahada New Link Road	Central excise res.iety no.26				Res.		32		MHADA	yes	30	24	0								2021-10-11
2263	Oshiwara Mahada New Link Road	Central excise res.iety no.27				Res.		32		MHADA	yes	34	10	0								2021-10-11
2264	Oshiwara Mahada New Link Road	Harshvardhan chamber										-	-	-								2021-10-11
2265	Oshiwara Mahada New Link Road	Oshiwara police chowki				Com				Others	no	-	-	-								2021-10-11
2266	Oshiwara Mahada New Link Road	State bank india 				Com			1	Others		-	-	-								2021-10-11
2267	Oshiwara Mahada New Link Road	Matru chayya				Res.		32		MHADA	yes	0	9	0				Bin comp				2021-10-11
2268	Oshiwara Mahada New Link Road	Ekdant society				Res.		34		MHADA	yes	15	0	0				Bin comp				2021-10-11
2269	Oshiwara Mahada New Link Road	Parth no.43				Res.		32		MHADA	yes	10	0	3				Bin comp				2021-10-11
2270	Oshiwara Mahada New Link Road	Fakir wadi (t.camp)				Res.				Others	no	75	0	0								2021-10-11
2271	Behram  Baug	Shakti seva sangh				Res.		91	14	BWG/SRA	no	-	0	-								2021-10-12
2272	Behram  Baug	Ujala nagar sra				Res.		116	21	After 2007 (BWG/SRA)	no	-	0	-								2021-10-12
2273	Behram  Baug	Patel sra				Res.				Others	no	-	0	-								2021-10-12
2274	Behram  Baug	Sakirabi				Res.		114	16	After 2007 (BWG/SRA)	no	-	0	-								2021-10-12
2275	Behram  Baug	Parsi colony				Res.		13x28		Others	yes	234	30									2021-10-12
2276	Behram  Baug	Shama chs				Res.				Others	no	-	0	-								2021-10-12
2277	Behram  Baug	Anupa public high scl				Scl				Others		-	-	-								2021-10-12
2278	Behram  Baug	Sarvodhaya sra				Res.				BWG	no	0	0	0					03/10/2021			2021-10-12
2279	Behram  Baug	Range heights				Com				After 2007 (BWG)	no	0	0	0								2021-10-12
2280	Behram  Baug	Santosh nagar sra				Res.				BWG	no	0	0	0						28/09/2021	Amersen Yadav\n9867974333	2021-10-12
2281	Behram  Baug	Green palace				Res.				Others	no	0	0	0								2021-10-12
2282	Roshan Nagar	Millenium court				Res.		80	1	BWG	yes	70	12	0						27/09/2021	Nitinn Ranga\n9821337126	2021-10-12
2283	Roshan Nagar	Evershine green				Res.		206	14	BWG	yes	10	25	0						18/09/2021	Rohit Sharma (chr)\n9819309474	2021-10-12
2284	Roshan Nagar	Raigad military school\nCom-bldg				Com		32		BWG	no		0	0								2021-10-12
2285	Roshan Nagar	Raigad military school				Scl		32		Others	no		0	0								2021-10-12
2286	Roshan Nagar	Mariyam public high school				Scl			16	Others	no		0	0								2021-10-12
2287	Roshan Nagar	Belvedere spring school				Scl				Others	no		0	0								2021-10-12
2288	Roshan Nagar	Level resident				Res.				Others	no		0	0								2021-10-12
2289	Roshan Nagar	Oshiwara akash ganga				Res.		28		Others	yes	40	5	-								2021-10-12
2290	Roshan Nagar	Oshwara vishal				Res.		28		Others	yes	30	15	-								2021-10-12
2291	Roshan Nagar	Oshiwara sahyadri				Res.		56		Others	yes	40	10	-								2021-10-12
2292	Roshan Nagar	Oshiwara girnar				Res.		56		Others	yes	80	5	-								2021-10-12
2293	Roshan Nagar	Johig				Res.		28		Others	yes	46	4	-								2021-10-12
2294	Roshan Nagar	Oshiwara ravikiran				Res.		28		Others	yes	45	3	-								2021-10-12
2295	Roshan Nagar	Oshiwara satpuda				Res.		56		Others	yes	30	15	-								2021-10-12
2296	Roshan Nagar	Green daimond				Res.		40		After 2007 (BWG)	yes	35	12	0						27/09/2021	Sameer Shaik(sup)\n9920048273	2021-10-12
2297	Roshan Nagar	Jogeshwari ganesh niwas				Res.		80		BWG/SRA	yes	0	10	0						27/09/2021	Bhagwan Jadhav\n9821800369	2021-10-12
2298	Roshan Nagar	Roshan nagar b1				Res.		52	12	After 2007 (BWG/SRA)	yes	35	5	0						27/09/2021	Ashok Dongre\n9833455170	2021-10-12
2299	Roshan Nagar	Roshan nagar b2				Res.		82	13	After 2007 (BWG/SRA)	yes	37		0						27/09/2021	Alim Khan\n8879313127	2021-10-12
2300	Roshan Nagar	Lashkaria empress				Res.		56	6	After 2007 (BWG/SRA)	no	0	0	0						21/09/2021	Sameer Shaik\n9920048273	2021-10-12
2301	Roshan Nagar	Oriental education 				Clg		0		Others	no	0	0	0								2021-10-12
2302	Roshan Nagar	Green heights (lashkaria)				Res.		0		BWG		-	-	-						21/09/2021	Aslam Lashkaria\n9820990707	2021-10-12
2303	Roshan Nagar	Sree sai lila (sra)				Res.		56		BWG	no		0									2021-10-12
2304	Roshan Nagar	Shivspruthi bldg no.1 				Res.				BWG	yes	40	5	0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-12
2305	Roshan Nagar	Shivspruthi bldg no.2 				Res.		88		BWG /SRA	yes	105		0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-12
2306	Anand Nagar	Techweb centre				Com				Others	yesyes	-	25	-								2021-10-12
2307	Anand Nagar	Daimond /pearl				Res.		18	2	Others	yes	10	10	-								2021-10-12
2308	Anand Nagar	Vijay vishal				Res.		78		BWG	yes	40	13	-						20/09/2021	Chandrakant Kale\n9969003025	2021-10-12
2309	Anand Nagar	Spice tower				Com			16	Others		0	0	-				out source				2021-10-12
2310	Anand Nagar	Sandipani shikshak oshiwara				Res.		91	28	After 2007 (BWG)	yes	-	0	-						20/09/2021	Rammani C. Dube\n9702334382	2021-10-12
2311	Anand Nagar	Vaibhav palace				Res.		48	28	Others	no	0	0	-								2021-10-12
2312	Mega Mall	Assistant commissioner police oshiwara division mumbai				Com					no	0	0	0								2021-10-12
2313	Mega Mall	Jay ambe				Res.		100		BWG	no	0	0	0						28/09/2021	Amar Pal\n9920612050	2021-10-12
2314	Mega Mall	Mahataranga				Res.		52	4	Others	no	0	0	0								2021-10-12
2315	Mega Mall	Swati apartment				Res.		28	7	Others	no	-	10	-								2021-10-12
2316	Mega Mall	1 bhk				Com				Others	no	-	0	-					-			2021-10-12
2317	Mega Mall	Meera tower				Res.		100	28	BWG		-	-	-				out source			A.K.Singh (Mang)\n9930317315	2021-10-12
2318	Green Park	East side no.28				Res.		32		MHADA	yes	0	12	4				bin comp	24/09/2021			2021-10-12
2319	Green Park	Samruddhi no.29				Res.		32		MHADA	yes	15	15	0				bin comp				2021-10-12
2320	Green Park	Anand vihar				Res.		42		MHADA	yes	15	10	0				-	24/09/2021			2021-10-12
2321	Green Park	Oshiwara basera				Res.		28		MHADA	yes	0	4	13				bin comp				2021-10-12
2322	Green Park	Park paradise				Res.		44	12	MHADA	yes	0	15	10				bin comp	25/09/2021			2021-10-12
2323	Tarapore	The park (lotus)				Res.		42		MHADA												2021-10-12
2324	Tarapore	K.l walawalkar mcgm garden				Grdn				Others	no	0	0	0								2021-10-12
2325	Tarapore	Atlantis				Res.		22		Others	yes	0	7	0								2021-10-12
2326	Tarapore	Deep apartment & tower				Res.		100		BWG	yes	0	17	0						28/09/2021	Zuber Menon	2021-10-12
2327	Tarapore	Harjanhans				Res.				Others	yes	0	10	0								2021-10-12
2328	Tarapore	Kohinoor i				Res.				Others	yes	0	5	0								2021-10-12
2329	Tarapore	Kohinoor ii				Res.				Others	yes	0	0	0								2021-10-12
2330	Tarapore	Shantivan mhada (7 bldg)				Res.		7x28		MHADA	yes	75	19	0					25/09/2021			2021-10-12
2331	Tarapore	Bmc garden ii				Grdn				Others	yes	0	0	0								2021-10-12
2332	Tarapore	Rims international school 				Scl				Others	no	0	0	0								2021-10-12
2333	Tarapore	Samartha deep				Res.		160		BWG		-	-	-				Out Source	-	-	-	2021-10-12
2334	Tarapore	Samartha ashish				Res.		74		Others		-	-	-								2021-10-12
2335	Tarapore	Aakash				Res.		28		MHADA	yes	0	12	0				bin comp	26/09/2021			2021-10-12
2336	Tarapore	Eden garden no.22				Res.		32		MHADA	yes	15	7	0				bin comp	18/09/2021			2021-10-12
2337	Tarapore	Samartha aangan				Res.		330		After 2007 (BWG)	yes	255	58	25								2021-10-12
2338	Tarapore	Gulmohar				Res.		32		MHADA	yes	55	12	0								2021-10-12
2339	Tarapore	Mayfair no.20				Res.		32	6	MHADA	yes	5	15	2				bin comp	18/09/2021			2021-10-12
2340	Tarapore	Indra darshan l				Res.		264		BWG		-	-	-				Out source	-		-	2021-10-12
2341	Tarapore	Indra darshan ll				Res.		330		BWG	yes	0	30	0					-	-	-	2021-10-12
2342	Tarapore	Tarapore garden no. 1,2,3				Res.		294		BWG	yes	0	65	0				OWC		18/09/2021	Sanjeev Sharma\n9920304152	2021-10-12
2343	Tarapore	Tarapore tower				Res.		269		BWG		-	-	-				Out source	-	18/09/2021	Arun poddar\n9920720066	2021-10-12
2344	Tarapore	Samartha vaibhav				Com		103	20	Others	yes	0	35	0								2021-10-12
2345	Azad Nagar Petrol Pump	Tulip no.6				Res.		37	2	MHADA		0	8	0				Bin comp				2021-10-12
2346	Azad Nagar Petrol Pump	Aster no.5				Res.		34		MHADA		7	5	2				Bin comp				2021-10-12
2347	Jbcn School Lane	Blue bell no.8				Res.		34	4	MHADA	yes	65	8	0				Bin comp				2021-10-12
2348	Jbcn School Lane	Avalon no7				Res.		30		MHADA	no	0	20	0								2021-10-12
2349	Jbcn School Lane	(jbcn) international school				Scl				Others	yes	-	15	-								2021-10-12
2350	Jbcn School Lane	Daffodils no.10				Res.		32		MHADA		25	15	0								2021-10-12
2351	Jbcn School Lane	Indus no.9				Res.		32		MHADA		70	8	0				Bin comp				2021-10-12
2352	Oshiwara Garden	Maheshwari hall				Com				Others		-	-	-								2021-10-12
2353	Oshiwara Garden	Suriyakiran no.19				Res.		32	6	MHADA	yes	22	12	2				bin comp	18/09/2021			2021-10-12
2354	Oshiwara Garden	Amity no.18				Res.		32		MHADA	yes	15	7	1				bin comp	18/09/2021			2021-10-12
2355	Oshiwara Garden	Oshiwara mhada garden				Grdn				After 2007 (BWG)	yes	0	2	0				bin comp	18/09/2021			2021-10-12
2356	Oshiwara Garden	Green view no.17				Res.		32		MHADA	yes	0	9	0				bin comp	18/09/2021			2021-10-12
2357	Oshiwara Garden	Hima sai no.16				Res.		32		MHADA	yes	3	6	1				 	18/09/2021			2021-10-12
2358	Oshiwara Garden	Raja rani malhotra vidyalaya				Scl		40		Others	yes	-	2	-								2021-10-12
2359	Oshiwara Garden	Hvps education complex				Clg				Others	yes	-	4	-								2021-10-12
2360	Oshiwara Garden	Goenka international school				Scl			22	Others	yes	-	3	-								2021-10-12
2361	Oshiwara Garden	Marble school				Scl			22	Others	yes	-	4	-								2021-10-12
2362	Oshiwara Garden	Goverment of india building				Res.		30		Others	yes	-	7	-								2021-10-12
2363	Oshiwara Garden	Sanskar no.15				Res.		28		MHADA	yes	30	15	2					-	-	-	2021-10-12
2364	Bmc Road	Aradhana sra				Res.		286	25	BWG	yes	315	20	3					-	-	-	2021-10-12
2365	Bmc Road	Annapoorna chs				Res.				Others	yes	45	30	0					-	-	-	2021-10-12
2366	Bmc Road	Godavari no1				Res.		40		MHADA	yes	6	30	0				Bin comp	02/10/2021			2021-10-12
2367	Bmc Road	Krishna no 2				Res.		40		MHADA	yes		30	0				Bin comp	02/10/2021			2021-10-12
2368	Bmc Road	Narmadha no 3				Res.		40		MHADA	yes			0				Bin comp	02/10/2021			2021-10-12
2369	Bmc Road	Kaveri no 4				Res.		40		MHADA	yes			0				Bin comp	02/10/2021			2021-10-12
2370	Bmc Road	Panchvati no 5				Res.		40		MHADA	yes		30	0				Bin comp	02/10/2021			2021-10-12
2371	Bmc Road	Saptha shrungi no 6				Res.		40		MHADA	yes			0				Bin comp				2021-10-12
2372	Bmc Road	Sai siddhii no 7				Res.		40		MHADA	yes			0				Bin comp				2021-10-12
2373	Bmc Road	Serenity shree sai wings adef chs				Res.		72		BWG	yes	90	20	25						18/09/2021	Nandkishore Ghag\n9821394023	2021-10-12
2374	Bmc Road	Serenity shree sai wings b1,b2 chs				Res.				BWG	yes									18/09/2021	Vare (Mang)\n9699720927	2021-10-12
2375	Bmc Road	Serenity shree sai wings ghi chs				Res.		84		BWG	yes		15							18/09/2021	Suryanarayan Chube \n9702021707	2021-10-12
2376	Bmc Road	City international school				Scl				Others	yes	-	4	-								2021-10-12
2377	Heera Panna Road	Sumukh heights				Res.		42		Others	yes	0	20	0								2021-10-12
2378	Heera Panna Road	Sai leela(sra)				Res.				Others	yes	0	0	0								2021-10-12
2379	Heera Panna Road	Aanand seva samity				Res.		102	11	BWG /SRA	yes	0	0	0						27/09/2021	Mansoor Ali Khan\n9022887279	2021-10-12
2380	Heera Panna Road	Reliable business centre				Com			11	After 2007 (BWG)	no	0	5	0						27/09/2021	Shakeel Shaik\n9821326518	2021-10-12
2381	Heera Panna Road	Om heera panna premises				Com			290	BWG	yes	-	60	-					27/09/2021	27/09/2021	Kisanlal Hans\n9892408602	2021-10-12
2382	Heera Panna Road	Oshiwara link plaza				Com			199	Others	no	-	-	-								2021-10-12
2383	Heera Panna Road	Oshiwara yashodeep 				Res.		60		BWG /SRA	yes	5	255	1				Bin comp	-	18/09/2021	Ishwar  Hubale\n9870473923	2021-10-12
2384	Heera Panna Road	(sbi) officers quatres 35				Res.		90		MHADA	yes	0	12	3				Bin comp				2021-10-12
2385	Heera Panna Road	Godavari 								MHADA	yes	0	8	4				Bin comp				2021-10-12
2386	Heera Panna Road	Yamuna 38				Res.		55	12	MHADA	yes		6					Bin comp				2021-10-12
2387	Heera Panna Road	Kaveri no41				Res.				MHADA	yes		8					Bin comp				2021-10-12
2388	Heera Panna Road	Mhada sargam no40				Res.		88	4	MHADA	yes		12					Bin comp				2021-10-12
2389	Heera Panna Road	Sebi gaurur				Res.		30		Others	yes	0	8	0				Bin comp				2021-10-12
2390	Heera Panna Road	Gujarat bhavan				Res.		28		Others	yes	0	12	0				Bin comp				2021-10-12
2391	Heera Panna Road	Tata communication residential colony				Res.		105		MHADA	yes	0	4	0				comp bin				2021-10-12
2392	Heera Panna Road	Andhra bank quartres				Res.		62		MHADA	yes	0	0	10				comp bin				2021-10-12
2393	Heera Panna Road	Bmc garden i				Grdn				Others		-	12	-								2021-10-12
2394	Oshiwara Mahada New Link Road	Marigold no. 1				Res.		34		MHADA	yes	0	8	0				Bin comp				2021-10-12
2395	Oshiwara Mahada New Link Road	Anuksa no.2				Res.		34		MHADA	yes	0	15	0				Bin comp				2021-10-12
2396	Oshiwara Mahada New Link Road	Aroma no.3				Res.		34		MHADA	yes	0	16	0				Bin comp				2021-10-12
2397	Oshiwara Mahada New Link Road	Sunshine no.4				Res.		34		MHADA	yes	0	15	0				Bin comp				2021-10-12
2398	Oshiwara Mahada New Link Road	Starship no.11				Res.		28		MHADA	no	0	0	0				Bin comp	18/09/2021			2021-10-12
2399	Oshiwara Mahada New Link Road	Lotus no.12				Res.		32		MHADA	yes	5	4	2				Bin comp	18/09/2021			2021-10-12
2400	Oshiwara Mahada New Link Road	Utsav no.13				Res.		32		MHADA	no	0	0	0				comp bin  returned				2021-10-12
2401	Oshiwara Mahada New Link Road	Rajanigandha no.14				Res.		32		MHADA	yes	0	9	5				Bin comp	18/09/2021			2021-10-12
2402	Oshiwara Mahada New Link Road	Income tax officers no.24				Res.		34		MHADA	yes	0	4	0				Bin comp	05.10.2021			2021-10-12
2403	Oshiwara Mahada New Link Road	Link way no.25				Res.		34		MHADA	yes	0	15	0				Bin comp				2021-10-12
2404	Oshiwara Mahada New Link Road	Central excise res.iety no.26				Res.		32		MHADA	yes	20	8	0								2021-10-12
2405	Oshiwara Mahada New Link Road	Central excise res.iety no.27				Res.		32		MHADA	yes	26	9	0								2021-10-12
2406	Oshiwara Mahada New Link Road	Harshvardhan chamber									yes	-	20	-								2021-10-12
2407	Oshiwara Mahada New Link Road	Oshiwara police chowki				Com				Others	no	-	-	-								2021-10-12
2408	Oshiwara Mahada New Link Road	State bank india 				Com			1	Others		-	-	-								2021-10-12
2409	Oshiwara Mahada New Link Road	Matru chayya				Res.		32		MHADA	yes	0	1	0				Bin comp				2021-10-12
2410	Oshiwara Mahada New Link Road	Ekdant society				Res.		34		MHADA	yes	0	9	0				Bin comp				2021-10-12
2411	Oshiwara Mahada New Link Road	Parth no.43				Res.		32		MHADA	yes	0	15	5				Bin comp				2021-10-12
2412	Oshiwara Mahada New Link Road	Fakir wadi (t.camp)				Res.				Others	no	401	0	0								2021-10-12
2413	Behram  Baug	Shakti seva sangh				Res.		91	14	BWG/SRA	no		0									2021-10-13
2414	Behram  Baug	Ujala nagar sra				Res.		116	21	After 2007 (BWG/SRA)	no		0									2021-10-13
2415	Behram  Baug	Patel sra				Res.				Others	no		0									2021-10-13
2416	Behram  Baug	Sakirabi				Res.		114	16	After 2007 (BWG/SRA)	no		0									2021-10-13
2417	Behram  Baug	Parsi colony				Res.		13x28		Others	yes	150	55	0								2021-10-13
2418	Behram  Baug	Shama chs				Res.				Others	no		0									2021-10-13
2419	Behram  Baug	Anupa public high scl				Scl				Others		-	-	-								2021-10-13
2420	Behram  Baug	Sarvodhaya sra				Res.				BWG	no		0						03/10/2021			2021-10-13
2421	Behram  Baug	Range heights				Com				After 2007 (BWG)	no		0									2021-10-13
2422	Behram  Baug	Santosh nagar sra				Res.				BWG	no		0							28/09/2021	Amersen Yadav\n9867974333	2021-10-13
2423	Behram  Baug	Green palace				Res.				Others	no		0									2021-10-13
2424	Roshan Nagar	Millenium court				Res.		80	1	BWG	no	5	0	0						27/09/2021	Nitinn Ranga\n9821337126	2021-10-13
2425	Roshan Nagar	Evershine green				Res.		206	14	BWG	no	10	0	20						18/09/2021	Rohit Sharma (chr)\n9819309474	2021-10-13
2426	Roshan Nagar	Raigad military school\nCom-bldg				Com		32		BWG	no		0									2021-10-13
2427	Roshan Nagar	Raigad military school				Scl		32		Others	no		0									2021-10-13
2428	Roshan Nagar	Mariyam public high school				Scl			16	Others	yes		0									2021-10-13
2429	Roshan Nagar	Belvedere spring school				Scl				Others	no		0									2021-10-13
2430	Roshan Nagar	Level resident				Res.				Others	-	-	-	-								2021-10-13
2431	Roshan Nagar	Oshiwara akash ganga				Res.		28		Others	yes	18	15	0								2021-10-13
2432	Roshan Nagar	Oshwara vishal				Res.		28		Others	yes	25	20	0								2021-10-13
2433	Roshan Nagar	Oshiwara sahyadri				Res.		56		Others	yes	50	25	0								2021-10-13
2434	Roshan Nagar	Oshiwara girnar				Res.		56		Others	yes	60	30	0								2021-10-13
2435	Roshan Nagar	Johig				Res.		28		Others	yes	35	8	0								2021-10-13
2436	Roshan Nagar	Oshiwara ravikiran				Res.		28		Others	yes	37	7	0								2021-10-13
2437	Roshan Nagar	Oshiwara satpuda				Res.		56		Others	yes	30	12	0								2021-10-13
2438	Roshan Nagar	Green daimond				Res.		40		After 2007 (BWG)	yes	60	18	0						27/09/2021	Sameer Shaik(sup)\n9920048273	2021-10-13
2439	Roshan Nagar	Jogeshwari ganesh niwas				Res.		80		BWG/SRA	yes	0	20	0						27/09/2021	Bhagwan Jadhav\n9821800369	2021-10-13
2440	Roshan Nagar	Roshan nagar b1				Res.		52	12	After 2007 (BWG/SRA)	yes	75	30	0						27/09/2021	Ashok Dongre\n9833455170	2021-10-13
2441	Roshan Nagar	Roshan nagar b2				Res.		82	13	After 2007 (BWG/SRA)	yes	80		0						27/09/2021	Alim Khan\n8879313127	2021-10-13
2442	Roshan Nagar	Lashkaria empress				Res.		56	6	After 2007 (BWG/SRA)		-	-	-				Out source		21/09/2021	Sameer Shaik\n9920048273	2021-10-13
2443	Roshan Nagar	Oriental education 				Clg		0		Others	yes	0	0	0								2021-10-13
2444	Roshan Nagar	Green heights (lashkaria)				Res.		0		BWG	yes	0	0	0						21/09/2021	Aslam Lashkaria\n9820990707	2021-10-13
2445	Roshan Nagar	Shree sai lila (sra)				Res.		56		BWG	no	0	0	0								2021-10-13
2446	Roshan Nagar	Shivspruthi bldg no.1 				Res.		88		BWG	yes	90	0	0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-13
2447	Roshan Nagar	Shivspruthi bldg no.2 				Res.				BWG /SRA	yes	47		0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-13
2448	Anand Nagar	Techweb centre				Com				Others	yes	0	65	0								2021-10-13
2449	Anand Nagar	Daimond /pearl				Res.		18	2	Others	yes	30	10	0								2021-10-13
2450	Anand Nagar	Vijay vishal				Res.		78		BWG	yes	20	18	0						20/09/2021	Chandrakant Kale\n9969003025	2021-10-13
2451	Anand Nagar	Spice tower				Com			16	Others		-	-	-				out source				2021-10-13
2452	Anand Nagar	Sandipani shikshak oshiwara				Res.		91	28	After 2007 (BWG)	yes	0	15	0						20/09/2021	Rammani C. Dube\n9702334382	2021-10-13
2453	Anand Nagar	Vaibhav palace				Res.		48	28	Others	no	0	10	1								2021-10-13
2454	Mega Mall	Assistant commissioner police oshiwara division mumbai				Com					yes	0	0	0								2021-10-13
2455	Mega Mall	Jay ambe				Res.		100		BWG	yes	0	0	0						28/09/2021	Amar Pal\n9920612050	2021-10-13
2456	Mega Mall	Mahataranga				Res.		52	4	Others	yes	51	0	0								2021-10-13
2457	Mega Mall	Swati apartment				Res.		28	7	Others	yes	40	8	0								2021-10-13
2458	Mega Mall	1 bhk				Com				Others	no	0	0	0					-			2021-10-13
2459	Mega Mall	Meera tower				Res.		100	28	BWG		-	-	-				out source			A.K.Singh (Mang)\n9930317315	2021-10-13
2460																						2021-10-13
2461		Green park																				2021-10-13
2462	Green Park	East side no.28				Res.		32		MHADA	yes	0	0	2				bin comp	24/09/2021			2021-10-13
2463	Green Park	Samruddhi no.29				Res.		32		MHADA	yes	0	10	0				bin comp				2021-10-13
2464	Green Park	Anand vihar				Res.		42		MHADA	yes	0	25	0				-	24/09/2021			2021-10-13
2465	Green Park	Oshiwara basera				Res.		28		MHADA	yes	0	12	4				bin comp				2021-10-13
2466	Green Park	Park paradise				Res.		44	12	MHADA	yes	0	12	1				bin comp	25/09/2021			2021-10-13
2467	Green Park	The park (lotus)				Res.		42		MHADA	no	0	0	0								2021-10-13
2468	Tarapore	K.l walawalkar mcgm garden				Grdn				Others	yes	0	0	0								2021-10-13
2470	Tarapore	Deep apartment & tower				Res.		100		BWG	yes	0	12	0						28/09/2021	Zuber Menon	2021-10-13
2471	Tarapore	Harjanhans				Res.				Others	yes	-	5	-								2021-10-13
2472	Tarapore	Kohinoor i				Res.				Others	yes	-	0	-								2021-10-13
2473	Tarapore	Kohinoor ii				Res.				Others	yes	-	10	-								2021-10-13
2474	Tarapore	Shantivan mhada (7 bldg)				Res.		7x28		MHADA	yes	130	20	-					25/09/2021			2021-10-13
2475	Tarapore	Bmc garden ii				Grdn				Others	yes	-	-	-								2021-10-13
2476	Tarapore	Rims international school 				Scl				Others	yes	-	-	-								2021-10-13
2477	Tarapore	Samartha deep				Res.		160		BWG		-	-	-				Out Source	-	-	-	2021-10-13
2478	Tarapore	Samartha ashish				Res.		74		Others	yes	0	0	0								2021-10-13
2479	Tarapore	Aakash				Res.		28		MHADA	yes	0	12	0				bin comp	26/09/2021			2021-10-13
2480	Tarapore	Eden garden no.22				Res.		32		MHADA	yes	0	10	0				bin comp	18/09/2021			2021-10-13
2481	Tarapore	Samartha aangan				Res.		330		After 2007 (BWG)	yes	380	75	25								2021-10-13
2482	Tarapore	Gulmohar				Res.		32		MHADA	yes	30	17	0								2021-10-13
2483	Tarapore	Mayfair no.20				Res.		32	6	MHADA	yes	0	15	0				bin comp	18/09/2021			2021-10-13
2484	Tarapore	Indra darshan l				Res.		264		BWG		-	-	-				Out source	-		-	2021-10-13
2485	Tarapore	Indra darshan ll				Res.		330		BWG		-	-	-				Out source	-	-	-	2021-10-13
2486	Tarapore	Tarapore garden no. 1,2,3				Res.		294		BWG	yes	0	75	13				OWC		18/09/2021	Sanjeev Sharma\n9920304152	2021-10-13
2487	Tarapore	Tarapore tower				Res.		269		BWG		-	-	-				Out source	-	18/09/2021	Arun poddar\n9920720066	2021-10-13
2488	Tarapore	Samartha vaibhav				Com		103	20	Others	yes	0	22	0								2021-10-13
2489	Azad Nagar Petrol Pump	Tulip no.6				Res.		37	2	MHADA	yes	0	18	0				Bin comp				2021-10-13
2490	Azad Nagar Petrol Pump	Aster no.5				Res.		34		MHADA	yes	0	-	1				Bin comp				2021-10-13
2491	Jbcn School Lane	Blue bell no.8				Res.		34	4	MHADA	no	0	8	-				Bin comp				2021-10-13
2492	Jbcn School Lane	Avalon no7				Res.		30		MHADA	yes	0	20	0								2021-10-13
2493	Jbcn School Lane	(jbcn) international school				Scl				Others	yes	0	15	0								2021-10-13
2494	Jbcn School Lane	Daffodils no.10				Res.		32		MHADA	yes	30	15	0								2021-10-13
2495	Jbcn School Lane	Indus no.9				Res.		32		MHADA	yes	0	5	0				Bin comp				2021-10-13
2496	Oshiwara Garden	Maheshwari hall				Com				Others	yes	0	0	0								2021-10-13
2497	Oshiwara Garden	Suriyakiran no.19				Res.		32	6	MHADA	yes	0	19	2				bin comp	18/09/2021			2021-10-13
2498	Oshiwara Garden	Amity no.18				Res.		32		MHADA	yes	0	15	0				bin comp	18/09/2021			2021-10-13
2499	Oshiwara Garden	Oshiwara mhada garden				Grdn				After 2007 (BWG)	yes	0	1	0				bin comp	18/09/2021			2021-10-13
2500	Oshiwara Garden	Green view no.17				Res.		32		MHADA	yes	0	10	0				bin comp	18/09/2021			2021-10-13
2501	Oshiwara Garden	Hima sai no.16				Res.		32		MHADA	yes	0	6	0				 	18/09/2021			2021-10-13
2502	Oshiwara Garden	Raja rani malhotra vidyalaya				Scl		40		Others	yes	0	2	0								2021-10-13
2503	Oshiwara Garden	Hvps education complex				Clg				Others	yes	0	0	0								2021-10-13
2504	Oshiwara Garden	Goenka international school				Scl			22	Others	yes	0	60	0								2021-10-13
2505	Oshiwara Garden	Marble school				Scl			22	Others	yes	0	0	0								2021-10-13
2506	Oshiwara Garden	Goverment of india building				Res.		30		Others	yes	0	5	0								2021-10-13
2507	Oshiwara Garden	Sanskar no.15				Res.		28		MHADA	yes	30	30	0					-	-	-	2021-10-13
2508	Bmc Road	Aradhana gurunanak sra				Res.		286	25	BWG	yes	339	40	0					-	-	-	2021-10-13
2509	Bmc Road	Annapoorna chs				Res.				Others	yes	45	12	0					-	-	-	2021-10-13
2510	Bmc Road	Godavari no1				Res.		40		MHADA	yes	0	12	0				Bin comp	02/10/2021			2021-10-13
2511	Bmc Road	Krishna no 2				Res.		40		MHADA	yes		30	0				Bin comp	02/10/2021			2021-10-13
2512	Bmc Road	Narmadha no 3				Res.		40		MHADA	yes			0				Bin comp	02/10/2021			2021-10-13
2513	Bmc Road	Kaveri no 4				Res.		40		MHADA	yes			0				Bin comp	02/10/2021			2021-10-13
2514	Bmc Road	Panchvati no 5				Res.		40		MHADA	yes		15	0				Bin comp	02/10/2021			2021-10-13
2515	Bmc Road	Saptha shrungi no 6				Res.		40		MHADA	yes			0				Bin comp				2021-10-13
2516	Bmc Road	Sai siddhii no 7				Res.		40		MHADA	yes			0				Bin comp				2021-10-13
2517	Bmc Road	Serenity shree sai wings adef chs				Res.		72		BWG	yes	80	25	0						18/09/2021	Nandkishore Ghag\n9821394023	2021-10-13
2518	Bmc Road	Serenity shree sai wings b1,b2 chs				Res.				BWG	yes									18/09/2021	Vare (Mang)\n9699720927	2021-10-13
2519	Bmc Road	Serenity shree sai wings ghi chs				Res.		84		BWG	yes		20							18/09/2021	Suryanarayan Chube \n9702021707	2021-10-13
2520	Bmc Road	City international school				Scl				Others	yes	0	2	0								2021-10-13
2521	Heera Panna Road	Sumukh heights				Res.		42		Others	yes	0	15	0								2021-10-13
2522	Heera Panna Road	Aanand seva samity				Res.		102	11	BWG /SRA	yes	0	0	0						27/09/2021	Mansoor Ali Khan\n9022887279	2021-10-13
2523	Heera Panna Road	Reliable business centre				Com			11	After 2007 (BWG)	yes	0	30	0						27/09/2021	Shakeel Shaik\n9821326518	2021-10-13
2524	Heera Panna Road	Om heera panna premises				Com			290	BWG	no	0	0	0					27/09/2021	27/09/2021	Kisanlal Hans\n9892408602	2021-10-13
2525	Heera Panna Road	Oshiwara link plaza				Com			199	Others	no	0	0	0								2021-10-13
2526	Heera Panna Road	Oshiwara yashodeep 				Res.		60		BWG /SRA	no	0	0	1				Bin comp	-	18/09/2021	Ishwar  Hubale\n9870473923	2021-10-13
2527	Heera Panna Road	(sbi) officers quatres 35				Res.		90		MHADA	yes	0	25	1				Bin comp				2021-10-13
2528	Heera Panna Road	Godavari 								MHADA	yes	0	5	3				Bin comp				2021-10-13
2529	Heera Panna Road	Yamuna 38				Res.		55	12	MHADA	yes		4					Bin comp				2021-10-13
2530	Heera Panna Road	Kaveri no41				Res.				MHADA	yes		8					Bin comp				2021-10-13
2531	Heera Panna Road	Mhada sargam no40				Res.		88	4	MHADA	yes		4					Bin comp				2021-10-13
2532	Heera Panna Road	Sebi gaurur				Res.		30		Others	yes	0	8	0				Bin comp				2021-10-13
2533	Heera Panna Road	Gujarat bhavan				Res.		28		Others	yes	0	12	0				Bin comp				2021-10-13
2534	Heera Panna Road	Tata communication residential colony				Res.		105		MHADA	yes	0	30	0				comp bin				2021-10-13
2535	Heera Panna Road	Andhra bank quartres				Res.		62		MHADA	yes	0	19	1				comp bin				2021-10-13
2536	Heera Panna Road	Bmc garden i				Grdn				Others	yes	0	9	0								2021-10-13
2537	Oshiwara Mahada New Link Road	Marigold no. 1				Res.		34		MHADA	yes	0	10	0				Bin comp				2021-10-13
2538	Oshiwara Mahada New Link Road	Anuksa no.2				Res.		34		MHADA	yes	0	2	0				Bin comp				2021-10-13
2539	Oshiwara Mahada New Link Road	Aroma no.3				Res.		34		MHADA	yes	0	5	0				Bin comp				2021-10-13
2540	Oshiwara Mahada New Link Road	Sunshine no.4				Res.		34		MHADA	yes	0	5	0				Bin comp				2021-10-13
2541	Oshiwara Mahada New Link Road	Starship no.11				Res.		28		MHADA	yes	0	30	0				Bin comp	18/09/2021			2021-10-13
2542	Oshiwara Mahada New Link Road	Lotus no.12				Res.		32		MHADA	yes	3	4	1				Bin comp	18/09/2021			2021-10-13
2543	Oshiwara Mahada New Link Road	Utsav no.13				Res.		32		MHADA	yes	0	2	1				comp bin  returned				2021-10-13
2544	Oshiwara Mahada New Link Road	Rajanigandha no.14				Res.		32		MHADA	yes	0	4	0				Bin comp	18/09/2021			2021-10-13
2545	Oshiwara Mahada New Link Road	Income tax officers no.24				Res.		34		MHADA	yes	50	5	13				Bin comp	05.10.2021			2021-10-13
2546	Oshiwara Mahada New Link Road	Link way no.25				Res.		34		MHADA	yes	3	15	1				Bin comp				2021-10-13
2547	Oshiwara Mahada New Link Road	Central excise res.iety no.26				Res.		32		MHADA	yes	40	4	0								2021-10-13
2548	Oshiwara Mahada New Link Road	Central excise res.iety no.27				Res.		32		MHADA	yes	47	10	0								2021-10-13
2549	Oshiwara Mahada New Link Road	Harshvardhan chamber									yes	0	2	0								2021-10-13
2550	Oshiwara Mahada New Link Road	Oshiwara police chowki				Com				Others	no	0	0	0								2021-10-13
2551	Oshiwara Mahada New Link Road	State bank india 				Com			1	Others		-	-	-								2021-10-13
2552	Oshiwara Mahada New Link Road	Matru chayya				Res.		32		MHADA	yes	1	7	1				Bin comp				2021-10-13
2553	Oshiwara Mahada New Link Road	Ekdant society				Res.		34		MHADA	yes	0	10	3				Bin comp				2021-10-13
2554	Oshiwara Mahada New Link Road	Parth no.43				Res.		32		MHADA	yes	0	15	0				Bin comp				2021-10-13
2555	Oshiwara Mahada New Link Road	Fakir wadi (t.camp)				Res.				Others	yes	180	27	0								2021-10-13
2556	Behram  Baug	Shakti seva sangh				Res.		91	14	BWG/SRA		-	0	-								2021-10-14
2557	Behram  Baug	Ujala nagar sra				Res.		116	21	After 2007 (BWG/SRA)		-	0	-								2021-10-14
2558	Behram  Baug	Patel sra				Res.				Others		-	0	-								2021-10-14
2559	Behram  Baug	Sakirabi				Res.		114	16	After 2007 (BWG/SRA)		-	0	-								2021-10-14
2560	Behram  Baug	Parsi colony				Res.		13x28		Others	yes	310	55	0								2021-10-14
2561	Behram  Baug	Shama chs				Res.				Others	yes	0	20	0								2021-10-14
2562	Behram  Baug	Anupa public high scl				Scl				Others		-	0	-								2021-10-14
2563	Behram  Baug	Sarvodhaya sra				Res.				BWG		-	0	-					03/10/2021			2021-10-14
2564	Behram  Baug	Range heights				Com				After 2007 (BWG)		-	0	-								2021-10-14
2565	Behram  Baug	Santosh nagar sra				Res.				BWG		-	0	-						28/09/2021	Amersen Yadav\n9867974333	2021-10-14
2566	Behram  Baug	Green palace				Res.				Others		-	-	-								2021-10-14
2567	Roshan Nagar	Millenium court				Res.		80	1	BWG	yes	20	15	0						27/09/2021	Nitinn Ranga\n9821337126	2021-10-14
2568	Roshan Nagar	Evershine green				Res.		206	14	BWG	yes	30	45	15						18/09/2021	Rohit Sharma (chr)\n9819309474	2021-10-14
2569	Roshan Nagar	Raigad military school\nCom-bldg				Com		32		BWG	yes	0	0	0								2021-10-14
2570	Roshan Nagar	Raigad military school				Scl		32		Others	yes	0	5	0								2021-10-14
2571	Roshan Nagar	Mariyam public high school				Scl			16	Others	yes	0	0	0								2021-10-14
2572	Roshan Nagar	Belvedere spring school				Scl				Others	yes	0	0	0								2021-10-14
2573	Roshan Nagar	Level resident				Res.				Others		-	-	-								2021-10-14
2574	Roshan Nagar	Oshiwara akash ganga				Res.		28		Others	yes	0	12	0								2021-10-14
2575	Roshan Nagar	Oshwara vishal				Res.		28		Others	yes	40	16									2021-10-14
2576	Roshan Nagar	Oshiwara sahyadri				Res.		56		Others	yes	15	8	0								2021-10-14
2577	Roshan Nagar	Oshiwara girnar				Res.		56		Others	yes	20	10	0								2021-10-14
2578	Roshan Nagar	Johig				Res.		28		Others	yes	10	0	0								2021-10-14
2579	Roshan Nagar	Oshiwara ravikiran				Res.		28		Others	yes	10	0	0								2021-10-14
2580	Roshan Nagar	Oshiwara satpuda				Res.		56		Others	yes	25	8	0								2021-10-14
2581	Roshan Nagar	Green daimond				Res.		40		After 2007 (BWG)	yes	0	25	0						27/09/2021	Sameer Shaik(sup)\n9920048273	2021-10-14
2582	Roshan Nagar	Jogeshwari ganesh niwas				Res.		80		BWG/SRA	yes	40	8	0						27/09/2021	Bhagwan Jadhav\n9821800369	2021-10-14
2583	Roshan Nagar	Roshan nagar b1				Res.		52	12	After 2007 (BWG/SRA)	yes	-	5	-						27/09/2021	Ashok Dongre\n9833455170	2021-10-14
2584	Roshan Nagar	Roshan nagar b2				Res.		82	13	After 2007 (BWG/SRA)	yes	-		-						27/09/2021	Alim Khan\n8879313127	2021-10-14
2585	Roshan Nagar	Lashkaria empress				Res.		56	6	After 2007 (BWG/SRA)	yes	-	0	-				Out source		21/09/2021	Sameer Shaik\n9920048273	2021-10-14
2586	Roshan Nagar	Oriental education 				Clg		0		Others		-	-	-								2021-10-14
2587	Roshan Nagar	Green heights (lashkaria)				Res.		0		BWG	yes	-	0	-						21/09/2021	Aslam Lashkaria\n9820990707	2021-10-14
2588	Roshan Nagar	Shree sai lila (sra)				Res.		56		BWG	yes	-	0	-								2021-10-14
2589	Roshan Nagar	Shivspruthi bldg no.1 				Res.		88		BWG	yes	50	5	0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-14
2590	Roshan Nagar	Shivspruthi bldg no.2 				Res.				BWG /SRA	yes	30		0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-14
2591	Anand Nagar	Techweb centre				Com				Others	yes	-	20	-								2021-10-14
2592	Anand Nagar	Daimond /pearl				Res.		18	2	Others	yes	20	18	5								2021-10-14
2593	Anand Nagar	Vijay vishal				Res.		78		BWG	yes	0	19	0						20/09/2021	Chandrakant Kale\n9969003025	2021-10-14
2594	Anand Nagar	Spice tower				Com			16	Others		-	-	-				out source				2021-10-14
2595	Anand Nagar	Sandipani shikshak oshiwara				Res.		91	28	After 2007 (BWG)	yes	-	0	-						20/09/2021	Rammani C. Dube\n9702334382	2021-10-14
2596	Anand Nagar	Vaibhav palace				Res.		48	28	Others	yes	-	5	-								2021-10-14
2597	Mega Mall	Assistant commissioner police oshiwara division mumbai				Com					yes	-	0	-								2021-10-14
2598	Mega Mall	Jay ambe				Res.		100		BWG	yes	0	0	0						28/09/2021	Amar Pal\n9920612050	2021-10-14
2599	Mega Mall	Mahataranga				Res.		52	4	Others	yes	0	0	0								2021-10-14
2600	Mega Mall	Swati apartment				Res.		28	7	Others	yes	40		1								2021-10-14
2601	Mega Mall	1 bhk				Com				Others		0	0	0					-			2021-10-14
2602	Mega Mall	Meera tower				Res.		100	28	BWG		-	-	-				out source			A.K.Singh (Mang)\n9930317315	2021-10-14
2603	Green Park	East side no.28				Res.		32		MHADA	yes	2	10	0				bin comp	24/09/2021			2021-10-14
2604	Green Park	Samruddhi no.29				Res.		32		MHADA	yes	0	19	0				bin comp				2021-10-14
2605	Green Park	Anand vihar				Res.		42		MHADA	yes	0	20	0				-	24/09/2021			2021-10-14
2606	Green Park	Oshiwara basera				Res.		28		MHADA	yes	0	4	0				bin comp				2021-10-14
2607	Green Park	Park paradise				Res.		44	12	MHADA	yes	0	20	2				bin comp	25/09/2021			2021-10-14
2608	Green Park	The park (lotus)				Res.		42		MHADA	yes	-	20	-								2021-10-14
2609	Tarapore	K.l walawalkar mcgm garden				Grdn				Others	yes	0	0	0								2021-10-14
2610	Tarapore	Atlantis				Res.		22		Others	yes	0	8	4								2021-10-14
2611	Tarapore	Deep apartment & tower				Res.		100		BWG		-	15	-						28/09/2021	Zuber Menon	2021-10-14
2612	Tarapore	Harjanhans				Res.				Others	yes	-	5	-								2021-10-14
2613	Tarapore	Kohinoor i				Res.				Others	yes	-	15	-								2021-10-14
2614	Tarapore	Kohinoor ii				Res.				Others	yes	-	15	-								2021-10-14
2615	Tarapore	Shantivan mhada (7 bldg)				Res.		7x28		MHADA	yes	150	15	5					25/09/2021			2021-10-14
2616	Tarapore	Bmc garden ii				Grdn				Others	yes	0	0	0								2021-10-14
2617	Tarapore	Rims international school 				Scl				Others	yes	0	0	0								2021-10-14
2618	Tarapore	Samartha deep				Res.		160		BWG	yes	-	0	-				Out Source	-	-	-	2021-10-14
2619	Tarapore	Samartha ashish				Res.		74		Others	yes	-	0	-								2021-10-14
2620	Tarapore	Aakash				Res.		28		MHADA	yes	0	12	0				bin comp	26/09/2021			2021-10-14
2621	Tarapore	Eden garden no.22				Res.		32		MHADA	yes	0	10	3				bin comp	18/09/2021			2021-10-14
2622	Tarapore	Samartha aangan				Res.		330		After 2007 (BWG)	yes	80	59	20								2021-10-14
2623	Tarapore	Gulmohar				Res.		32		MHADA	yes	80	25	0								2021-10-14
2624	Tarapore	Mayfair no.20				Res.		32	6	MHADA	yes	50	6	0				bin comp	18/09/2021			2021-10-14
2625	Tarapore	Indra darshan l				Res.		264		BWG		-	-	-				Out source	-		-	2021-10-14
2626	Tarapore	Indra darshan ll				Res.		330		BWG		-	-	-				Out source	-	-	-	2021-10-14
2627	Tarapore	Tarapore garden no. 1,2,3				Res.		294		BWG	yes	0	50	30				OWC		18/09/2021	Sanjeev Sharma\n9920304152	2021-10-14
2628	Tarapore	Tarapore tower				Res.		269		BWG		-	-	-				Out source	-	18/09/2021	Arun poddar\n9920720066	2021-10-14
2629	Tarapore	Samartha vaibhav				Com		103	20	Others	yes	-	45	-								2021-10-14
2630	Azad Nagar Petrol Pump	Tulip no.6				Res.		37	2	MHADA	yes	0	18	0				Bin comp				2021-10-14
2631	Azad Nagar Petrol Pump	Aster no.5				Res.		34		MHADA	yes	0	6	0				Bin comp				2021-10-14
2632	Jbcn School Lane	Blue bell no.8				Res.		34	4	MHADA	yes	0	0	0				Bin comp				2021-10-14
2633	Jbcn School Lane	Avalon no7				Res.		30		MHADA	yes	40	0									2021-10-14
2634	Jbcn School Lane	(jbcn) international school				Scl				Others	yes	0	0	0								2021-10-14
2635	Jbcn School Lane	Daffodils no.10				Res.		32		MHADA	yes	0	0	0								2021-10-14
2636	Jbcn School Lane	Indus no.9				Res.		32		MHADA	yes	20	0	0				Bin comp				2021-10-14
2637	Oshiwara Garden	Maheshwari hall				Com				Others		-	-	-								2021-10-14
2638	Oshiwara Garden	Suriyakiran no.19				Res.		32	6	MHADA	yes	0	0	0				bin comp	18/09/2021			2021-10-14
2639	Oshiwara Garden	Amity no.18				Res.		32		MHADA	yes	0	0	0				bin comp	18/09/2021			2021-10-14
2640	Oshiwara Garden	Oshiwara mhada garden				Grdn				After 2007 (BWG)	yes	0	0	0				bin comp	18/09/2021			2021-10-14
2641	Oshiwara Garden	Green view no.17				Res.		32		MHADA	yes	0	0	4				bin comp	18/09/2021			2021-10-14
2642	Oshiwara Garden	Hima sai no.16				Res.		32		MHADA	yes	0	0	2				 	18/09/2021			2021-10-14
2643	Oshiwara Garden	Raja rani malhotra vidyalaya				Scl		40		Others		0	0	0								2021-10-14
2644	Oshiwara Garden	Hvps education complex				Clg				Others		0	0	0								2021-10-14
2645	Oshiwara Garden	Goenka international school				Scl			22	Others		0	0	0								2021-10-14
2646	Oshiwara Garden	Marble school				Scl			22	Others		0	0	0								2021-10-14
2647	Oshiwara Garden	Goverment of india building				Res.		30		Others		-	-	-								2021-10-14
2648	Oshiwara Garden	Sanskar no.15				Res.		28		MHADA	yes	20	0	2					-	-	-	2021-10-14
2649	Bmc Road	Aradhana gurunanak sra				Res.		286	25	BWG	yes	400	0	0					-	-	-	2021-10-14
2650	Bmc Road	Annapoorna chs				Res.				Others	yes	0	0	0					-	-	-	2021-10-14
2651	Bmc Road	Godavari no1				Res.		40		MHADA	yes	0	0	0				Bin comp	02/10/2021			2021-10-14
2652	Bmc Road	Krishna no 2				Res.		40		MHADA	yes	-	-	-				Bin comp	02/10/2021			2021-10-14
2653	Bmc Road	Narmadha no 3				Res.		40		MHADA	yes	-	-	-				Bin comp	02/10/2021			2021-10-14
2654	Bmc Road	Kaveri no 4				Res.		40		MHADA	yes	-	-	-				Bin comp	02/10/2021			2021-10-14
2655	Bmc Road	Panchvati no 5				Res.		40		MHADA	yes	0	0	0				Bin comp	02/10/2021			2021-10-14
2656	Bmc Road	Saptha shrungi no 6				Res.		40		MHADA	yes	0	0	0				Bin comp				2021-10-14
2657	Bmc Road	Sai siddhii no 7				Res.		40		MHADA	yes	0	0	0				Bin comp				2021-10-14
2658	Bmc Road	Serenity shree sai wings adef chs				Res.		72		BWG	yes	80	0	35						18/09/2021	Nandkishore Ghag\n9821394023	2021-10-14
2659	Bmc Road	Serenity shree sai wings b1,b2 chs				Res.				BWG	yes									18/09/2021	Vare (Mang)\n9699720927	2021-10-14
2660	Bmc Road	Serenity shree sai wings ghi chs				Res.		84		BWG	yes		0							18/09/2021	Suryanarayan Chube \n9702021707	2021-10-14
2661	Bmc Road	City international school				Scl				Others		-	-	-								2021-10-14
2662	Heera Panna Road	Sumukh heights				Res.		42		Others		-	-	-								2021-10-14
2792	Bmc Road	Annapoorna chs				Res.				Others	yes	0	34	0					-	-	-	2021-10-15
2663	Heera Panna Road	Aanand seva samity				Res.		102	11	BWG /SRA		-	-	-						27/09/2021	Mansoor Ali Khan\n9022887279	2021-10-14
2664	Heera Panna Road	Reliable business centre				Com			11	After 2007 (BWG)		-	-	-						27/09/2021	Shakeel Shaik\n9821326518	2021-10-14
2665	Heera Panna Road	Om heera panna premises				Com			290	BWG		-	-	-					27/09/2021	27/09/2021	Kisanlal Hans\n9892408602	2021-10-14
2666	Heera Panna Road	Oshiwara link plaza				Com			199	Others		-	-	-								2021-10-14
2667	Heera Panna Road	Oshiwara yashodeep 				Res.		60		BWG /SRA	yes	6	0	4				Bin comp	-	18/09/2021	Ishwar  Hubale\n9870473923	2021-10-14
2668	Heera Panna Road	(sbi) officers quatres 35				Res.		90		MHADA	yes	0	0	3				Bin comp				2021-10-14
2669	Heera Panna Road	Godavari 								MHADA	yes	0	0	0				Bin comp				2021-10-14
2670	Heera Panna Road	Yamuna 38				Res.		55	12	MHADA	yes		0					Bin comp				2021-10-14
2671	Heera Panna Road	Kaveri no41				Res.				MHADA	yes		0					Bin comp				2021-10-14
2672	Heera Panna Road	Mhada sargam no40				Res.		88	4	MHADA	yes	0	0	4				Bin comp				2021-10-14
2673	Heera Panna Road	Sebi gaurur				Res.		30		Others	yes	-	-	-				Bin comp				2021-10-14
2674	Heera Panna Road	Gujarat bhavan				Res.		28		Others	yes	-	-	-				Bin comp				2021-10-14
2675	Heera Panna Road	Tata communication residential colony				Res.		105		MHADA	yes	0	0	10				comp bin				2021-10-14
2676	Heera Panna Road	Andhra bank quartres				Res.		62		MHADA	yes	10	0	0				comp bin				2021-10-14
2677	Heera Panna Road	Bmc garden i				Grdn				Others	yes	0	0	0								2021-10-14
2678	Oshiwara Mahada New Link Road	Marigold no. 1				Res.		34		MHADA	yes	0	0	0				Bin comp				2021-10-14
2679	Oshiwara Mahada New Link Road	Anuksa no.2				Res.		34		MHADA	yes	0	0	0				Bin comp				2021-10-14
2680	Oshiwara Mahada New Link Road	Aroma no.3				Res.		34		MHADA	yes	0	0	0				Bin comp				2021-10-14
2681	Oshiwara Mahada New Link Road	Sunshine no.4				Res.		34		MHADA	yes	0	0	0				Bin comp				2021-10-14
2682	Oshiwara Mahada New Link Road	Starship no.11				Res.		28		MHADA	yes	4	0	0				Bin comp	18/09/2021			2021-10-14
2683	Oshiwara Mahada New Link Road	Lotus no.12				Res.		32		MHADA	yes	0	0	2				Bin comp	18/09/2021			2021-10-14
2684	Oshiwara Mahada New Link Road	Utsav no.13				Res.		32		MHADA	yes	0	0	5				comp bin  returned				2021-10-14
2685	Oshiwara Mahada New Link Road	Rajanigandha no.14				Res.		32		MHADA	yes	0	0	0				Bin comp	18/09/2021			2021-10-14
2686	Oshiwara Mahada New Link Road	Income tax officers no.24				Res.		34		MHADA	yes	0	0	20				Bin comp	05.10.2021			2021-10-14
2687	Oshiwara Mahada New Link Road	Link way no.25				Res.		34		MHADA	yes	0	0	0				Bin comp				2021-10-14
2688	Oshiwara Mahada New Link Road	Central excise res.iety no.26				Res.		32		MHADA	yes	20	0	0								2021-10-14
2689	Oshiwara Mahada New Link Road	Central excise res.iety no.27				Res.		32		MHADA	yes	30	0	0								2021-10-14
2690	Oshiwara Mahada New Link Road	Harshvardhan chamber										-	-	-								2021-10-14
2691	Oshiwara Mahada New Link Road	Oshiwara police chowki				Com				Others		-	-	-								2021-10-14
2692	Oshiwara Mahada New Link Road	State bank india 				Com			1	Others												2021-10-14
2693	Oshiwara Mahada New Link Road	Matru chayya				Res.		32		MHADA	yes	0	0	4				Bin comp				2021-10-14
2694	Oshiwara Mahada New Link Road	Ekdant society				Res.		34		MHADA	yes	0	0	5				Bin comp				2021-10-14
2695	Oshiwara Mahada New Link Road	Parth no.43				Res.		32		MHADA	yes	0	0	0				Bin comp				2021-10-14
2696	Oshiwara Mahada New Link Road	Fakir wadi (t.camp)				Res.				Others	yes	0	0	0								2021-10-14
2697	Oshiwara Mahada New Link Road	Temple next to matruchaya									yes	60	0	0								2021-10-14
2698	Behram  Baug	Shakti seva sangh				Res.		91	14	BWG/SRA	no	-	-	-								2021-10-15
2699	Behram  Baug	Ujala nagar sra				Res.		116	21	After 2007 (BWG/SRA)	no	-	-	-								2021-10-15
2700	Behram  Baug	Patel sra				Res.				Others	no	-	-	-								2021-10-15
2701	Behram  Baug	Sakirabi				Res.		114	16	After 2007 (BWG/SRA)	no	-	-	-								2021-10-15
2702	Behram  Baug	Parsi colony				Res.		13x28		Others	yes	140	57	0								2021-10-15
2703	Behram  Baug	Shama chs				Res.				Others	no	-	-	-								2021-10-15
2704	Behram  Baug	Anupa public high scl				Scl				Others		-	-	-								2021-10-15
2705	Behram  Baug	Sarvodhaya sra				Res.				BWG	no	-	-	-					03/10/2021			2021-10-15
2706	Behram  Baug	Range heights				Com				After 2007 (BWG)	no	-	-	-								2021-10-15
2707	Behram  Baug	Santosh nagar sra				Res.				BWG	no	-	-	-						28/09/2021	Amersen Yadav\n9867974333	2021-10-15
2708	Behram  Baug	Green palace				Res.				Others	no	-	-	-								2021-10-15
2709	Roshan Nagar	Millenium court				Res.		80	1	BWG	yes	5	21	0						27/09/2021	Nitinn Ranga\n9821337126	2021-10-15
2710	Roshan Nagar	Evershine green				Res.		206	14	BWG	yes	2	37	5						18/09/2021	Rohit Sharma (chr)\n9819309474	2021-10-15
2711	Roshan Nagar	Raigad military school\nCom-bldg				Com		32		BWG	yes		5									2021-10-15
2712	Roshan Nagar	Raigad military school				Scl		32		Others	no		0									2021-10-15
2713	Roshan Nagar	Mariyam public high school				Scl			16	Others	yes		12									2021-10-15
2714	Roshan Nagar	Belvedere spring school				Scl				Others	no		0									2021-10-15
2715	Roshan Nagar	Level resident				Res.				Others		-	-	-								2021-10-15
2716	Roshan Nagar	Oshiwara akash ganga				Res.		28		Others	yes	33	16	0								2021-10-15
2717	Roshan Nagar	Oshwara vishal				Res.		28		Others	yes	36	22	0								2021-10-15
2718	Roshan Nagar	Oshiwara sahyadri				Res.		56		Others	no	0	19	0								2021-10-15
2719	Roshan Nagar	Oshiwara girnar				Res.		56		Others	yes	47	32	0								2021-10-15
2720	Roshan Nagar	Johig				Res.		28		Others	yes	17	8	0								2021-10-15
2721	Roshan Nagar	Oshiwara ravikiran				Res.		28		Others	yes	39	6	0								2021-10-15
2722	Roshan Nagar	Oshiwara satpuda				Res.		56		Others	yes	27	13	0								2021-10-15
2723	Roshan Nagar	Green daimond				Res.		40		After 2007 (BWG)	yes	0	15	0						27/09/2021	Sameer Shaik(sup)\n9920048273	2021-10-15
2724	Roshan Nagar	Jogeshwari ganesh niwas				Res.		80		BWG/SRA	yes	65	18	0						27/09/2021	Bhagwan Jadhav\n9821800369	2021-10-15
2725	Roshan Nagar	Roshan nagar b1				Res.		52	12	After 2007 (BWG/SRA)	yes	90	30	0						27/09/2021	Ashok Dongre\n9833455170	2021-10-15
2726	Roshan Nagar	Roshan nagar b2				Res.		82	13	yes		93		0						27/09/2021	Alim Khan\n8879313127	2021-10-15
2727	Roshan Nagar	Lashkaria empress				Res.		56	6	After 2007 (BWG/SRA)		-	-	-				Out source		21/09/2021	Sameer Shaik\n9920048273	2021-10-15
2728	Roshan Nagar	Oriental education 				Clg		0		Others		0	0	0								2021-10-15
2729	Roshan Nagar	Green heights (lashkaria)				Res.		0		BWG		0	0	0						21/09/2021	Aslam Lashkaria\n9820990707	2021-10-15
2730	Roshan Nagar	Shree sai lila (sra)				Res.		56		BWG	no	0	0	0								2021-10-15
2731	Roshan Nagar	Shivspruthi bldg no.1 				Res.		88		BWG	yes	110	26	0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-15
2732	Roshan Nagar	Shivspruthi bldg no.2 				Res.				BWG /SRA	yes			0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-15
2733	Anand Nagar	Techweb centre				Com				Others		0	46	0								2021-10-15
2734	Anand Nagar	Daimond /pearl				Res.		18	2	Others		0	12	0								2021-10-15
2735	Anand Nagar	Vijay vishal				Res.		78		BWG		0	14	0						20/09/2021	Chandrakant Kale\n9969003025	2021-10-15
2736	Anand Nagar	Spice tower				Com			16	Others		-	-	-				out source				2021-10-15
2737	Anand Nagar	Sandipani shikshak oshiwara				Res.		91	28	After 2007 (BWG)		0	13	0						20/09/2021	Rammani C. Dube\n9702334382	2021-10-15
2738	Anand Nagar	Vaibhav palace				Res.		48	28	Others	no	0	9	0								2021-10-15
2739	Mega Mall	Assistant commissioner police oshiwara division mumbai				Com					yes	0	0	0								2021-10-15
2740	Mega Mall	Jay ambe				Res.		100		BWG	yes	0	0	0						28/09/2021	Amar Pal\n9920612050	2021-10-15
2741	Mega Mall	Mahataranga				Res.		52	4	Others	yes	26	0	1								2021-10-15
2742	Mega Mall	Swati apartment				Res.		28	7	Others	yes	25	20	1								2021-10-15
2743	Mega Mall	1 bhk				Com				Others	yes	-	0	-					-			2021-10-15
2744	Mega Mall	Meera tower				Res.		100	28	BWG		-	-	-				out source			A.K.Singh (Mang)\n9930317315	2021-10-15
2745	Green Park	East side no.28				Res.		32		MHADA	yes	1	5	0				bin comp	24/09/2021			2021-10-15
2746	Green Park	Samruddhi no.29				Res.		32		MHADA	yes	20	9	0				bin comp				2021-10-15
2747	Green Park	Anand vihar				Res.		42		MHADA	yes	30	17	0				-	24/09/2021			2021-10-15
2748	Green Park	Oshiwara basera				Res.		28		MHADA	yes	0	13	0				bin comp				2021-10-15
2749	Green Park	Park paradise				Res.		44	12	MHADA	yes	0	11	5				bin comp	25/09/2021			2021-10-15
2750	Green Park	The park (lotus)				Res.		42		MHADA		-	-	-								2021-10-15
2751	Tarapore	K.l walawalkar mcgm garden				Grdn				Others												2021-10-15
2752	Tarapore	Atlantis				Res.		22		Others	yes	7	9	0								2021-10-15
2753	Tarapore	Deep apartment & tower				Res.		100		BWG	yes	0	12	0						28/09/2021	Zuber Menon	2021-10-15
2754	Tarapore	Harjanhans				Res.				Others	yes	0	6	0								2021-10-15
2755	Tarapore	Kohinoor i				Res.				Others	yes	-	10	-								2021-10-15
2756	Tarapore	Kohinoor ii				Res.				Others	yes	-		-								2021-10-15
2757	Tarapore	Shantivan mhada (7 bldg)				Res.		7x28		MHADA	yes	160	22	0					25/09/2021			2021-10-15
2758	Tarapore	Bmc garden ii				Grdn				Others	yes	0	0	0								2021-10-15
2759	Tarapore	Rims international school 				Scl				Others	yes	-	-	-								2021-10-15
2760	Tarapore	Samartha deep				Res.		160		BWG	yes	-	-	-				Out Source	-	-	-	2021-10-15
2761	Tarapore	Samartha ashish				Res.		74		Others	yes		0									2021-10-15
2762	Tarapore	Aakash				Res.		28		MHADA	yes	0	12	0				bin comp	26/09/2021			2021-10-15
2763	Tarapore	Eden garden no.22				Res.		32		MHADA	yes	20	10	0				bin comp	18/09/2021			2021-10-15
2764	Tarapore	Samartha aangan				Res.		330		After 2007 (BWG)	yes	2000	69	0								2021-10-15
2765	Tarapore	Gulmohar				Res.		32		MHADA	yes	33	17	0								2021-10-15
2766	Tarapore	Mayfair no.20				Res.		32	6	MHADA	yes	40	14	0				bin comp	18/09/2021			2021-10-15
2767	Tarapore	Indra darshan l				Res.		264		BWG		-	-	-				Out source	-		-	2021-10-15
2768	Tarapore	Indra darshan ll				Res.		330		BWG		-	-	-				Out source	-	-	-	2021-10-15
2769	Tarapore	Tarapore garden no. 1,2,3				Res.		294		BWG		0	75	0				OWC		18/09/2021	Sanjeev Sharma\n9920304152	2021-10-15
2770	Tarapore	Tarapore tower				Res.		269		BWG		-	-	-				Out source	-	18/09/2021	Arun poddar\n9920720066	2021-10-15
2771	Tarapore	Samartha vaibhav				Com		103	20	Others			22									2021-10-15
2772	Azad Nagar Petrol Pump	Tulip no.6				Res.		37	2	MHADA	yes	0	19	0				Bin comp				2021-10-15
2773	Azad Nagar Petrol Pump	Aster no.5				Res.		34		MHADA	yes	0	12	0				Bin comp				2021-10-15
2774	Jbcn School Lane	Blue bell no.8				Res.		34	4	MHADA	yes	0	23	0				Bin comp				2021-10-15
2775	Jbcn School Lane	Avalon no7				Res.		30		MHADA	yes	0	34	0								2021-10-15
2776	Jbcn School Lane	(jbcn) international school				Scl				Others	yes	0	18	0								2021-10-15
2777	Jbcn School Lane	Daffodils no.10				Res.		32		MHADA	yes	0	40	0								2021-10-15
2778	Jbcn School Lane	Indus no.9				Res.		32		MHADA	yes	0	18	0				Bin comp				2021-10-15
2779	Oshiwara Garden	Maheshwari hall				Com				Others	yes	0	0	0								2021-10-15
2780	Oshiwara Garden	Suriyakiran no.19				Res.		32	6	MHADA	yes	0	28	0				bin comp	18/09/2021			2021-10-15
2781	Oshiwara Garden	Amity no.18				Res.		32		MHADA	yes	0	15	3				bin comp	18/09/2021			2021-10-15
2782	Oshiwara Garden	Oshiwara mhada garden				Grdn				After 2007 (BWG)	yes	0	28	0				bin comp	18/09/2021			2021-10-15
2783	Oshiwara Garden	Green view no.17				Res.		32		MHADA	yes	0	22	5				bin comp	18/09/2021			2021-10-15
2784	Oshiwara Garden	Hima sai no.16				Res.		32		MHADA	yes	3	15	3				bin comp	18/09/2021			2021-10-15
2785	Oshiwara Garden	Raja rani malhotra vidyalaya				Scl		40		Others	yes	0	8	0								2021-10-15
2786	Oshiwara Garden	Hvps education complex				Clg				Others	yes	-	0	-				-				2021-10-15
2787	Oshiwara Garden	Goenka international school				Scl			22	Others	yes	0	40	0								2021-10-15
2788	Oshiwara Garden	Marble arch school				Scl			22	Others	yes	-	-	-								2021-10-15
2789	Oshiwara Garden	Goverment of india building				Res.		30		Others	yes	0	7	0								2021-10-15
2790	Oshiwara Garden	Sanskar no.15				Res.		28		MHADA	yes	0	12	0					-	-	-	2021-10-15
2791	Bmc Road	Aradhana gurunanak sra				Res.		286	25	BWG	yes	370	40	0					-	-	-	2021-10-15
2793	Bmc Road	Godavari no1				Res.		40		MHADA	yes	0	12	10				Bin comp	02/10/2021			2021-10-15
2794	Bmc Road	Krishna no 2				Res.		40		MHADA	yes		0					Bin comp	02/10/2021			2021-10-15
2795	Bmc Road	Narmadha no 3				Res.		40		MHADA	yes							Bin comp	02/10/2021			2021-10-15
2796	Bmc Road	Kaveri no 4				Res.		40		MHADA	yes							Bin comp	02/10/2021			2021-10-15
2797	Bmc Road	Panchvati no 5				Res.		40		MHADA	yes		0					Bin comp	02/10/2021			2021-10-15
2798	Bmc Road	Saptha shrungi no 6				Res.		40		MHADA	yes							Bin comp				2021-10-15
2799	Bmc Road	Sai siddhii no 7				Res.		40		MHADA	yes							Bin comp				2021-10-15
2800	Bmc Road	Serenity shree sai wings adef chs				Res.		72		BWG	yes	80	55	10						18/09/2021	Nandkishore Ghag\n9821394023	2021-10-15
2801	Bmc Road	Serenity shree sai wings b1,b2 chs				Res.				BWG	yes									18/09/2021	Vare (Mang)\n9699720927	2021-10-15
2802	Bmc Road	Serenity shree sai wings ghi chs				Res.		84		BWG	yes		20							18/09/2021	Suryanarayan Chube \n9702021707	2021-10-15
2803	Bmc Road	City international school				Scl				Others	yes	0	8	0								2021-10-15
2804	Heera Panna Road	Sumukh heights				Res.		42		Others	no		0									2021-10-15
2805	Heera Panna Road	Aanand seva samity				Res.		102	11	BWG /SRA	no		0							27/09/2021	Mansoor Ali Khan\n9022887279	2021-10-15
2806	Heera Panna Road	Reliable business centre				Com			11	After 2007 (BWG)			42							27/09/2021	Shakeel Shaik\n9821326518	2021-10-15
2807	Heera Panna Road	Om heera panna premises				Com			290	BWG			-						27/09/2021	27/09/2021	Kisanlal Hans\n9892408602	2021-10-15
2808	Heera Panna Road	Oshiwara link plaza				Com			199	Others	no											2021-10-15
2809	Heera Panna Road	Oshiwara yashodeep 				Res.		60		BWG /SRA	no	3	0	0				Bin comp	-	18/09/2021	Ishwar  Hubale\n9870473923	2021-10-15
2810	Heera Panna Road	(sbi) officers quatres 35				Res.		90		MHADA	yes	0	21					Bin comp				2021-10-15
2811	Heera Panna Road	Godavari 								MHADA	yes	0	0	0				Bin comp				2021-10-15
2812	Heera Panna Road	Yamuna 38				Res.		55	12	MHADA	yes	0	15	0				Bin comp				2021-10-15
2813	Heera Panna Road	Kaveri no41				Res.				MHADA	yes	0	18	0				Bin comp				2021-10-15
2814	Heera Panna Road	Mhada sargam no40				Res.		88	4	MHADA	yes	0	12	2				Bin comp				2021-10-15
2815	Heera Panna Road	Sebi gaurur				Res.		30		Others	yes	0	10	0				Bin comp				2021-10-15
2816	Heera Panna Road	Gujarat bhavan				Res.		28		Others	no							Bin comp				2021-10-15
2817	Heera Panna Road	Tata communication residential colony				Res.		105		MHADA	yes	0	10	0				comp bin				2021-10-15
2818	Heera Panna Road	Andhra bank quartres				Res.		62		MHADA	yes	0	18	3				comp bin				2021-10-15
2819	Heera Panna Road	Bmc garden i				Grdn				Others	yes	0	0	0								2021-10-15
2820	Oshiwara Mahada New Link Road	Marigold no. 1				Res.		34		MHADA	yes	0	30	0				Bin comp				2021-10-15
2821	Oshiwara Mahada New Link Road	Anuksa no.2				Res.		34		MHADA	yes	0	12	0				Bin comp				2021-10-15
2822	Oshiwara Mahada New Link Road	Aroma no.3				Res.		34		MHADA	yes	0	18	0				Bin comp				2021-10-15
2823	Oshiwara Mahada New Link Road	Sunshine no.4				Res.		34		MHADA	yes	0	19	0				Bin comp				2021-10-15
2824	Oshiwara Mahada New Link Road	Starship no.11				Res.		28		MHADA	yes	0	18	0				Bin comp	18/09/2021			2021-10-15
2825	Oshiwara Mahada New Link Road	Lotus no.12				Res.		32		MHADA	yes	0	9	2				Bin comp	18/09/2021			2021-10-15
2826	Oshiwara Mahada New Link Road	Utsav no.13				Res.		32		MHADA	yes	0	12	0				comp bin  returned				2021-10-15
2827	Oshiwara Mahada New Link Road	Rajanigandha no.14				Res.		32		MHADA	yes	0	10	1				Bin comp	18/09/2021			2021-10-15
2828	Oshiwara Mahada New Link Road	Income tax officers no.24				Res.		34		MHADA	yes	0	7	0				Bin comp	05.10.2021			2021-10-15
2829	Oshiwara Mahada New Link Road	Link way no.25				Res.		34		MHADA	yes	30	30					Bin comp				2021-10-15
2830	Oshiwara Mahada New Link Road	Central excise res.iety no.26				Res.		32		MHADA	yes	31	35	0								2021-10-15
2831	Oshiwara Mahada New Link Road	Central excise res.iety no.27				Res.		32		MHADA	yes	43	27	0								2021-10-15
2832	Oshiwara Mahada New Link Road	Harshvardhan chamber									yes	0	5	0								2021-10-15
2833	Oshiwara Mahada New Link Road	Oshiwara police chowki				Com				Others	no	0	0	0								2021-10-15
2834	Oshiwara Mahada New Link Road	State bank india 				Com			1	Others												2021-10-15
2835	Oshiwara Mahada New Link Road	Matru chayya				Res.		32		MHADA	yes	1	17	0				Bin comp				2021-10-15
2836	Oshiwara Mahada New Link Road	Ekdant society				Res.		34		MHADA	yes	0	15	0				Bin comp				2021-10-15
2837	Oshiwara Mahada New Link Road	Parth no.43				Res.		32		MHADA	yes	0	19	0				Bin comp				2021-10-15
2838	Oshiwara Mahada New Link Road	Fakir wadi (t.camp)				Res.				Others			31									2021-10-15
2839	Behram  Baug	Shakti seva sangh				Res.		91	14	BWG/SRA		-	-	-								2021-10-16
2840	Behram  Baug	Ujala nagar sra				Res.		116	21	After 2007 (BWG/SRA)		-	-	-								2021-10-16
2841	Behram  Baug	Patel sra				Res.				Others		-	-	-								2021-10-16
2842	Behram  Baug	Sakirabi				Res.		114	16	After 2007 (BWG/SRA)		-	-	-								2021-10-16
2843	Behram  Baug	Parsi colony				Res.		13x28		Others		150	30	0								2021-10-16
2844	Behram  Baug	Shama chs				Res.				Others		-	-	-								2021-10-16
2845	Behram  Baug	Anupa public high scl				Scl				Others		-	-	-								2021-10-16
2846	Behram  Baug	Sarvodhaya sra				Res.				BWG		-	-	-					03/10/2021			2021-10-16
2847	Behram  Baug	Range heights				Com				After 2007 (BWG)		-	-	-								2021-10-16
2848	Behram  Baug	Santosh nagar sra				Res.				BWG		-	-	-						28/09/2021	Amersen Yadav\n9867974333	2021-10-16
2849	Behram  Baug	Green palace				Res.				Others		-	-	-								2021-10-16
2850	Roshan Nagar	Millenium court				Res.		80	1	BWG	yes	30	12	0						27/09/2021	Nitinn Ranga\n9821337126	2021-10-16
2851	Roshan Nagar	Evershine green				Res.		206	14	BWG	yes	30	25	10						18/09/2021	Rohit Sharma (chr)\n9819309474	2021-10-16
2852	Roshan Nagar	Raigad military school\nCom-bldg				Com		32		BWG		-	-	-								2021-10-16
2853	Roshan Nagar	Raigad military school				Scl		32		Others		-	-	-								2021-10-16
2854	Roshan Nagar	Mariyam public high school				Scl			16	Others		-	-	-								2021-10-16
2855	Roshan Nagar	Belvedere spring school				Scl				Others		-	-	-								2021-10-16
2856	Roshan Nagar	Level resident				Res.				Others		-	-	-								2021-10-16
2857	Roshan Nagar	Oshiwara akash ganga				Res.		28		Others	yes	20	5	0								2021-10-16
2858	Roshan Nagar	Oshwara vishal				Res.		28		Others	yes	10	15	0								2021-10-16
2859	Roshan Nagar	Oshiwara sahyadri				Res.		56		Others	yes	20	10	0								2021-10-16
2860	Roshan Nagar	Oshiwara girnar				Res.		56		Others	yes	50	5	0								2021-10-16
2861	Roshan Nagar	Johig				Res.		28		Others	yes	5	4	0								2021-10-16
2862	Roshan Nagar	Oshiwara ravikiran				Res.		28		Others	yes	10	3	0								2021-10-16
2863	Roshan Nagar	Oshiwara satpuda				Res.		56		Others	yes	10	15	0								2021-10-16
2864	Roshan Nagar	Green daimond				Res.		40		After 2007 (BWG)	yes	120	12	0						27/09/2021	Sameer Shaik(sup)\n9920048273	2021-10-16
2865	Roshan Nagar	Jogeshwari ganesh niwas				Res.		80		BWG/SRA	yes	0	10	0						27/09/2021	Bhagwan Jadhav\n9821800369	2021-10-16
2866	Roshan Nagar	Roshan nagar b1				Res.		52	12	After 2007 (BWG/SRA)	yes	0	5	0						27/09/2021	Ashok Dongre\n9833455170	2021-10-16
2867	Roshan Nagar	Roshan nagar b2				Res.		82	13	After 2007 (BWG/SRA)	yes	0		0						27/09/2021	Alim Khan\n8879313127	2021-10-16
2868	Roshan Nagar	Lashkaria empress				Res.		56	6	After 2007 (BWG/SRA)		-	-	-				Out source		21/09/2021	Sameer Shaik\n9920048273	2021-10-16
2869	Roshan Nagar	Oriental education 				Clg		0		Others		-	-	-								2021-10-16
2870	Roshan Nagar	Green heights (lashkaria)				Res.		0		BWG		-	-	-						21/09/2021	Aslam Lashkaria\n9820990707	2021-10-16
2871	Roshan Nagar	Shree sai lila (sra)				Res.		56		BWG		-	0	-								2021-10-16
2872	Roshan Nagar	Shivspruthi bldg no.1 				Res.		88		BWG	yes	50	5	0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-16
2873	Roshan Nagar	Shivspruthi bldg no.2 				Res.				BWG /SRA	yes	120		0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-16
2874	Anand Nagar	Techweb centre				Com				Others	yes	0	25	0								2021-10-16
2875	Anand Nagar	Daimond /pearl				Res.		18	2	Others	yes	30	10	0								2021-10-16
2876	Anand Nagar	Vijay vishal				Res.		78		BWG	yes	20	13	0						20/09/2021	Chandrakant Kale\n9969003025	2021-10-16
2877	Anand Nagar	Spice tower				Com			16	Others		-	-	-				out source				2021-10-16
2878	Anand Nagar	Sandipani shikshak oshiwara				Res.		91	28	After 2007 (BWG)		0	0	0						20/09/2021	Rammani C. Dube\n9702334382	2021-10-16
2879	Anand Nagar	Vaibhav palace				Res.		48	28	Others	yes	10	0	3								2021-10-16
2880	Mega Mall	Assistant commissioner police oshiwara division mumbai				Com					no	-	-	-								2021-10-16
2881	Mega Mall	Jay ambe				Res.		100		BWG	yes	0	0	0						28/09/2021	Amar Pal\n9920612050	2021-10-16
2882	Mega Mall	Mahataranga				Res.		52	4	Others			0									2021-10-16
2883	Mega Mall	Swati apartment				Res.		28	7	Others	yes	0	10	0								2021-10-16
2884	Mega Mall	1 bhk				Com				Others		-	-	-					-			2021-10-16
2885	Mega Mall	Meera tower				Res.		100	28	BWG			-					out source			A.K.Singh (Mang)\n9930317315	2021-10-16
2886	Green Park	East side no.28				Res.		32		MHADA	yes	0	12	2				bin comp	24/09/2021			2021-10-16
2887	Green Park	Samruddhi no.29				Res.		32		MHADA	yes	0	15	0				bin comp				2021-10-16
2888	Green Park	Anand vihar				Res.		42		MHADA	yes	20	10	0				-	24/09/2021			2021-10-16
2889	Green Park	Oshiwara basera				Res.		28		MHADA	yes	20	4	0				bin comp				2021-10-16
2890	Green Park	Park paradise				Res.		44	12	MHADA	yes	0	15	5				bin comp	25/09/2021			2021-10-16
2891	Green Park	The park (lotus)				Res.		42		MHADA		-	-	-								2021-10-16
2892	Tarapore	K.l walawalkar mcgm garden				Grdn				Others		-	-	-								2021-10-16
2893	Tarapore	Atlantis				Res.		22		Others	yes	0	7	2								2021-10-16
2894	Tarapore	Deep apartment & tower				Res.		100		BWG	yes	0	17	0						28/09/2021	Zuber Menon	2021-10-16
2895	Tarapore	Harjanhans				Res.				Others	yes	0	10	0								2021-10-16
2896	Tarapore	Kohinoor i				Res.				Others	yes	0	5	0								2021-10-16
2897	Tarapore	Kohinoor ii				Res.				Others		-	-	-								2021-10-16
2898	Tarapore	Shantivan mhada (7 bldg)				Res.		7x28		MHADA	yes	130	19	0					25/09/2021			2021-10-16
2899	Tarapore	Bmc garden ii				Grdn				Others		-	-	-								2021-10-16
2900	Tarapore	Rims international school 				Scl				Others		-	-	-								2021-10-16
2901	Tarapore	Samartha deep				Res.		160		BWG		-	-	-				Out Source	-	-	-	2021-10-16
2902	Tarapore	Samartha ashish				Res.		74		Others		-	-	-								2021-10-16
2903	Tarapore	Aakash				Res.		28		MHADA	yes	20	12	0				bin comp	26/09/2021			2021-10-16
2904	Tarapore	Eden garden no.22				Res.		32		MHADA	yes	0	7	0				bin comp	18/09/2021			2021-10-16
2905	Tarapore	Samartha aangan				Res.		330		After 2007 (BWG)	yes	250	58	0								2021-10-16
2906	Tarapore	Gulmohar				Res.		32		MHADA	yes	40	12	0								2021-10-16
2907	Tarapore	Mayfair no.20				Res.		32	6	MHADA	yes	0	15	0				bin comp	18/09/2021			2021-10-16
2908	Tarapore	Indra darshan l				Res.		264		BWG		-	-	-				Out source	-		-	2021-10-16
2909	Tarapore	Indra darshan ll				Res.		330		BWG		-	-	-				Out source	-	-	-	2021-10-16
2910	Tarapore	Tarapore garden no. 1,2,3				Res.		294		BWG	yes	30	65	0				OWC		18/09/2021	Sanjeev Sharma\n9920304152	2021-10-16
2911	Tarapore	Tarapore tower				Res.		269		BWG		-	-	-				Out source	-	18/09/2021	Arun poddar\n9920720066	2021-10-16
2912	Tarapore	Samartha vaibhav				Com		103	20	Others	yes	0	35	0								2021-10-16
2913	Azad Nagar Petrol Pump	Tulip no.6				Res.		37	2	MHADA	yes	120	8	0				Bin comp				2021-10-16
2914	Azad Nagar Petrol Pump	Aster no.5				Res.		34		MHADA	yes	0	5	0				Bin comp				2021-10-16
2915	Jbcn School Lane	Blue bell no.8				Res.		34	4	MHADA	yes	100	8	0				Bin comp				2021-10-16
2916	Jbcn School Lane	Avalon no7				Res.		30		MHADA	yes	80	20	0								2021-10-16
2917	Jbcn School Lane	(jbcn) international school				Scl				Others	yes	-	15	-								2021-10-16
2918	Jbcn School Lane	Daffodils no.10				Res.		32		MHADA	yes	80	15	0								2021-10-16
2919	Jbcn School Lane	Indus no.9				Res.		32		MHADA	yes	130	8	0				Bin comp				2021-10-16
2920	Oshiwara Garden	Maheshwari hall				Com				Others		-	-	-								2021-10-16
2921	Oshiwara Garden	Suriyakiran no.19				Res.		32	6	MHADA	yes	0	12	5				bin comp	18/09/2021			2021-10-16
2922	Oshiwara Garden	Amity no.18				Res.		32		MHADA	yes	0	7	0				bin comp	18/09/2021			2021-10-16
2923	Oshiwara Garden	Oshiwara mhada garden				Grdn				After 2007 (BWG)	yes	0	2	0				bin comp	18/09/2021			2021-10-16
2924	Oshiwara Garden	Green view no.17				Res.		32		MHADA	yes	40	9	0				bin comp	18/09/2021			2021-10-16
2925	Oshiwara Garden	Hima sai no.16				Res.		32		MHADA	yes	10	6	0				 	18/09/2021			2021-10-16
2926	Oshiwara Garden	Raja rani malhotra vidyalaya				Scl		40		Others	yes	-	2	-								2021-10-16
2927	Oshiwara Garden	Hvps education complex				Clg				Others	yes	-	4	-								2021-10-16
2928	Oshiwara Garden	Goenka international school				Scl			22	Others	yes	-	3	-								2021-10-16
2929	Oshiwara Garden	Marble arch school				Scl			22	Others	yes	-	4	-								2021-10-16
2930	Oshiwara Garden	Goverment of india building				Res.		30		Others	yes	0	7	0								2021-10-16
2931	Oshiwara Garden	Sanskar no.15				Res.		28		MHADA	yes	20	15	5					-	-	-	2021-10-16
2932	Bmc Road	Aradhana gurunanak sra				Res.		286	25	BWG	yes	0	20	0					-	-	-	2021-10-16
2933	Bmc Road	Annapoorna chs				Res.				Others	yes	200	30	0					-	-	-	2021-10-16
2934	Bmc Road	Godavari no1				Res.		40		MHADA	yes	0	30	0				Bin comp	02/10/2021			2021-10-16
2935	Bmc Road	Krishna no 2				Res.		40		MHADA	yes		30	0				Bin comp	02/10/2021			2021-10-16
2936	Bmc Road	Narmadha no 3				Res.		40		MHADA	yes			0				Bin comp	02/10/2021			2021-10-16
2937	Bmc Road	Kaveri no 4				Res.		40		MHADA	yes			0				Bin comp	02/10/2021			2021-10-16
2938	Bmc Road	Panchvati no 5				Res.		40		MHADA	yes		30	0				Bin comp	02/10/2021			2021-10-16
2939	Bmc Road	Saptha shrungi no 6				Res.		40		MHADA	yes			0				Bin comp				2021-10-16
2940	Bmc Road	Sai siddhii no 7				Res.		40		MHADA	yes			0				Bin comp				2021-10-16
2941	Bmc Road	Serenity shree sai wings adef chs				Res.		72		BWG	yes	50	20	0						18/09/2021	Nandkishore Ghag\n9821394023	2021-10-16
2942	Bmc Road	Serenity shree sai wings b1,b2 chs				Res.				BWG	yes									18/09/2021	Vare (Mang)\n9699720927	2021-10-16
2943	Bmc Road	Serenity shree sai wings ghi chs				Res.		84		BWG	yes		15							18/09/2021	Suryanarayan Chube \n9702021707	2021-10-16
2944	Bmc Road	City international school				Scl				Others	yes	0	4	0								2021-10-16
2945	Heera Panna Road	Sumukh heights				Res.		42		Others	yes	0	20	0								2021-10-16
2946	Heera Panna Road	Aanand seva samity				Res.		102	11	BWG /SRA	yes	0	0	0						27/09/2021	Mansoor Ali Khan\n9022887279	2021-10-16
2947	Heera Panna Road	Reliable business centre				Com			11	After 2007 (BWG)	yes	0	0	0						27/09/2021	Shakeel Shaik\n9821326518	2021-10-16
2948	Heera Panna Road	Om heera panna premises				Com			290	BWG	yes	0	5	0					27/09/2021	27/09/2021	Kisanlal Hans\n9892408602	2021-10-16
2949	Heera Panna Road	Oshiwara link plaza				Com			199	Others	yes	0	60	0								2021-10-16
2950	Heera Panna Road	Oshiwara yashodeep 				Res.		60		BWG /SRA	yes	-	-	-				Bin comp	-	18/09/2021	Ishwar  Hubale\n9870473923	2021-10-16
2951	Heera Panna Road	(sbi) officers quatres 35				Res.		90		MHADA	yes	25	255	5				Bin comp				2021-10-16
2952	Heera Panna Road	Godavari 								MHADA	yes	0	12	0				Bin comp				2021-10-16
2953	Heera Panna Road	Yamuna 38				Res.		55	12	MHADA	yes		8					Bin comp				2021-10-16
2954	Heera Panna Road	Kaveri no41				Res.				MHADA	yes		6					Bin comp				2021-10-16
2955	Heera Panna Road	Mhada sargam no40				Res.		88	4	MHADA	yes		8					Bin comp				2021-10-16
2956	Heera Panna Road	Sebi gaurur				Res.		30		Others	yes	0	12	0				Bin comp				2021-10-16
2957	Heera Panna Road	Gujarat bhavan				Res.		28		Others	yes	0	8	0				Bin comp				2021-10-16
2958	Heera Panna Road	Tata communication residential colony				Res.		105		MHADA	yes	0	12	0				comp bin				2021-10-16
2959	Heera Panna Road	Andhra bank quartres				Res.		62		MHADA	yes	10	4	0				comp bin				2021-10-16
2960	Heera Panna Road	Bmc garden i				Grdn				Others		-	-	-								2021-10-16
2961	Oshiwara Mahada New Link Road	Marigold no. 1				Res.		34		MHADA	yes	0	12	0				Bin comp				2021-10-16
2962	Oshiwara Mahada New Link Road	Anuksa no.2				Res.		34		MHADA	yes	0	8	0				Bin comp				2021-10-16
2963	Oshiwara Mahada New Link Road	Aroma no.3				Res.		34		MHADA	yes	7	15	2				Bin comp				2021-10-16
2964	Oshiwara Mahada New Link Road	Sunshine no.4				Res.		34		MHADA	yes		16					Bin comp				2021-10-16
2965	Oshiwara Mahada New Link Road	Starship no.11				Res.		28		MHADA	yes	0	15	0				Bin comp	18/09/2021			2021-10-16
2966	Oshiwara Mahada New Link Road	Lotus no.12				Res.		32		MHADA	yes	10	0	0				Bin comp	18/09/2021			2021-10-16
2967	Oshiwara Mahada New Link Road	Utsav no.13				Res.		32		MHADA	yes	0	4	0				comp bin  returned				2021-10-16
2968	Oshiwara Mahada New Link Road	Rajanigandha no.14				Res.		32		MHADA	yes	0	0	0				Bin comp	18/09/2021			2021-10-16
2969	Oshiwara Mahada New Link Road	Income tax officers no.24				Res.		34		MHADA	yes	0	9	40				Bin comp	05.10.2021			2021-10-16
2970	Oshiwara Mahada New Link Road	Link way no.25				Res.		34		MHADA	yes	0	4	0				Bin comp				2021-10-16
2971	Oshiwara Mahada New Link Road	Central excise res.iety no.26				Res.		32		MHADA	yes	30	15	0								2021-10-16
2972	Oshiwara Mahada New Link Road	Central excise res.iety no.27				Res.		32		MHADA	yes	40	8	0								2021-10-16
2973	Oshiwara Mahada New Link Road	Harshvardhan chamber									yes	0	9	0								2021-10-16
2974	Oshiwara Mahada New Link Road	Oshiwara police chowki				Com				Others	yes	0	20	0								2021-10-16
2975	Oshiwara Mahada New Link Road	State bank india 				Com			1	Others		-	-	-								2021-10-16
2976	Oshiwara Mahada New Link Road	Matru chayya				Res.		32		MHADA	yes	0	-	0				Bin comp				2021-10-16
2977	Oshiwara Mahada New Link Road	Ekdant society				Res.		34		MHADA	yes	0	1	5				Bin comp				2021-10-16
2978	Oshiwara Mahada New Link Road	Parth no.43				Res.		32		MHADA	yes	10	9	0				Bin comp				2021-10-16
2979	Oshiwara Mahada New Link Road	Fakir wadi (t.camp)				Res.				Others	yes	200	45	0								2021-10-16
2980	Behram  Baug	Shakti seva sangh				Res.		91	14	BWG/SRA		-	-	-								2021-10-17
2981	Behram  Baug	Ujala nagar sra				Res.		116	21	After 2007 (BWG/SRA)		-	-	-								2021-10-17
2982	Behram  Baug	Patel sra				Res.				Others		-	-	-								2021-10-17
2983	Behram  Baug	Sakirabi				Res.		114	16	After 2007 (BWG/SRA)		-	-	-								2021-10-17
2984	Behram  Baug	Parsi colony				Res.		13x28		Others			55									2021-10-17
2985	Behram  Baug	Shama chs				Res.				Others		-	-	-								2021-10-17
2986	Behram  Baug	Anupa public high scl				Scl				Others		-	-	-								2021-10-17
2987	Behram  Baug	Sarvodhaya sra				Res.				BWG		-	-	-					03/10/2021			2021-10-17
2988	Behram  Baug	Range heights				Com				After 2007 (BWG)		-	-	-								2021-10-17
2989	Behram  Baug	Santosh nagar sra				Res.				BWG		-	-	-						28/09/2021	Amersen Yadav\n9867974333	2021-10-17
2990	Behram  Baug	Green palace				Res.				Others		-	-	-								2021-10-17
2991	Roshan Nagar	Millenium court				Res.		80	1	BWG	yes	34	0	0						27/09/2021	Nitinn Ranga\n9821337126	2021-10-17
2992	Roshan Nagar	Evershine green				Res.		206	14	BWG		-	-	-						18/09/2021	Rohit Sharma (chr)\n9819309474	2021-10-17
2993	Roshan Nagar	Raigad military school\nCom-bldg				Com		32		BWG		-	-	-								2021-10-17
2994	Roshan Nagar	Raigad military school				Scl		32		Others		-	-	-								2021-10-17
2995	Roshan Nagar	Mariyam public high school				Scl			16	Others		-	-	-								2021-10-17
2996	Roshan Nagar	Belvedere spring school				Scl				Others		-	-	-								2021-10-17
2997	Roshan Nagar	Level resident				Res.				Others	--	-	-	-								2021-10-17
2998	Roshan Nagar	Oshiwara akash ganga				Res.		28		Others	no	0	15	0								2021-10-17
2999	Roshan Nagar	Oshwara vishal				Res.		28		Others	yes	51	20	0								2021-10-17
3000	Roshan Nagar	Oshiwara sahyadri				Res.		56		Others	no	0	25	0								2021-10-17
3001	Roshan Nagar	Oshiwara girnar				Res.		56		Others	yes	29	30	0								2021-10-17
3002	Roshan Nagar	Johig				Res.		28		Others	no	0	8	0								2021-10-17
3003	Roshan Nagar	Oshiwara ravikiran				Res.		28		Others	no	0	7	0								2021-10-17
3004	Roshan Nagar	Oshiwara satpuda				Res.		56		Others	yes	-	12	-								2021-10-17
3005	Roshan Nagar	Green daimond				Res.		40		After 2007 (BWG)			18							27/09/2021	Sameer Shaik(sup)\n9920048273	2021-10-17
3006	Roshan Nagar	Jogeshwari ganesh niwas				Res.		80		BWG/SRA	yes	0	20	0						27/09/2021	Bhagwan Jadhav\n9821800369	2021-10-17
3007	Roshan Nagar	Roshan nagar b1				Res.		52	12	After 2007 (BWG/SRA)	yes	97	30							27/09/2021	Ashok Dongre\n9833455170	2021-10-17
3008	Roshan Nagar	Roshan nagar b2				Res.		82	13	After 2007 (BWG/SRA)	yes	81								27/09/2021	Alim Khan\n8879313127	2021-10-17
3009	Roshan Nagar	Lashkaria empress				Res.		56	6	After 2007 (BWG/SRA)			-					Out source		21/09/2021	Sameer Shaik\n9920048273	2021-10-17
3010	Roshan Nagar	Oriental education 				Clg		0		Others			0									2021-10-17
3011	Roshan Nagar	Green heights (lashkaria)				Res.		0		BWG			0							21/09/2021	Aslam Lashkaria\n9820990707	2021-10-17
3012	Roshan Nagar	Shree sai lila (sra)				Res.		56		BWG			0									2021-10-17
3013	Roshan Nagar	Shivspruthi bldg no.1 				Res.		88		BWG	yes	110	0	0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-17
3014	Roshan Nagar	Shivspruthi bldg no.2 				Res.				BWG /SRA	yes	138		0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-17
3015	Anand Nagar	Techweb centre				Com				Others	yes	0	65	0								2021-10-17
3016	Anand Nagar	Daimond /pearl				Res.		18	2	Others	yes	0	10	0								2021-10-17
3017	Anand Nagar	Vijay vishal				Res.		78		BWG	yes	0	18	0						20/09/2021	Chandrakant Kale\n9969003025	2021-10-17
3018	Anand Nagar	Spice tower				Com			16	Others		-	-	-				out source				2021-10-17
3019	Anand Nagar	Sandipani shikshak oshiwara				Res.		91	28	After 2007 (BWG)	yes	0	15	0						20/09/2021	Rammani C. Dube\n9702334382	2021-10-17
3020	Anand Nagar	Vaibhav palace				Res.		48	28	Others	yes	0	10	0								2021-10-17
3021	Mega Mall	Assistant commissioner police oshiwara division mumbai				Com							0									2021-10-17
3022	Mega Mall	Jay ambe				Res.		100		BWG	yes	0	0	0						28/09/2021	Amar Pal\n9920612050	2021-10-17
3023	Mega Mall	Mahataranga				Res.		52	4	Others	yes	47	0	0								2021-10-17
3024	Mega Mall	Swati apartment				Res.		28	7	Others	yes	57	8	0								2021-10-17
3025	Mega Mall	1 bhk				Com				Others		-	-	-					-			2021-10-17
3026	Mega Mall	Meera tower				Res.		100	28	BWG		-	-	-				out source			A.K.Singh (Mang)\n9930317315	2021-10-17
3027	Green Park	East side no.28				Res.		32		MHADA	yes	0	0	0				bin comp	24/09/2021			2021-10-17
3028	Green Park	Samruddhi no.29				Res.		32		MHADA	yes	25	10	0				bin comp				2021-10-17
3029	Green Park	Anand vihar				Res.		42		MHADA	yes	70	25	0				-	24/09/2021			2021-10-17
3030	Green Park	Oshiwara basera				Res.		28		MHADA	yes	0	12	0				bin comp				2021-10-17
3031	Green Park	Park paradise				Res.		44	12	MHADA	yes	0	12	3				bin comp	25/09/2021			2021-10-17
3032	Green Park	The park (lotus)				Res.		42		MHADA		-	-	-								2021-10-17
3033	Tarapore	K.l walawalkar mcgm garden				Grdn				Others		0	0	0								2021-10-17
3034	Tarapore	Atlantis				Res.		22		Others	yes	-	8	-								2021-10-17
3035	Tarapore	Deep apartment & tower				Res.		100		BWG	yes	0	12	0						28/09/2021	Zuber Menon	2021-10-17
3036	Tarapore	Harjanhans				Res.				Others	yes	0	5	0								2021-10-17
3037	Tarapore	Kohinoor i				Res.				Others	yes	0	0	0								2021-10-17
3038	Tarapore	Kohinoor ii				Res.				Others	yes	0	10	0								2021-10-17
3039	Tarapore	Shantivan mhada (7 bldg)				Res.		7x28		MHADA	yes	120	20	0					25/09/2021			2021-10-17
3040	Tarapore	Bmc garden ii				Grdn				Others	yes	-	-	-								2021-10-17
3041	Tarapore	Rims international school 				Scl				Others		-	-	-								2021-10-17
3042	Tarapore	Samartha deep				Res.		160		BWG		-	-	-				Out Source	-	-	-	2021-10-17
3043	Tarapore	Samartha ashish				Res.		74		Others		-	-	-								2021-10-17
3044	Tarapore	Aakash				Res.		28		MHADA	yes		12					bin comp	26/09/2021			2021-10-17
3045	Tarapore	Eden garden no.22				Res.		32		MHADA	yes	0	10	3				bin comp	18/09/2021			2021-10-17
3046	Tarapore	Samartha aangan				Res.		330		After 2007 (BWG)	yes	300	75	27								2021-10-17
3047	Tarapore	Gulmohar				Res.		32		MHADA	yes	20	17	0								2021-10-17
3048	Tarapore	Mayfair no.20				Res.		32	6	MHADA	yes	45	15	3				bin comp	18/09/2021			2021-10-17
3049	Tarapore	Indra darshan l				Res.		264		BWG		-	-	-				Out source	-		-	2021-10-17
3050	Tarapore	Indra darshan ll				Res.		330		BWG		-	-	-				Out source	-	-	-	2021-10-17
3051	Tarapore	Tarapore garden no. 1,2,3				Res.		294		BWG	yes	0	75	10				OWC		18/09/2021	Sanjeev Sharma\n9920304152	2021-10-17
3052	Tarapore	Tarapore tower				Res.		269		BWG		-	-	-				Out source	-	18/09/2021	Arun poddar\n9920720066	2021-10-17
3053	Tarapore	Samartha vaibhav				Com		103	20	Others	yes	0	22	0								2021-10-17
3054	Azad Nagar Petrol Pump	Tulip no.6				Res.		37	2	MHADA	yes	0	18	0				Bin comp				2021-10-17
3055	Azad Nagar Petrol Pump	Aster no.5				Res.		34		MHADA	yes	81	-	4				Bin comp				2021-10-17
3056	Jbcn School Lane	Blue bell no.8				Res.		34	4	MHADA	yes	36	8	0				Bin comp				2021-10-17
3057	Jbcn School Lane	Avalon no7				Res.		30		MHADA	yes	45	20	0								2021-10-17
3058	Jbcn School Lane	(jbcn) international school				Scl				Others	yes	-	15	-								2021-10-17
3059	Jbcn School Lane	Daffodils no.10				Res.		32		MHADA	yes	41	15	0								2021-10-17
3060	Jbcn School Lane	Indus no.9				Res.		32		MHADA	yes	30	5	0				Bin comp				2021-10-17
3061	Oshiwara Garden	Maheshwari hall				Com				Others	yes	0	0	0								2021-10-17
3062	Oshiwara Garden	Suriyakiran no.19				Res.		32	6	MHADA	yes	0	19	0				bin comp	18/09/2021			2021-10-17
3063	Oshiwara Garden	Amity no.18				Res.		32		MHADA	yes	1	15	2				bin comp	18/09/2021			2021-10-17
3064	Oshiwara Garden	Oshiwara mhada garden				Grdn				After 2007 (BWG)	yes	0	1	0				bin comp	18/09/2021			2021-10-17
3065	Oshiwara Garden	Green view no.17				Res.		32		MHADA	yes	1	10	3				bin comp	18/09/2021			2021-10-17
3066	Oshiwara Garden	Hima sai no.16				Res.		32		MHADA	yes	2	6	1				bin comp	18/09/2021			2021-10-17
3067	Oshiwara Garden	Raja rani malhotra vidyalaya				Scl		40		Others	yes	-	2	-								2021-10-17
3068	Oshiwara Garden	Hvps education complex				Clg				Others	yes	-	0	-								2021-10-17
3069	Oshiwara Garden	Goenka international school				Scl			22	Others	yes	-	9	-								2021-10-17
3070	Oshiwara Garden	Marble arch school				Scl			22	Others	yes	-	0	-								2021-10-17
3071	Oshiwara Garden	Goverment of india building				Res.		30		Others	yes	-	5	-								2021-10-17
3072	Oshiwara Garden	Sanskar no.15				Res.		28		MHADA	yes	-	26	-					-	-	-	2021-10-17
3073	Bmc Road	Aradhana gurunanak sra				Res.		286	25	BWG		429	40	0					-	-	-	2021-10-17
3074	Bmc Road	Annapoorna chs				Res.				Others	yes	0	12	0					-	-	-	2021-10-17
3075	Bmc Road	Godavari no1				Res.		40		MHADA	yes	5	12	3				Bin comp	02/10/2021			2021-10-17
3076	Bmc Road	Krishna no 2				Res.		40		MHADA	yes		30					Bin comp	02/10/2021			2021-10-17
3077	Bmc Road	Narmadha no 3				Res.		40		MHADA	yes							Bin comp	02/10/2021			2021-10-17
3078	Bmc Road	Kaveri no 4				Res.		40		MHADA	yes							Bin comp	02/10/2021			2021-10-17
3079	Bmc Road	Panchvati no 5				Res.		40		MHADA	yes		15					Bin comp	02/10/2021			2021-10-17
3080	Bmc Road	Saptha shrungi no 6				Res.		40		MHADA	yes							Bin comp				2021-10-17
3081	Bmc Road	Sai siddhii no 7				Res.		40		MHADA	yes							Bin comp				2021-10-17
3082	Bmc Road	Serenity shree sai wings adef chs				Res.		72		BWG	yes	75	25	15						18/09/2021	Nandkishore Ghag\n9821394023	2021-10-17
3083	Bmc Road	Serenity shree sai wings b1,b2 chs				Res.				BWG	yes									18/09/2021	Vare (Mang)\n9699720927	2021-10-17
3084	Bmc Road	Serenity shree sai wings ghi chs				Res.		84		BWG	yes		20							18/09/2021	Suryanarayan Chube \n9702021707	2021-10-17
3085	Bmc Road	City international school				Scl				Others	yes	0	2	0								2021-10-17
3086	Heera Panna Road	Sumukh heights				Res.		42		Others	yes	0	15	0								2021-10-17
3087	Heera Panna Road	Aanand seva samity				Res.		102	11	BWG /SRA		-	-	-						27/09/2021	Mansoor Ali Khan\n9022887279	2021-10-17
3088	Heera Panna Road	Reliable business centre				Com			11	After 2007 (BWG)	yes	-	30	-						27/09/2021	Shakeel Shaik\n9821326518	2021-10-17
3089	Heera Panna Road	Om heera panna premises				Com			290	BWG		-	-	-				bin comp	27/09/2021	27/09/2021	Kisanlal Hans\n9892408602	2021-10-17
3090	Heera Panna Road	Oshiwara link plaza				Com			199	Others		-	-	-								2021-10-17
3091	Heera Panna Road	Oshiwara yashodeep 				Res.		60		BWG /SRA	yes	0	13	0				Bin comp		18/09/2021	Ishwar  Hubale\n9870473923	2021-10-17
3092	Heera Panna Road	(sbi) officers quatres 35				Res.		90		MHADA	yes	1	25	10				Bin comp				2021-10-17
3093	Heera Panna Road	Godavari 								MHADA	yes	0	5	0				Bin comp				2021-10-17
3094	Heera Panna Road	Yamuna 38				Res.		55	12	MHADA	yes	4	4	3				Bin comp				2021-10-17
3095	Heera Panna Road	Kaveri no41				Res.				MHADA	yes	0	8	0				Bin comp				2021-10-17
3096	Heera Panna Road	Mhada sargam no40				Res.		88	4	MHADA	yes	0	4	22				Bin comp				2021-10-17
3097	Heera Panna Road	Sebi gaurur				Res.		30		Others	yes	0	8	0				Bin comp				2021-10-17
3098	Heera Panna Road	Gujarat bhavan				Res.		28		Others	yes	0	12	0				Bin comp				2021-10-17
3099	Heera Panna Road	Tata communication residential colony				Res.		105		MHADA	yes	1	30	3				comp bin				2021-10-17
3100	Heera Panna Road	Andhra bank quartres				Res.		62		MHADA	yes	0	19	2				comp bin				2021-10-17
3101	Heera Panna Road	Bmc garden i				Grdn				Others	yes	0	9	0								2021-10-17
3102	Oshiwara Mahada New Link Road	Marigold no. 1				Res.		34		MHADA	yes	0	10	0				Bin comp				2021-10-17
3103	Oshiwara Mahada New Link Road	Anuksa no.2				Res.		34		MHADA	yes	0	2	0				Bin comp				2021-10-17
3104	Oshiwara Mahada New Link Road	Aroma no.3				Res.		34		MHADA	yes	0	5	0				Bin comp				2021-10-17
3105	Oshiwara Mahada New Link Road	Sunshine no.4				Res.		34		MHADA	yes	0	5	0				Bin comp				2021-10-17
3106	Oshiwara Mahada New Link Road	Starship no.11				Res.		28		MHADA	yes	0	30	0				Bin comp	18/09/2021			2021-10-17
3107	Oshiwara Mahada New Link Road	Lotus no.12				Res.		32		MHADA	yes	15	4	3				Bin comp	18/09/2021			2021-10-17
3108	Oshiwara Mahada New Link Road	Utsav no.13				Res.		32		MHADA	yes	0	2	0				comp bin  returned				2021-10-17
3109	Oshiwara Mahada New Link Road	Rajanigandha no.14				Res.		32		MHADA	yes	0	4	0				Bin comp	18/09/2021			2021-10-17
3110	Oshiwara Mahada New Link Road	Income tax officers no.24				Res.		34		MHADA	yes	16	5	2				Bin comp	05.10.2021			2021-10-17
3111	Oshiwara Mahada New Link Road	Link way no.25				Res.		34		MHADA	yes	20	15	10				Bin comp				2021-10-17
3112	Oshiwara Mahada New Link Road	Central excise res.iety no.26				Res.		32		MHADA	yes	45	4	0								2021-10-17
3113	Oshiwara Mahada New Link Road	Central excise res.iety no.27				Res.		32		MHADA	yes	57	10	0								2021-10-17
3114	Oshiwara Mahada New Link Road	Harshvardhan chamber									yes	0	2	0								2021-10-17
3115	Oshiwara Mahada New Link Road	Oshiwara police chowki				Com				Others	no	0	0	0								2021-10-17
3116	Oshiwara Mahada New Link Road	Matru chayya				Res.		32		MHADA	yes	0	7	2				Bin comp				2021-10-17
3117	Oshiwara Mahada New Link Road	Ekdant society				Res.		34		MHADA	yes	0	10	0				Bin comp				2021-10-17
3118	Oshiwara Mahada New Link Road	Parth no.43				Res.		32		MHADA	yes	0	15	0				Bin comp				2021-10-17
3119	Oshiwara Mahada New Link Road	Fakir wadi (t.camp)				Res.				Others	yes	51	27	0								2021-10-17
3120	Behram  Baug	Shakti seva sangh				Res.		91	14	BWG/SRA		-	-	-								2021-10-18
3121	Behram  Baug	Ujala nagar sra				Res.		116	21	After 2007 (BWG/SRA)		-	-	-								2021-10-18
3122	Behram  Baug	Patel sra				Res.				Others		-	-	-								2021-10-18
3123	Behram  Baug	Sakirabi				Res.		114	16	After 2007 (BWG/SRA)		-	-	-								2021-10-18
3124	Behram  Baug	Parsi colony				Res.		13x28		Others	yes	191	15	-								2021-10-18
3125	Behram  Baug	Shama chs				Res.				Others		-	-	-								2021-10-18
3126	Behram  Baug	Anupa public high scl				Scl				Others		-	-	-								2021-10-18
3127	Behram  Baug	Sarvodhaya sra				Res.				BWG		0	0	0					03/10/2021			2021-10-18
3128	Behram  Baug	Range heights				Com				After 2007 (BWG)		0	0	0								2021-10-18
3129	Behram  Baug	Santosh nagar sra				Res.				BWG		0	0	0						28/09/2021	Amersen Yadav\n9867974333	2021-10-18
3130	Behram  Baug	Green palace				Res.				Others		-	-	-								2021-10-18
3131	Roshan Nagar	Millenium court				Res.		80	1	BWG	yes	30	10	0						27/09/2021	Nitinn Ranga\n9821337126	2021-10-18
3132	Roshan Nagar	Evershine green				Res.		206	14	BWG	yes	10	60	5						18/09/2021	Rohit Sharma (chr)\n9819309474	2021-10-18
3133	Roshan Nagar	Raigad military school\nCom-bldg				Com		32		BWG		-	-	-								2021-10-18
3134	Roshan Nagar	Raigad military school				Scl		32		Others		-	-	-								2021-10-18
3135	Roshan Nagar	Mariyam public high school				Scl			16	Others		-	-	-								2021-10-18
3136	Roshan Nagar	Belvedere spring school				Scl				Others	yes	-	6	-								2021-10-18
3137	Roshan Nagar	Level resident				Res.				Others		-	-	-								2021-10-18
3138	Roshan Nagar	Oshiwara akash ganga				Res.		28		Others	yes	30	18	0								2021-10-18
3139	Roshan Nagar	Oshwara vishal				Res.		28		Others	yes	10	15	0								2021-10-18
3140	Roshan Nagar	Oshiwara sahyadri				Res.		56		Others	yes	40	6	0								2021-10-18
3141	Roshan Nagar	Oshiwara girnar				Res.		56		Others	yes	20	10	0								2021-10-18
3142	Roshan Nagar	Johig				Res.		28		Others	yes	21	15	0								2021-10-18
3143	Roshan Nagar	Oshiwara ravikiran				Res.		28		Others	yes	21	18	0								2021-10-18
3144	Roshan Nagar	Oshiwara satpuda				Res.		56		Others	yes	0	0	0								2021-10-18
3145	Roshan Nagar	Green daimond				Res.		40		After 2007 (BWG)	yes	45	0	0						27/09/2021	Sameer Shaik(sup)\n9920048273	2021-10-18
3146	Roshan Nagar	Jogeshwari ganesh niwas				Res.		80		BWG/SRA	yes	46	12	0						27/09/2021	Bhagwan Jadhav\n9821800369	2021-10-18
3147	Roshan Nagar	Roshan nagar b1				Res.		52	12	After 2007 (BWG/SRA)	yes	51	16	0						27/09/2021	Ashok Dongre\n9833455170	2021-10-18
3148	Roshan Nagar	Roshan nagar b2				Res.		82	13	After 2007 (BWG/SRA)	yes	45		0						27/09/2021	Alim Khan\n8879313127	2021-10-18
3149	Roshan Nagar	Lashkaria empress				Res.		56	6	After 2007 (BWG/SRA)		-	-	-				Out source		21/09/2021	Sameer Shaik\n9920048273	2021-10-18
3150	Roshan Nagar	Oriental education 				Clg		0		Others		-	-	-								2021-10-18
3151	Roshan Nagar	Green heights (lashkaria)				Res.		0		BWG		-	-	-				Out source		21/09/2021	Aslam Lashkaria\n9820990707	2021-10-18
3152	Roshan Nagar	Shree sai lila (sra)				Res.		56		BWG	yes	0	20	0								2021-10-18
3153	Roshan Nagar	Shivspruthi bldg no.1 				Res.		88		BWG	yes	43	20							27/09/2021	Vasant  Mahadik\n7208580681	2021-10-18
3154	Roshan Nagar	Shivspruthi bldg no.2 				Res.				BWG /SRA	yes	50								27/09/2021	Vasant  Mahadik\n7208580681	2021-10-18
3155	Anand Nagar	Techweb centre				Com				Others	yes	-	0	-								2021-10-18
3156	Anand Nagar	Daimond /pearl				Res.		18	2	Others	yes	43	15	0								2021-10-18
3157	Anand Nagar	Vijay vishal				Res.		78		BWG	yes	0	25	3						20/09/2021	Chandrakant Kale\n9969003025	2021-10-18
3158	Anand Nagar	Spice tower				Com			16	Others		-	-	-								2021-10-18
3159	Anand Nagar	Sandipani shikshak oshiwara				Res.		91	28	After 2007 (BWG)		0	0	0						20/09/2021	Rammani C. Dube\n9702334382	2021-10-18
3160	Anand Nagar	Vaibhav palace				Res.		48	28	Others	no	0	0	0								2021-10-18
3161	Mega Mall	Assistant commissioner police oshiwara division mumbai				Com						-	-	-								2021-10-18
3162	Mega Mall	Jay ambe				Res.		100		BWG		0	0	0						28/09/2021	Amar Pal\n9920612050	2021-10-18
3163	Mega Mall	Mahataranga				Res.		52	4	Others	yes	15	0	2								2021-10-18
3164	Mega Mall	Swati apartment				Res.		28	7	Others	yes	21	0	1								2021-10-18
3165	Mega Mall	1 bhk				Com				Others	yes	0	0	3					-			2021-10-18
3166	Mega Mall	Meera tower				Res.		100	28	BWG		-	-	-				out source			A.K.Singh (Mang)\n9930317315	2021-10-18
3167	Green Park	East side no.28				Res.		32		MHADA	yes	0	25	0				bin comp	24/09/2021			2021-10-18
3168	Green Park	Samruddhi no.29				Res.		32		MHADA	yes	0	15	0				bin comp				2021-10-18
3169	Green Park	Anand vihar				Res.		42		MHADA	yes	28	25	0				-	24/09/2021			2021-10-18
3170	Green Park	Oshiwara basera				Res.		28		MHADA	yes	17	8	0				bin comp				2021-10-18
3171	Green Park	Park paradise				Res.		44	12	MHADA	yes	0	19	0				bin comp	25/09/2021			2021-10-18
3172	Green Park	The park (lotus)				Res.		42		MHADA		-	-	-				-	-			2021-10-18
3173	Tarapore	K.l walawalkar mcgm garden				Grdn				Others	yes	0	0	0								2021-10-18
3174	Tarapore	Atlantis				Res.		22		Others	yes	21	19	3								2021-10-18
3175	Tarapore	Deep apartment & tower				Res.		100		BWG		-	29	-				out source		28/09/2021	Zuber Menon	2021-10-18
3176	Tarapore	Harjanhans				Res.				Others	yes	0	0	0								2021-10-18
3177	Tarapore	Kohinoor i				Res.				Others		-	19	-				out source				2021-10-18
3178	Tarapore	Kohinoor ii				Res.				Others		-	19	-				out source				2021-10-18
3179	Tarapore	Shantivan mhada (7 bldg)				Res.		7x28		MHADA	yes	41	35	0					25/09/2021			2021-10-18
3180	Tarapore	Bmc garden ii				Grdn				Others	yes	0	0	0								2021-10-18
3181	Tarapore	Rims international school 				Scl				Others		0	0	0								2021-10-18
3182	Tarapore	Samartha deep				Res.		160		BWG		-	-	-				Out Source	-	-	-	2021-10-18
3183	Tarapore	Samartha ashish				Res.		74		Others	yes	-	38	-								2021-10-18
3184	Tarapore	Aakash				Res.		28		MHADA	yes	0	18	0				bin comp	26/09/2021			2021-10-18
3185	Tarapore	Eden garden no.22				Res.		32		MHADA	yes	15	15	0				bin comp	18/09/2021			2021-10-18
3186	Tarapore	Samartha aangan				Res.		330		After 2007 (BWG)	yes	673	60	35								2021-10-18
3187	Tarapore	Gulmohar				Res.		32		MHADA	yes	41	10	0								2021-10-18
3188	Tarapore	Mayfair no.20				Res.		32	6	MHADA	yes	23	18	0				bin comp	18/09/2021			2021-10-18
3189	Tarapore	Indra darshan l				Res.		264		BWG		-	-	-				Out source	-		-	2021-10-18
3190	Tarapore	Indra darshan ll				Res.		330		BWG		-	-	-				Out source	-	-	-	2021-10-18
3191	Tarapore	Tarapore garden no. 1,2,3				Res.		294		BWG	yes	0	60	5				OWC		18/09/2021	Sanjeev Sharma\n9920304152	2021-10-18
3192	Tarapore	Tarapore tower				Res.		269		BWG		-	-	-				Out source	-	18/09/2021	Arun poddar\n9920720066	2021-10-18
3193	Tarapore	Samartha vaibhav				Com		103	20	Others	yes	-	20	-								2021-10-18
3194	Azad Nagar Petrol Pump	Tulip no.6				Res.		37	2	MHADA	yes	20	18	0				Bin comp				2021-10-18
3195	Azad Nagar Petrol Pump	Aster no.5				Res.		34		MHADA	yes	14	15	2				Bin comp				2021-10-18
3196	Jbcn School Lane	Blue bell no.8				Res.		34	4	MHADA	no	0		0				Bin comp				2021-10-18
3197	Jbcn School Lane	Avalon no7				Res.		30		MHADA	yes	23		0								2021-10-18
3198	Jbcn School Lane	(jbcn) international school				Scl				Others		-	-	-								2021-10-18
3199	Jbcn School Lane	Daffodils no.10				Res.		32		MHADA	yes	31		0								2021-10-18
3200	Jbcn School Lane	Indus no.9				Res.		32		MHADA	yes	33		0				Bin comp				2021-10-18
3201	Oshiwara Garden	Maheshwari hall				Com				Others		-	-	-								2021-10-18
3202	Oshiwara Garden	Suriyakiran no.19				Res.		32	6	MHADA	yes	0		3				bin comp	18/09/2021			2021-10-18
3203	Oshiwara Garden	Amity no.18				Res.		32		MHADA	yes	0	0	0				bin comp	18/09/2021			2021-10-18
3204	Oshiwara Garden	Oshiwara mhada garden				Grdn				After 2007 (BWG)	yes	11		0.5				bin comp	18/09/2021			2021-10-18
3205	Oshiwara Garden	Green view no.17				Res.		32		MHADA	yes	5		2				bin comp	18/09/2021			2021-10-18
3206	Oshiwara Garden	Hima sai no.16				Res.		32		MHADA	yes	0		2				bin comp	18/09/2021			2021-10-18
3207	Oshiwara Garden	Raja rani malhotra vidyalaya				Scl		40		Others	yes	60		0								2021-10-18
3208	Oshiwara Garden	Hvps education complex				Clg				Others	yes	70		0								2021-10-18
3209	Oshiwara Garden	Goenka international school				Scl			22	Others	yes	50		0								2021-10-18
3210	Oshiwara Garden	Marble arch school				Scl			22	Others	yes	71		0								2021-10-18
3211	Oshiwara Garden	Goverment of india building				Res.		30		Others	yes	20		0								2021-10-18
3212	Oshiwara Garden	Sanskar no.15				Res.		28		MHADA	yes	31		2					-	-	-	2021-10-18
3213	Bmc Road	Aradhana gurunanak sra				Res.		286	25	BWG	yes	181		0					-	-	-	2021-10-18
3214	Bmc Road	Annapoorna chs				Res.				Others	yes	0	0	0					-	-	-	2021-10-18
3215	Bmc Road	Godavari no1				Res.		40		MHADA	yes	0		0				Bin comp	02/10/2021			2021-10-18
3216	Bmc Road	Krishna no 2				Res.		40		MHADA	yes							Bin comp	02/10/2021			2021-10-18
3217	Bmc Road	Narmadha no 3				Res.		40		MHADA	yes							Bin comp	02/10/2021			2021-10-18
3218	Bmc Road	Kaveri no 4				Res.		40		MHADA	no							Bin comp	02/10/2021			2021-10-18
3219	Bmc Road	Panchvati no 5				Res.		40		MHADA	yes							Bin comp	02/10/2021			2021-10-18
3220	Bmc Road	Saptha shrungi no 6				Res.		40		MHADA	yes							Bin comp				2021-10-18
3221	Bmc Road	Sai siddhii no 7				Res.		40		MHADA	yes							Bin comp				2021-10-18
3222	Bmc Road	Serenity shree sai wings adef chs				Res.		72		BWG	yes	25		15						18/09/2021	Nandkishore Ghag\n9821394023	2021-10-18
3223	Bmc Road	Serenity shree sai wings b1,b2 chs				Res.				BWG	yes									18/09/2021	Vare (Mang)\n9699720927	2021-10-18
3224	Bmc Road	Serenity shree sai wings ghi chs				Res.		84		BWG	yes									18/09/2021	Suryanarayan Chube \n9702021707	2021-10-18
3225	Bmc Road	City international school				Scl				Others		-	-	-								2021-10-18
3226	Heera Panna Road	Sumukh heights				Res.		42		Others		0		0								2021-10-18
3227	Heera Panna Road	Aanand seva samity				Res.		102	11	BWG /SRA		0		0						27/09/2021	Mansoor Ali Khan\n9022887279	2021-10-18
3228	Heera Panna Road	Reliable business centre				Com			11	After 2007 (BWG)	yes	0		0						27/09/2021	Shakeel Shaik\n9821326518	2021-10-18
3229	Heera Panna Road	Om heera panna premises				Com			290	BWG	yes	0		0				bin comp	27/09/2021	27/09/2021	Kisanlal Hans\n9892408602	2021-10-18
3230	Heera Panna Road	Oshiwara link plaza				Com			199	Others	yes	15		0								2021-10-18
3231	Heera Panna Road	Oshiwara yashodeep 				Res.		60		BWG /SRA	yes	25		6				Bin comp		18/09/2021	Ishwar  Hubale\n9870473923	2021-10-18
3232	Heera Panna Road	(sbi) officers quatres 35				Res.		90		MHADA	yes	10		3				Bin comp				2021-10-18
3233	Heera Panna Road	Godavari 								MHADA	yes	35		8				Bin comp				2021-10-18
3234	Heera Panna Road	Yamuna 38				Res.		55	12	MHADA	yes							Bin comp				2021-10-18
3235	Heera Panna Road	Kaveri no41				Res.				MHADA	yes							Bin comp				2021-10-18
3236	Heera Panna Road	Mhada sargam no40				Res.		88	4	MHADA	yes	0		2				Bin comp				2021-10-18
3237	Heera Panna Road	Sebi gaurur				Res.		30		Others	yes	4		3				Bin comp				2021-10-18
3238	Heera Panna Road	Gujarat bhavan				Res.		28		Others	yes	0		0				Bin comp				2021-10-18
3239	Heera Panna Road	Tata communication residential colony				Res.		105		MHADA	yes	0		0				comp bin				2021-10-18
3240	Heera Panna Road	Andhra bank quartres				Res.		62		MHADA	yes	0	0	0				comp bin				2021-10-18
3241	Heera Panna Road	Bmc garden i				Grdn				Others	yes	2		3								2021-10-18
3242	Oshiwara Mahada New Link Road	Marigold no. 1				Res.		34		MHADA	yes	21		0				Bin comp				2021-10-18
3243	Oshiwara Mahada New Link Road	Anuksa no.2				Res.		34		MHADA	yes	14		2				Bin comp				2021-10-18
3244	Oshiwara Mahada New Link Road	Aroma no.3				Res.		34		MHADA	yes	14		3				Bin comp				2021-10-18
3245	Oshiwara Mahada New Link Road	Sunshine no.4				Res.		34		MHADA	yes	0		0				Bin comp				2021-10-18
3246	Oshiwara Mahada New Link Road	Starship no.11				Res.		28		MHADA	yes	0		2				Bin comp	18/09/2021			2021-10-18
3247	Oshiwara Mahada New Link Road	Lotus no.12				Res.		32		MHADA	yes	0		3				Bin comp	18/09/2021			2021-10-18
3248	Oshiwara Mahada New Link Road	Utsav no.13				Res.		32		MHADA	yes	0		5				comp bin  returned				2021-10-18
3249	Oshiwara Mahada New Link Road	Rajanigandha no.14				Res.		32		MHADA	yes	0	0	0				Bin comp	18/09/2021			2021-10-18
3250	Oshiwara Mahada New Link Road	Income tax officers no.24				Res.		34		MHADA	yes	0		2				Bin comp	05.10.2021			2021-10-18
3251	Oshiwara Mahada New Link Road	Link way no.25				Res.		34		MHADA	yes	10		0				Bin comp				2021-10-18
3252	Oshiwara Mahada New Link Road	Central excise res.iety no.26				Res.		32		MHADA	yes	35		0								2021-10-18
3253	Oshiwara Mahada New Link Road	Central excise res.iety no.27				Res.		32		MHADA	yes	37		0								2021-10-18
3254	Oshiwara Mahada New Link Road	Harshvardhan chamber									yes	0		0								2021-10-18
3255	Oshiwara Mahada New Link Road	Oshiwara police chowki				Com				Others	no	0		0								2021-10-18
3256	Oshiwara Mahada New Link Road	Matru chayya				Res.		32		MHADA	yes	0		2				Bin comp				2021-10-18
3257	Oshiwara Mahada New Link Road	Ekdant society				Res.		34		MHADA	yes	0		0				Bin comp				2021-10-18
3258	Oshiwara Mahada New Link Road	Parth no.43				Res.		32		MHADA	yes	0		0				Bin comp				2021-10-18
3259	Oshiwara Mahada New Link Road	Fakir wadi (t.camp)				Res.				Others	yes	271	0	0								2021-10-18
3260	Behram  Baug	Shakti seva sangh				Res.		91	14	BWG/SRA			-									2021-10-19
3261	Behram  Baug	Ujala nagar sra				Res.		116	21	After 2007 (BWG/SRA)			-									2021-10-19
3262	Behram  Baug	Patel sra				Res.				Others			-									2021-10-19
3263	Behram  Baug	Sakirabi				Res.		114	16	After 2007 (BWG/SRA)			-									2021-10-19
3264	Behram  Baug	Parsi colony				Res.		13x28		Others	yes	180	29									2021-10-19
3265	Behram  Baug	Shama chs				Res.				Others			-									2021-10-19
3266	Behram  Baug	Anup public high scl				Scl				Others			-									2021-10-19
3267	Behram  Baug	Sarvodhaya sra				Res.				BWG			-						03/10/2021			2021-10-19
3268	Behram  Baug	Range heights				Com				After 2007 (BWG)			0									2021-10-19
3269	Behram  Baug	Santosh nagar sra				Res.				BWG			0							28/09/2021	Amersen Yadav\n9867974333	2021-10-19
3270	Behram  Baug	Green palace				Res.				Others			0									2021-10-19
3271	Roshan Nagar	Millenium court				Res.		80	1	BWG	yes		15							27/09/2021	Nitinn Ranga\n9821337126	2021-10-19
3272	Roshan Nagar	Evershine green				Res.		206	14	BWG	yes	6	35	7						18/09/2021	Rohit Sharma (chr)\n9819309474	2021-10-19
3273	Roshan Nagar	Raigad military school\nCom-bldg				Com		32		BWG		0	0	0								2021-10-19
3274	Roshan Nagar	Raigad military school				Scl		32		Others		0	0	0								2021-10-19
3275	Roshan Nagar	Mariyam public high school				Scl			16	Others	yes	0	9	0								2021-10-19
3276	Roshan Nagar	Belvedere spring school				Scl				Others		0	0	0								2021-10-19
3277	Roshan Nagar	Level resident				Res.				Others		-	-	-								2021-10-19
3278	Roshan Nagar	Oshiwara akash ganga				Res.		28		Others	yes	31	10	0								2021-10-19
3279	Roshan Nagar	Oshwara vishal				Res.		28		Others	yes	29	15	0								2021-10-19
3280	Roshan Nagar	Oshiwara sahyadri				Res.		56		Others	yes	41	5	0								2021-10-19
3281	Roshan Nagar	Oshiwara girnar				Res.		56		Others	yes	51	15	0								2021-10-19
3282	Roshan Nagar	Johig				Res.		28		Others	yes	50	50	0								2021-10-19
3283	Roshan Nagar	Oshiwara ravikiran				Res.		28		Others	yes	47	50	0								2021-10-19
3284	Roshan Nagar	Oshiwara satpuda				Res.		56		Others		0	0	0								2021-10-19
3285	Roshan Nagar	Green daimond				Res.		40		After 2007 (BWG)	yes	62	25	0						27/09/2021	Sameer Shaik(sup)\n9920048273	2021-10-19
3286	Roshan Nagar	Jogeshwari ganesh niwas				Res.		80		BWG/SRA	yes	60	19	0						27/09/2021	Bhagwan Jadhav\n9821800369	2021-10-19
3287	Roshan Nagar	Roshan nagar b1				Res.		52	12	After 2007 (BWG/SRA)	yes	72	16	0						27/09/2021	Ashok Dongre\n9833455170	2021-10-19
3288	Roshan Nagar	Roshan nagar b2				Res.		82	13	After 2007 (BWG/SRA)	yes	80		0						27/09/2021	Alim Khan\n8879313127	2021-10-19
3289	Roshan Nagar	Lashkaria empress				Res.		56	6	After 2007 (BWG/SRA)		-	-	-				Out source		21/09/2021	Sameer Shaik\n9920048273	2021-10-19
3290	Roshan Nagar	Oriental education 				Clg		0		Others		-	-	-								2021-10-19
3291	Roshan Nagar	Green heights (lashkaria)				Res.		0		BWG		0	0	0				Out source		21/09/2021	Aslam Lashkaria\n9820990707	2021-10-19
3292	Roshan Nagar	Shree sai lila (sra)				Res.		56		BWG		0	0	0								2021-10-19
3293	Roshan Nagar	Shivspruthi bldg no.1 				Res.		88		BWG	yes	70	25	0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-19
3294	Roshan Nagar	Shivspruthi bldg no.2 				Res.				BWG /SRA	yes	71		0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-19
3295	Anand Nagar	Techweb centre				Com				Others		0	35	0								2021-10-19
3296	Anand Nagar	Daimond /pearl				Res.		18	2	Others		27	19	0								2021-10-19
3297	Anand Nagar	Vijay vishal				Res.		78		BWG		4	18	0						20/09/2021	Chandrakant Kale\n9969003025	2021-10-19
3298	Anand Nagar	Spice tower				Com			16	Others		-	-	-				out source				2021-10-19
3299	Anand Nagar	Sandipani shikshak oshiwara				Res.		91	28	After 2007 (BWG)		0	0	0						20/09/2021	Rammani C. Dube\n9702334382	2021-10-19
3300	Anand Nagar	Vaibhav palace				Res.		48	28	Others		0	15	0								2021-10-19
3301	Mega Mall	Assistant commissioner police oshiwara division mumbai				Com						0	0	0								2021-10-19
3302	Mega Mall	Jay ambe				Res.		100		BWG		0	0	0						28/09/2021	Amar Pal\n9920612050	2021-10-19
3303	Mega Mall	Mahataranga				Res.		52	4	Others	yes	21	0	2								2021-10-19
3304	Mega Mall	Swati apartment				Res.		28	7	Others	yes	29	20	1								2021-10-19
3305	Mega Mall	1 bhk				Com				Others		-	-	-					-			2021-10-19
3306	Mega Mall	Meera tower				Res.		100	28	BWG		-	-	-				out source			A.K.Singh (Mang)\n9930317315	2021-10-19
3307	Green Park	East side no.28				Res.		32		MHADA		2	25	0				bin comp	24/09/2021			2021-10-19
3308	Green Park	Samruddhi no.29				Res.		32		MHADA		0	18	0				bin comp				2021-10-19
3309	Green Park	Anand vihar				Res.		42		MHADA		75	22	0				-	24/09/2021			2021-10-19
3310	Green Park	Oshiwara basera				Res.		28		MHADA		5	0	1				bin comp				2021-10-19
3311	Green Park	Park paradise				Res.		44	12	MHADA		0	22	2				bin comp	25/09/2021			2021-10-19
3312	Green Park	The park (lotus)				Res.		42		MHADA		-	-	-				-	-			2021-10-19
3313	Tarapore	K.l walawalkar mcgm garden				Grdn				Others	yes	0	0	0								2021-10-19
3314	Tarapore	Atlantis				Res.		22		Others	yes	27	19	0								2021-10-19
3315	Tarapore	Deep apartment & tower				Res.		100		BWG	yes	0	10	0				out source		28/09/2021	Zuber Menon	2021-10-19
3316	Tarapore	Harjanhans				Res.				Others	yes	0	6	0								2021-10-19
3317	Tarapore	Kohinoor i				Res.				Others	yes	0	8	0				out source				2021-10-19
3318	Tarapore	Kohinoor ii				Res.				Others	yes	0	0	0				out source				2021-10-19
3319	Tarapore	Shantivan mhada (7 bldg)				Res.		7x28		MHADA	yes	120	6	0					25/09/2021			2021-10-19
3320	Tarapore	Bmc garden ii				Grdn				Others	yes	0	0	0								2021-10-19
3321	Tarapore	Rims international school 				Scl				Others	yes	0	0	0								2021-10-19
3322	Tarapore	Samartha deep				Res.		160		BWG		-	-	-				Out Source	-	-	-	2021-10-19
3323	Tarapore	Samartha ashish				Res.		74		Others	yes	0	5	0				Out Source				2021-10-19
3324	Tarapore	Aakash				Res.		28		MHADA	yes	0	8	0				bin comp	26/09/2021			2021-10-19
3325	Tarapore	Eden garden no.22				Res.		32		MHADA	yes	0	10	0				bin comp	18/09/2021			2021-10-19
3326	Tarapore	Samartha aangan				Res.		330		After 2007 (BWG)	yes	926	65	20								2021-10-19
3327	Tarapore	Gulmohar				Res.		32		MHADA	yes	60	12	0								2021-10-19
3328	Tarapore	Mayfair no.20				Res.		32	6	MHADA	yes	51	15	0				bin comp	18/09/2021			2021-10-19
3329	Tarapore	Indra darshan l				Res.		264		BWG		-	-	-				Out source	-		-	2021-10-19
3330	Tarapore	Indra darshan ll				Res.		330		BWG		-	-	-				Out source	-	-	-	2021-10-19
3331	Tarapore	Tarapore garden no. 1,2,3				Res.		294		BWG	yes	0	55	20				OWC		18/09/2021	Sanjeev Sharma\n9920304152	2021-10-19
3332	Tarapore	Tarapore tower				Res.		269		BWG		-	-	-				Out source	-	18/09/2021	Arun poddar\n9920720066	2021-10-19
3333	Tarapore	Samartha vaibhav				Com		103	20	Others	yes	0	12	0								2021-10-19
3334	Azad Nagar Petrol Pump	Tulip no.6				Res.		37	2	MHADA		10	12	0				Bin comp				2021-10-19
3335	Azad Nagar Petrol Pump	Aster no.5				Res.		34		MHADA		12	15	0				Bin comp				2021-10-19
3336	Jbcn School Lane	Blue bell no.8				Res.		34	4	MHADA	yes	35	12	0				Bin comp				2021-10-19
3337	Jbcn School Lane	Avalon no7				Res.		30		MHADA	yes	41	30	0								2021-10-19
3338	Jbcn School Lane	(jbcn) international school				Scl				Others		-	5	-								2021-10-19
3339	Jbcn School Lane	Daffodils no.10				Res.		32		MHADA	yes	0	15	0				Bin comp				2021-10-19
3340	Jbcn School Lane	Indus no.9				Res.		32		MHADA	yes	20	5	0				Bin comp				2021-10-19
3341	Oshiwara Garden	Maheshwari hall				Com				Others		0	0	0								2021-10-19
3342	Oshiwara Garden	Suriyakiran no.19				Res.		32	6	MHADA	yes	14	18	3				bin comp	18/09/2021			2021-10-19
3343	Oshiwara Garden	Amity no.18				Res.		32		MHADA	yes	11	100	2				bin comp	18/09/2021			2021-10-19
3344	Oshiwara Garden	Oshiwara mhada garden				Grdn				After 2007 (BWG)	yes	0	1	0				bin comp	18/09/2021			2021-10-19
3345	Oshiwara Garden	Green view no.17				Res.		32		MHADA	yes	2	15	2				bin comp	18/09/2021			2021-10-19
3346	Oshiwara Garden	Hima sai no.16				Res.		32		MHADA	yes	2	5	1				bin comp	18/09/2021			2021-10-19
3347	Oshiwara Garden	Raja rani malhotra vidyalaya				Scl		40		Others		0	0	0								2021-10-19
3348	Oshiwara Garden	Hvps education complex				Clg				Others	yes	0	15	0								2021-10-19
3349	Oshiwara Garden	Goenka international school				Scl			22	Others	yes	0	9	0								2021-10-19
3350	Oshiwara Garden	Marble arch school				Scl			22	Others		0	0	0								2021-10-19
3351	Oshiwara Garden	Goverment of india building				Res.		30		Others	yes	0	5	0								2021-10-19
3352	Oshiwara Garden	Sanskar no.15				Res.		28		MHADA	yes	19	15	0					-	-	-	2021-10-19
3353	Bmc Road	Aradhana gurunanak sra				Res.		286	25	BWG	yes	0	50	0					-	-	-	2021-10-19
3354	Bmc Road	Annapoorna chs				Res.		30		Others	yes	0	20	0					-	-	-	2021-10-19
3355	Bmc Road	Godavari no1				Res.		40		MHADA	yes	10	15	20				Bin comp	02/10/2021			2021-10-19
3356	Bmc Road	Krishna no 2				Res.		40		MHADA	yes		30					Bin comp	02/10/2021			2021-10-19
3357	Bmc Road	Narmadha no 3				Res.		40		MHADA	-yes							Bin comp	02/10/2021			2021-10-19
3358	Bmc Road	Kaveri no 4				Res.		40		MHADA	yes							Bin comp	02/10/2021			2021-10-19
3359	Bmc Road	Panchvati no 5				Res.		40		MHADA	yes		20					Bin comp	02/10/2021			2021-10-19
3360	Bmc Road	Saptha shrungi no 6				Res.		40		MHADA	yes							Bin comp				2021-10-19
3361	Bmc Road	Sai siddhii no 7				Res.		40		MHADA	yes							Bin comp				2021-10-19
3362	Bmc Road	Serenity shree sai wings adef chs				Res.		72		BWG	yes	0	40	2						18/09/2021	Nandkishore Ghag\n9821394023	2021-10-19
3363	Bmc Road	Serenity shree sai wings b1,b2 chs				Res.				BWG	yes									18/09/2021	Vare (Mang)\n9699720927	2021-10-19
3364	Bmc Road	Serenity shree sai wings ghi chs				Res.		84		BWG	yes		50							18/09/2021	Suryanarayan Chube \n9702021707	2021-10-19
3365	Bmc Road	City international school				Scl				Others		-	-	-								2021-10-19
3366	Heera Panna Road	Sumukh heights				Res.		42		Others	no	0	0	0								2021-10-19
3367	Heera Panna Road	Aanand seva samity				Res.		102	11	BWG /SRA	no	0	0	0						27/09/2021	Mansoor Ali Khan\n9022887279	2021-10-19
3368	Heera Panna Road	Reliable business centre				Com			11	After 2007 (BWG)		0	0	0						27/09/2021	Shakeel Shaik\n9821326518	2021-10-19
3369	Heera Panna Road	Om heera panna premises				Com			290	BWG	no	-	-	-				bin comp	27/09/2021	27/09/2021	Kisanlal Hans\n9892408602	2021-10-19
3370	Heera Panna Road	Oshiwara link plaza				Com			199	Others		-	-	-								2021-10-19
3371	Heera Panna Road	Oshiwara yashodeep 				Res.		60		BWG /SRA	no	10	0	1				Bin comp		18/09/2021	Ishwar  Hubale\n9870473923	2021-10-19
3372	Heera Panna Road	(sbi) officers quatres 35				Res.		90		MHADA	yes	0	15	4				Bin comp				2021-10-19
3373	Heera Panna Road	Godavari 								MHADA	yes	0	8	0				Bin comp				2021-10-19
3374	Heera Panna Road	Yamuna 38				Res.		55	12	MHADA	yes	0	10	2				Bin comp				2021-10-19
3375	Heera Panna Road	Kaveri no41				Res.				MHADA	yes	0	12	0				Bin comp				2021-10-19
3376	Heera Panna Road	Mhada sargam no40				Res.		88	4	MHADA	yes	0	4	0				Bin comp				2021-10-19
3377	Heera Panna Road	Sebi gaurur				Res.		30		Others	no	0	0	0				Bin comp				2021-10-19
3378	Heera Panna Road	Gujarat bhavan				Res.		28		Others	yes	0	0	0				Bin comp				2021-10-19
3379	Heera Panna Road	Tata communication residential colony				Res.		105		MHADA	yes	0	30	0				comp bin				2021-10-19
3380	Heera Panna Road	Andhra bank quartres				Res.		62		MHADA	yes	0	15	0				comp bin				2021-10-19
3381	Heera Panna Road	Bmc garden i				Grdn				Others	yes	0	0	0								2021-10-19
3382	Oshiwara Mahada New Link Road	Marigold no. 1				Res.		34		MHADA	yes	0	13	0				Bin comp				2021-10-19
3383	Oshiwara Mahada New Link Road	Anuksa no.2				Res.		34		MHADA	yes	0	15	0				Bin comp				2021-10-19
3384	Oshiwara Mahada New Link Road	Aroma no.3				Res.		34		MHADA	yes	20	20					Bin comp				2021-10-19
3385	Oshiwara Mahada New Link Road	Sunshine no.4				Res.		34		MHADA	yes	21	4	0				Bin comp				2021-10-19
3386	Oshiwara Mahada New Link Road	Starship no.11				Res.		28		MHADA	yes	6	8	0				Bin comp	18/09/2021			2021-10-19
3387	Oshiwara Mahada New Link Road	Lotus no.12				Res.		32		MHADA	yes	10	5	4				Bin comp	18/09/2021			2021-10-19
3388	Oshiwara Mahada New Link Road	Utsav no.13				Res.		32		MHADA	yes	47	9	0				comp bin  returned				2021-10-19
3389	Oshiwara Mahada New Link Road	Rajanigandha no.14				Res.		32		MHADA	yes	0	5	3				Bin comp	18/09/2021			2021-10-19
3390	Oshiwara Mahada New Link Road	Income tax officers no.24				Res.		34		MHADA	yes	16	5	0				Bin comp	05.10.2021			2021-10-19
3391	Oshiwara Mahada New Link Road	Link way no.25				Res.		34		MHADA	yes	5	20	2				Bin comp				2021-10-19
3392	Oshiwara Mahada New Link Road	Central excise res.iety no.26				Res.		32		MHADA	yes	25	30	0								2021-10-19
3393	Oshiwara Mahada New Link Road	Central excise res.iety no.27				Res.		32		MHADA	yes	29	25	0								2021-10-19
3394	Oshiwara Mahada New Link Road	Harshvardhan chamber									yes	0	4	0								2021-10-19
3395	Oshiwara Mahada New Link Road	Oshiwara police chowki				Com				Others	no	0	0	0								2021-10-19
3396	Oshiwara Mahada New Link Road	Matru chayya				Res.		32		MHADA	yes	0	12	2				Bin comp				2021-10-19
3397	Oshiwara Mahada New Link Road	Ekdant society				Res.		34		MHADA	yes	0	5	2				Bin comp				2021-10-19
3398	Oshiwara Mahada New Link Road	Parth no.43				Res.		32		MHADA	yes	0	15	0				Bin comp				2021-10-19
3399	Oshiwara Mahada New Link Road	Fakir wadi (t.camp)				Res.				Others	yes	451	0	0								2021-10-19
3400	Behram  Baug	Shakti seva sangh				Res.		91	14	BWG/SRA		0	0	0								2021-10-20
3401	Behram  Baug	Ujala nagar sra				Res.		116	21	After 2007 (BWG/SRA)		0	0	0								2021-10-20
3402	Behram  Baug	Patel sra				Res.				Others		0	0	0								2021-10-20
3403	Behram  Baug	Sakirabi				Res.		114	16	After 2007 (BWG/SRA)		0	0	0								2021-10-20
3404	Behram  Baug	Parsi colony				Res.		13x28		Others	yes	150	29	0								2021-10-20
3405	Behram  Baug	Shama chs				Res.				Others		0	0	0								2021-10-20
3406	Behram  Baug	Anupa public high scl				Scl				Others		0	0	0								2021-10-20
3407	Behram  Baug	Sarvodhaya sra				Res.				BWG		0	0	0					03/10/2021			2021-10-20
3408	Behram  Baug	Range heights				Com				After 2007 (BWG)		0	0	0								2021-10-20
3409	Behram  Baug	Santosh nagar sra				Res.				BWG		0	0	0						28/09/2021	Amersen Yadav\n9867974333	2021-10-20
3410	Behram  Baug	Green palace				Res.				Others		0	0	0								2021-10-20
3411	Roshan Nagar	Millenium court				Res.		80	1	BWG	yes	30	9							27/09/2021	Nitinn Ranga\n9821337126	2021-10-20
3412	Roshan Nagar	Evershine green				Res.		206	14	BWG	yes	60	25							18/09/2021	Rohit Sharma (chr)\n9819309474	2021-10-20
3413	Roshan Nagar	Raigad military school\nCom-bldg				Com		32		BWG		-	0	-								2021-10-20
3414	Roshan Nagar	Raigad military school				Scl		32		Others		-	0	-								2021-10-20
3415	Roshan Nagar	Mariyam public high school				Scl			16	Others		-	0	-								2021-10-20
3416	Roshan Nagar	Belvedere spring school				Scl				Others		-	0	-								2021-10-20
3417	Roshan Nagar	Level resident				Res.				Others		-	-	-								2021-10-20
3418	Roshan Nagar	Oshiwara akash ganga				Res.		28		Others	yes	10	50	0								2021-10-20
3419	Roshan Nagar	Oshwara vishal				Res.		28		Others	yes	5	16	0								2021-10-20
3420	Roshan Nagar	Oshiwara sahyadri				Res.		56		Others	yes	30	8	0								2021-10-20
3421	Roshan Nagar	Oshiwara girnar				Res.		56		Others	yes	30	10	0								2021-10-20
3422	Roshan Nagar	Johig				Res.		28		Others	yes	15	22	0								2021-10-20
3423	Roshan Nagar	Oshiwara ravikiran				Res.		28		Others	yes	5	25	0								2021-10-20
3424	Roshan Nagar	Oshiwara satpuda				Res.		56		Others	yes	0	0	0								2021-10-20
3425	Roshan Nagar	Green daimond				Res.		40		After 2007 (BWG)	yes	60	22	0						27/09/2021	Sameer Shaik(sup)\n9920048273	2021-10-20
3426	Roshan Nagar	Jogeshwari ganesh niwas				Res.		80		BWG/SRA	yes	30	15	0						27/09/2021	Bhagwan Jadhav\n9821800369	2021-10-20
3427	Roshan Nagar	Roshan nagar b1				Res.		52	12	After 2007 (BWG/SRA)	yes	0	28	0						27/09/2021	Ashok Dongre\n9833455170	2021-10-20
3428	Roshan Nagar	Roshan nagar b2				Res.		82	13	After 2007 (BWG/SRA)	yes	0		0						27/09/2021	Alim Khan\n8879313127	2021-10-20
3429	Roshan Nagar	Lashkaria empress				Res.		56	6	After 2007 (BWG/SRA)		-	-	-				Out source		21/09/2021	Sameer Shaik\n9920048273	2021-10-20
3430	Roshan Nagar	Oriental education 				Clg		0		Others		0	0	0								2021-10-20
3686	Behram  Baug	Shama chs				Res.				Others	no	0	0	0								2021-10-22
3431	Roshan Nagar	Green heights (lashkaria)				Res.		0		BWG		-	-	-				Out source		21/09/2021	Aslam Lashkaria\n9820990707	2021-10-20
3432	Roshan Nagar	Shree sai lila (sra)				Res.		56		BWG		0	0	0								2021-10-20
3433	Roshan Nagar	Shivspruthi bldg no.1 				Res.		88		BWG	yes	40	22	0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-20
3434	Roshan Nagar	Shivspruthi bldg no.2 				Res.				BWG /SRA	yes	45		0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-20
3435	Anand Nagar	Techweb centre				Com				Others	yes	0	55	0								2021-10-20
3436	Anand Nagar	Daimond /pearl				Res.		18	2	Others	yes	50	19	0								2021-10-20
3437	Anand Nagar	Vijay vishal				Res.		78		BWG	yes	30	22	0						20/09/2021	Chandrakant Kale\n9969003025	2021-10-20
3438	Anand Nagar	Spice tower				Com			16	Others		-	-	-				out source				2021-10-20
3439	Anand Nagar	Sandipani shikshak oshiwara				Res.		91	28	After 2007 (BWG)	no	0	0	0						20/09/2021	Rammani C. Dube\n9702334382	2021-10-20
3440	Anand Nagar	Vaibhav palace				Res.		48	28	Others	yes	50	15	0								2021-10-20
3441	Mega Mall	Assistant commissioner police oshiwara division mumbai				Com						0	0	0								2021-10-20
3442	Mega Mall	Jay ambe				Res.		100		BWG		0	0	0						28/09/2021	Amar Pal\n9920612050	2021-10-20
3443	Mega Mall	Mahataranga				Res.		52	4	Others		0	0	0								2021-10-20
3444	Mega Mall	Swati apartment				Res.		28	7	Others	yes	0	10	0								2021-10-20
3445	Mega Mall	1 bhk				Com				Others		0	0	0					-			2021-10-20
3446	Mega Mall	Meera tower				Res.		100	28	BWG		-	-	-				out source			A.K.Singh (Mang)\n9930317315	2021-10-20
3447	Green Park	East side no.28				Res.		32		MHADA	yes	2	25	0				bin comp	24/09/2021			2021-10-20
3448	Green Park	Samruddhi no.29				Res.		32		MHADA	yes	20	15	0				bin comp				2021-10-20
3449	Green Park	Anand vihar				Res.		42		MHADA	yes	50	16	0				-	24/09/2021			2021-10-20
3450	Green Park	Oshiwara basera				Res.		28		MHADA	yes	0	12	10				bin comp				2021-10-20
3451	Green Park	Park paradise				Res.		44	12	MHADA	yes	30	18	5				bin comp	25/09/2021			2021-10-20
3452	Green Park	The park (lotus)				Res.		42		MHADA		-	-	-				-	-			2021-10-20
3453	Tarapore	K.l walawalkar mcgm garden				Grdn				Others		-	-	-								2021-10-20
3454	Tarapore	Atlantis				Res.		22		Others	yes	0	19	5								2021-10-20
3455	Tarapore	Deep apartment & tower				Res.		100		BWG	yes	0	18	0						28/09/2021	Zuber Menon	2021-10-20
3456	Tarapore	Harjanhans				Res.				Others			5									2021-10-20
3457	Tarapore	Kohinoor i				Res.				Others			0					out source				2021-10-20
3458	Tarapore	Kohinoor ii				Res.				Others			15					out source				2021-10-20
3459	Tarapore	Shantivan mhada (7 bldg)				Res.		7x28		MHADA	yes	80	22	0					25/09/2021			2021-10-20
3460	Tarapore	Bmc garden ii				Grdn				Others		0	0	0								2021-10-20
3461	Tarapore	Rims international school 				Scl				Others		0	0	0								2021-10-20
3462	Tarapore	Samartha deep				Res.		160		BWG		-	-	-				Out Source	-	-	-	2021-10-20
3463	Tarapore	Samartha ashish				Res.		74		Others	yes	0	2	0								2021-10-20
3464	Tarapore	Aakash				Res.		28		MHADA	yes	20	15	0				bin comp	26/09/2021			2021-10-20
3465	Tarapore	Eden garden no.22				Res.		32		MHADA	yes	5	10	0				bin comp	18/09/2021			2021-10-20
3466	Tarapore	Samartha aangan				Res.		330		After 2007 (BWG)	yes	500	60	50								2021-10-20
3467	Tarapore	Gulmohar				Res.		32		MHADA	yes	40	8	0								2021-10-20
3468	Tarapore	Mayfair no.20				Res.		32	6	MHADA	yes	50	12	0				bin comp	18/09/2021			2021-10-20
3469	Tarapore	Indra darshan l				Res.		264		BWG	yes	-	-	-				Out source	-		-	2021-10-20
3470	Tarapore	Indra darshan ll				Res.		330		BWG	yes	-	-	-				Out source	-	-	-	2021-10-20
3471	Tarapore	Tarapore garden no. 1,2,3				Res.		294		BWG	yes	0	60	30				OWC		18/09/2021	Sanjeev Sharma\n9920304152	2021-10-20
3472	Tarapore	Tarapore tower				Res.		269		BWG		-	-	-				Out source	-	18/09/2021	Arun poddar\n9920720066	2021-10-20
3473	Tarapore	Samartha vaibhav				Com		103	20	Others	yes	0	20	0								2021-10-20
3474	Azad Nagar Petrol Pump	Tulip no.6				Res.		37	2	MHADA	yes	0	10	0				Bin comp				2021-10-20
3475	Azad Nagar Petrol Pump	Aster no.5				Res.		34		MHADA	yes	5	0	0				Bin comp				2021-10-20
3476	Jbcn School Lane	Blue bell no.8				Res.		34	4	MHADA	yes	0	12	0				Bin comp				2021-10-20
3477	Jbcn School Lane	Avalon no7				Res.		30		MHADA	yes	0	18	0								2021-10-20
3478	Jbcn School Lane	(jbcn) international school				Scl				Others		-	7	-								2021-10-20
3479	Jbcn School Lane	Daffodils no.10				Res.		32		MHADA	yes	20	7	0				Bin comp				2021-10-20
3480	Jbcn School Lane	Indus no.9				Res.		32		MHADA	yes	30	8	0				Bin comp				2021-10-20
3481	Oshiwara Garden	Maheshwari hall				Com				Others		0	0	0								2021-10-20
3482	Oshiwara Garden	Suriyakiran no.19				Res.		32	6	MHADA	yes	10	10	0				bin comp	18/09/2021			2021-10-20
3483	Oshiwara Garden	Amity no.18				Res.		32		MHADA	yes	10	12	0				bin comp	18/09/2021			2021-10-20
3484	Oshiwara Garden	Oshiwara mhada garden				Grdn				After 2007 (BWG)	yes	0	0	0				bin comp	18/09/2021			2021-10-20
3485	Oshiwara Garden	Green view no.17				Res.		32		MHADA	yes	20	18	5				bin comp	18/09/2021			2021-10-20
3486	Oshiwara Garden	Hima sai no.16				Res.		32		MHADA	yes	10	6	2				bin comp	18/09/2021			2021-10-20
3487	Oshiwara Garden	Raja rani malhotra vidyalaya				Scl		40		Others	yes	0	8	0								2021-10-20
3488	Oshiwara Garden	Hvps education complex				Clg				Others	yes	0	15	0								2021-10-20
3489	Oshiwara Garden	Goenka international school				Scl			22	Others	yes	0	12	0								2021-10-20
3490	Oshiwara Garden	Marble arch school				Scl			22	Others	yes	0	0	0								2021-10-20
3491	Oshiwara Garden	Goverment of india building				Res.		30		Others	yes	0	7	0								2021-10-20
3492	Oshiwara Garden	Sanskar no.15				Res.		28		MHADA	yes	15	15	5					-	-	-	2021-10-20
3493	Bmc Road	Aradhana gurunanak sra				Res.		286	25	BWG	yes	250	20	0					-	-	-	2021-10-20
3494	Bmc Road	Annapoorna chs				Res.		30		Others	yes	90	15	0					-	-	-	2021-10-20
3495	Bmc Road	Godavari no1				Res.		40		MHADA	yes	0	10	0				Bin comp	02/10/2021			2021-10-20
3496	Bmc Road	Krishna no 2				Res.		40		MHADA	yes		30					Bin comp	02/10/2021			2021-10-20
3497	Bmc Road	Narmadha no 3				Res.		40		MHADA	yes							Bin comp	02/10/2021			2021-10-20
3498	Bmc Road	Kaveri no 4				Res.		40		MHADA	yes							Bin comp	02/10/2021			2021-10-20
3499	Bmc Road	Panchvati no 5				Res.		40		MHADA	yes		20					Bin comp	02/10/2021			2021-10-20
3500	Bmc Road	Saptha shrungi no 6				Res.		40		MHADA	yes							Bin comp				2021-10-20
3501	Bmc Road	Sai siddhii no 7				Res.		40		MHADA	yes							Bin comp				2021-10-20
3502	Bmc Road	Serenity shree sai wings adef chs				Res.		72		BWG	yes	50	25	35						18/09/2021	Nandkishore Ghag\n9821394023	2021-10-20
3503	Bmc Road	Serenity shree sai wings b1,b2 chs				Res.				BWG	yes									18/09/2021	Vare (Mang)\n9699720927	2021-10-20
3504	Bmc Road	Serenity shree sai wings ghi chs				Res.		84		BWG	yes		20							18/09/2021	Suryanarayan Chube \n9702021707	2021-10-20
3505	Bmc Road	City international school				Scl				Others	yes	0	2	0								2021-10-20
3506	Heera Panna Road	Sumukh heights				Res.		42		Others	no	0	0	0								2021-10-20
3507	Heera Panna Road	Aanand seva samity				Res.		102	11	BWG /SRA		-	-	-						27/09/2021	Mansoor Ali Khan\n9022887279	2021-10-20
3508	Heera Panna Road	Reliable business centre				Com			11	After 2007 (BWG)	yes	0	50	0						27/09/2021	Shakeel Shaik\n9821326518	2021-10-20
3509	Heera Panna Road	Om heera panna premises				Com			290	BWG	no	0	0	0				bin comp	27/09/2021	27/09/2021	Kisanlal Hans\n9892408602	2021-10-20
3510	Heera Panna Road	Oshiwara link plaza				Com			199	Others	no	0	0	0								2021-10-20
3511	Heera Panna Road	Oshiwara yashodeep 				Res.		60		BWG /SRA	yes	0	9	0				Bin comp		18/09/2021	Ishwar  Hubale\n9870473923	2021-10-20
3512	Heera Panna Road	(sbi) officers quatres 35				Res.		90		MHADA	yes	5	12	0				Bin comp				2021-10-20
3513	Heera Panna Road	Godavari 								MHADA	yes	40	7	0				Bin comp				2021-10-20
3514	Heera Panna Road	Yamuna 38				Res.		55	12	MHADA	yes		10					Bin comp				2021-10-20
3515	Heera Panna Road	Kaveri no41				Res.				MHADA	yes		9					Bin comp				2021-10-20
3516	Heera Panna Road	Mhada sargam no40				Res.		88	4	MHADA	yes	0	5	0				Bin comp				2021-10-20
3517	Heera Panna Road	Sebi gaurur				Res.		30		Others	yes	0	8	0				Bin comp				2021-10-20
3518	Heera Panna Road	Gujarat bhavan				Res.		28		Others	yes	0	6	0				Bin comp				2021-10-20
3519	Heera Panna Road	Tata communication residential colony				Res.		105		MHADA	yes	15	30	5				comp bin				2021-10-20
3520	Heera Panna Road	Andhra bank quartres				Res.		62		MHADA	yes	5	15	0				comp bin				2021-10-20
3521	Heera Panna Road	Bmc garden i				Grdn				Others		0	0	0								2021-10-20
3522	Oshiwara Mahada New Link Road	Marigold no. 1				Res.		34		MHADA	yes	40	5	0				Bin comp				2021-10-20
3523	Oshiwara Mahada New Link Road	Anushkaa no.2				Res.		34		MHADA	yes	30	4	0				Bin comp				2021-10-20
3524	Oshiwara Mahada New Link Road	Aroma no.3				Res.		34		MHADA	yes	0	7	2				Bin comp				2021-10-20
3525	Oshiwara Mahada New Link Road	Sunshine no.4				Res.		34		MHADA	yes	0	5	0				Bin comp				2021-10-20
3526	Oshiwara Mahada New Link Road	Starship no.11				Res.		28		MHADA	yes	8	8	0				Bin comp	18/09/2021			2021-10-20
3527	Oshiwara Mahada New Link Road	Lotus no.12				Res.		32		MHADA	yes	0	4	0				Bin comp	18/09/2021			2021-10-20
3528	Oshiwara Mahada New Link Road	Utsav no.13				Res.		32		MHADA	yes	70	7	2				comp bin  returned				2021-10-20
3529	Oshiwara Mahada New Link Road	Rajanigandha no.14				Res.		32		MHADA	yes	0	8	0				Bin comp	18/09/2021			2021-10-20
3530	Oshiwara Mahada New Link Road	Income tax officers no.24				Res.		34		MHADA	yes	30	4	5				Bin comp	05.10.2021			2021-10-20
3531	Oshiwara Mahada New Link Road	Link way no.25				Res.		34		MHADA	yes	5	20	0				Bin comp				2021-10-20
3532	Oshiwara Mahada New Link Road	Central excise res.iety no.26				Res.		32		MHADA	yes	30	25	0								2021-10-20
3533	Oshiwara Mahada New Link Road	Central excise res.iety no.27				Res.		32		MHADA	yes	20	20	0								2021-10-20
3534	Oshiwara Mahada New Link Road	Harshvardhan chamber									yes	0	8	0								2021-10-20
3535	Oshiwara Mahada New Link Road	Oshiwara police chowki				Com				Others	no	0	0	0								2021-10-20
3536	Oshiwara Mahada New Link Road	Matru chayya				Res.		32		MHADA	yes	15	8	0				Bin comp				2021-10-20
3537	Oshiwara Mahada New Link Road	Ekdant society				Res.		34		MHADA	yes	0	5	0				Bin comp				2021-10-20
3538	Oshiwara Mahada New Link Road	Parth no.43				Res.		32		MHADA	yes	0	12	0				Bin comp				2021-10-20
3539	Oshiwara Mahada New Link Road	Fakir wadi (t.camp)				Res.				Others		0	45	0								2021-10-20
3540	Oshiwara Mahada New Link Road	Temple										50	0	0								2021-10-20
3541	Behram  Baug	Shakti seva sangh				Res.		91	14	BWG/SRA		-	-	-								2021-10-21
3542	Behram  Baug	Ujala nagar sra				Res.		116	21	After 2007 (BWG/SRA)		-	-	-								2021-10-21
3543	Behram  Baug	Patel sra				Res.				Others		-	-	-								2021-10-21
3544	Behram  Baug	Sakirabi				Res.		114	16	After 2007 (BWG/SRA)		-	-	-								2021-10-21
3545	Behram  Baug	Parsi colony				Res.		13x28		Others	yes	243	59	0								2021-10-21
3546	Behram  Baug	Shama chs				Res.				Others		-	-	-								2021-10-21
3547	Behram  Baug	Anupa public high scl				Scl				Others		-	-	-								2021-10-21
3548	Behram  Baug	Sarvodhaya sra				Res.				BWG		-								03/10/2021		2021-10-21
3549	Behram  Baug	Range heights				Com				After 2007 (BWG)		-	-	-								2021-10-21
3550	Behram  Baug	Santosh nagar sra				Res.				BWG		-	-	-						28/09/2021	Amersen Yadav\n9867974333	2021-10-21
3551	Behram  Baug	Green palace				Res.				Others		-	-	-								2021-10-21
3552	Roshan Nagar	Millenium court				Res.		80	1	BWG	yes	9	18	0						27/09/2021	Nitinn Ranga\n9821337126	2021-10-21
3553	Roshan Nagar	Evershine green				Res.		206	14	BWG	yes	31	70	0						18/09/2021	Rohit Sharma (chr)\n9819309474	2021-10-21
3554	Roshan Nagar	Raigad military school\nCom-bldg				Com		32		BWG		-	-	-								2021-10-21
3555	Roshan Nagar	Raigad military school				Scl		32		Others		-	-	-								2021-10-21
3556	Roshan Nagar	Mariyam public high school				Scl			16	Others		-	-	-								2021-10-21
3557	Roshan Nagar	Belvedere spring school				Scl				Others		-	-	-								2021-10-21
3558	Roshan Nagar	Level resident				Res.				Others		-	-	-								2021-10-21
3559	Roshan Nagar	Oshiwara akash ganga				Res.		28		Others	yes	7	8	0								2021-10-21
3560	Roshan Nagar	Oshwara vishal				Res.		28		Others	yes	31	10	0								2021-10-21
3561	Roshan Nagar	Oshiwara sahyadri				Res.		56		Others	yes	44	4	0								2021-10-21
3562	Roshan Nagar	Oshiwara girnar				Res.		56		Others	yes	38	3	0								2021-10-21
3563	Roshan Nagar	Johig				Res.		28		Others	yes	27	15	0								2021-10-21
3564	Roshan Nagar	Oshiwara ravikiran				Res.		28		Others	yes	33	16	0								2021-10-21
3565	Roshan Nagar	Oshiwara satpuda				Res.		56		Others		-	-	-								2021-10-21
3566	Roshan Nagar	Green daimond				Res.		40		After 2007 (BWG)	yes	36	15	0						27/09/2021	Sameer Shaik(sup)\n9920048273	2021-10-21
3567	Roshan Nagar	Jogeshwari ganesh niwas				Res.		80		BWG/SRA	yes	36	26	0						27/09/2021	Bhagwan Jadhav\n9821800369	2021-10-21
3568	Roshan Nagar	Roshan nagar b1				Res.		52	12	After 2007 (BWG/SRA)	yes	49	0	0						27/09/2021	Ashok Dongre\n9833455170	2021-10-21
3569	Roshan Nagar	Roshan nagar b2				Res.		82	13	After 2007 (BWG/SRA)	yes			0						27/09/2021	Alim Khan\n8879313127	2021-10-21
3570	Roshan Nagar	Lashkaria empress				Res.		56	6	After 2007 (BWG/SRA)		-	-	-				Out source		21/09/2021	Sameer Shaik\n9920048273	2021-10-21
3571	Roshan Nagar	Oriental education 				Clg		0		Others		0	0	0								2021-10-21
3572	Roshan Nagar	Green heights (lashkaria)				Res.		0		BWG		-	-	-				Out source		21/09/2021	Aslam Lashkaria\n9820990707	2021-10-21
3573	Roshan Nagar	Shree sai lila (sra)				Res.		56		BWG		0	0	0								2021-10-21
3574	Roshan Nagar	Shivspruthi bldg no.1 				Res.		88		BWG	yes	74	20	0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-21
3575	Roshan Nagar	Shivspruthi bldg no.2 				Res.				BWG /SRA	yes	84		0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-21
3576	Anand Nagar	Techweb centre				Com				Others	yes	0	80	0								2021-10-21
3577	Anand Nagar	Daimond /pearl				Res.		18	2	Others	yes	37	15	0								2021-10-21
3578	Anand Nagar	Vijay vishal				Res.		78		BWG	yes	8	35	0						20/09/2021	Chandrakant Kale\n9969003025	2021-10-21
3579	Anand Nagar	Spice tower				Com			16	Others		-	-	-				out source				2021-10-21
3580	Anand Nagar	Sandipani shikshak oshiwara				Res.		91	28	After 2007 (BWG)	no	0	0	0						20/09/2021	Rammani C. Dube\n9702334382	2021-10-21
3581	Anand Nagar	Vaibhav palace				Res.		48	28	Others	yes	7	8	0								2021-10-21
3582	Mega Mall	Assistant commissioner police oshiwara division mumbai				Com					no	0	0	0								2021-10-21
3583	Mega Mall	Jay ambe				Res.		100		BWG	yes	0	0	0						28/09/2021	Amar Pal\n9920612050	2021-10-21
3584	Mega Mall	Mahataranga				Res.		52	4	Others		0	0	0								2021-10-21
3585	Mega Mall	Swati apartment				Res.		28	7	Others	yes	2	0	0								2021-10-21
3586	Mega Mall	1 bhk				Com				Others	yes	0	0	0					-			2021-10-21
3587	Mega Mall	Meera tower				Res.		100	28	BWG			-	-				out source			A.K.Singh (Mang)\n9930317315	2021-10-21
3588	Green Park	East side no.28				Res.		32		MHADA	yes	3	15	0				bin comp	24/09/2021			2021-10-21
3589	Green Park	Samruddhi no.29				Res.		32		MHADA	yes	0	16	0				bin comp	06.10.2021			2021-10-21
3590	Green Park	Anand vihar				Res.		42		MHADA	yes	63	16	0				bin comp	24/09/2021			2021-10-21
3591	Green Park	Oshiwara basera				Res.		28		MHADA	yes	0	4	17				bin comp				2021-10-21
3592	Green Park	Park paradise				Res.		44	12	MHADA	yes	0	19	7				bin comp	25/09/2021			2021-10-21
3593	Green Park	The park (lotus)				Res.		42		MHADA		-	-	-				-	-			2021-10-21
3594	Tarapore	K.l walawalkar mcgm garden				Grdn				Others		0	0	0								2021-10-21
3595	Tarapore	Atlantis				Res.		22		Others	yes	0	17	6								2021-10-21
3596	Tarapore	Deep apartment & tower				Res.		100		BWG	yes	0	15	0						28/09/2021	Zuber Menon	2021-10-21
3597	Tarapore	Harjanhans				Res.				Others	yes	0	6	0								2021-10-21
3598	Tarapore	Kohinoor i				Res.				Others	yes	0	0	0								2021-10-21
3599	Tarapore	Kohinoor ii				Res.				Others	yes	0	12	0								2021-10-21
3600	Tarapore	Shantivan mhada (7 bldg)				Res.		7x28		MHADA	yes	154	20	0					25/09/2021			2021-10-21
3601	Tarapore	Bmc garden ii				Grdn				Others		0	0	0								2021-10-21
3602	Tarapore	Rims international school 				Scl				Others	yes	0	0	0								2021-10-21
3603	Tarapore	Samartha deep				Res.		160		BWG		-	-	-				Out Source	-	-	-	2021-10-21
3604	Tarapore	Samartha ashish				Res.		74		Others		0	0	0								2021-10-21
3605	Tarapore	Aakash				Res.		28		MHADA	yes	38	8	0				bin comp	26/09/2021			2021-10-21
3606	Tarapore	Eden garden no.22				Res.		32		MHADA	yes	0	13	0				bin comp	18/09/2021			2021-10-21
3607	Tarapore	Samartha aangan				Res.		330		After 2007 (BWG)	yes	570	68	57								2021-10-21
3608	Tarapore	Gulmohar				Res.		32		MHADA	yes	47	14	0								2021-10-21
3609	Tarapore	Mayfair no.20				Res.		32	6	MHADA	yes	36	19	0				bin comp	18/09/2021			2021-10-21
3610	Tarapore	Indra darshan l				Res.		264		BWG		-	-	-				Out source	-		-	2021-10-21
3611	Tarapore	Indra darshan ll				Res.		330		BWG		-	-	-				Out source	-	-	-	2021-10-21
3612	Tarapore	Tarapore garden no. 1,2,3				Res.		294		BWG	yes	0	65	0				OWC		18/09/2021	Sanjeev Sharma\n9920304152	2021-10-21
3613	Tarapore	Tarapore tower				Res.		269		BWG		-	-	-				Out source	-	18/09/2021	Arun poddar\n9920720066	2021-10-21
3614	Tarapore	Samartha vaibhav				Com		103	20	Others	yes	0	17	0								2021-10-21
3615	Azad Nagar Petrol Pump	Tulip no.6				Res.		37	2	MHADA	yes	0	8	0				Bin comp				2021-10-21
3616	Azad Nagar Petrol Pump	Aster no.5				Res.		34		MHADA	yes	6	0	1				Bin comp				2021-10-21
3617	Jbcn School Lane	Blue bell no.8				Res.		34	4	MHADA	yes	19	20	11				Bin comp				2021-10-21
3618	Jbcn School Lane	Avalon no7				Res.		30		MHADA	yes	25	25	13								2021-10-21
3619	Jbcn School Lane	(jbcn) international school				Scl				Others	yes	0	9	0								2021-10-21
3620	Jbcn School Lane	Daffodils no.10				Res.		32		MHADA	yes	0	15	0				Bin comp				2021-10-21
3621	Jbcn School Lane	Indus no.9				Res.		32		MHADA	yes	12	8	0				Bin comp				2021-10-21
3622	Oshiwara Garden	Maheshwari hall				Com				Others		-	-	-								2021-10-21
3623	Oshiwara Garden	Suriyakiran no.19				Res.		32	6	MHADA	yes	0	20	0				bin comp	18/09/2021			2021-10-21
3624	Oshiwara Garden	Amity no.18				Res.		32		MHADA	yes	25	18	0				bin comp	18/09/2021			2021-10-21
3625	Oshiwara Garden	Oshiwara mhada garden				Grdn				After 2007 (BWG)	yes	0	0	0				bin comp	18/09/2021			2021-10-21
3626	Oshiwara Garden	Green view no.17				Res.		32		MHADA	yes	13	12					bin comp	18/09/2021			2021-10-21
3627	Oshiwara Garden	Hima sai no.16				Res.		32		MHADA	yes	11	8					bin comp	18/09/2021			2021-10-21
3628	Oshiwara Garden	Raja rani malhotra vidyalaya				Scl		40		Others		-	5	-								2021-10-21
3629	Oshiwara Garden	Hvps education complex				Clg				Others		-	12	-								2021-10-21
3630	Oshiwara Garden	Goenka international school				Scl			22	Others		-	8	-								2021-10-21
3631	Oshiwara Garden	Marble arch school				Scl			22	Others		-	-	-								2021-10-21
3632	Oshiwara Garden	Goverment of india building				Res.		30		Others		-	4	-								2021-10-21
3633	Oshiwara Garden	Sanskar no.15				Res.		28		MHADA	yes	13	20	11					-	-	-	2021-10-21
3634	Bmc Road	Aradhana gurunanak sra				Res.		286	25	BWG	yes	247	0	0					-	-	-	2021-10-21
3635	Bmc Road	Annapoorna chs				Res.		30		Others	yes	0	0	0					-	-	-	2021-10-21
3636	Bmc Road	Godavari no1				Res.		40		MHADA	yes	0	0	0				Bin comp	02/10/2021			2021-10-21
3637	Bmc Road	Krishna no 2				Res.		40		MHADA	yes	0	0	0				Bin comp	02/10/2021			2021-10-21
3638	Bmc Road	Narmadha no 3				Res.		40		MHADA	yes	0		0				Bin comp	02/10/2021			2021-10-21
3639	Bmc Road	Kaveri no 4				Res.		40		MHADA	yes	0		0				Bin comp	02/10/2021			2021-10-21
3640	Bmc Road	Panchvati no 5				Res.		40		MHADA	yes	0	0	5				Bin comp	02/10/2021			2021-10-21
3641	Bmc Road	Saptha shrungi no 6				Res.		40		MHADA	yes							Bin comp				2021-10-21
3642	Bmc Road	Sai siddhii no 7				Res.		40		MHADA	yes							Bin comp				2021-10-21
3643	Bmc Road	Serenity shree sai wings adef chs				Res.		72		BWG	yes	52	0	28						18/09/2021	Nandkishore Ghag\n9821394023	2021-10-21
3644	Bmc Road	Serenity shree sai wings b1,b2 chs				Res.				BWG	yes									18/09/2021	Vare (Mang)\n9699720927	2021-10-21
3645	Bmc Road	Serenity shree sai wings ghi chs				Res.		84		BWG	yes		0							18/09/2021	Suryanarayan Chube \n9702021707	2021-10-21
3646	Bmc Road	City international school				Scl				Others		-	-	-								2021-10-21
3647	Heera Panna Road	Sumukh heights				Res.		42		Others		-	-	-								2021-10-21
3648	Heera Panna Road	Aanand seva samity				Res.		102	11	BWG /SRA		-	-	-						27/09/2021	Mansoor Ali Khan\n9022887279	2021-10-21
3649	Heera Panna Road	Reliable business centre				Com			11	After 2007 (BWG)		-	-	-						27/09/2021	Shakeel Shaik\n9821326518	2021-10-21
3650	Heera Panna Road	Om heera panna premises				Com			290	BWG		-	-	-				bin comp	27/09/2021	27/09/2021	Kisanlal Hans\n9892408602	2021-10-21
3651	Heera Panna Road	Oshiwara link plaza				Com			199	Others		-	-	-								2021-10-21
3652	Heera Panna Road	Oshiwara yashodeep 				Res.		60		BWG /SRA	yes	2	0	0				Bin comp		18/09/2021	Ishwar  Hubale\n9870473923	2021-10-21
3653	Heera Panna Road	(sbi) officers quatres 35				Res.		90		MHADA	yes	1	12	0				Bin comp				2021-10-21
3654	Heera Panna Road	Godavari 								MHADA	yes	11	0	0				Bin comp				2021-10-21
3655	Heera Panna Road	Yamuna 38				Res.		55	12	MHADA	yes		0					Bin comp				2021-10-21
3656	Heera Panna Road	Kaveri no41				Res.				MHADA	yes		0					Bin comp				2021-10-21
3657	Heera Panna Road	Mhada sargam no40				Res.		88	4	MHADA	yes	2	0	0				Bin comp				2021-10-21
3658	Heera Panna Road	Sebi gaurur				Res.		32		Others	yes	0	0	0				Bin comp				2021-10-21
3659	Heera Panna Road	Gujarat bhavan				Res.		28		Others	yes	0	0	0				Bin comp				2021-10-21
3660	Heera Panna Road	Tata communication residential colony				Res.		105		MHADA		5	12	0				comp bin				2021-10-21
3661	Heera Panna Road	Andhra bank quartres				Res.		62		MHADA		2.5	12	9				comp bin				2021-10-21
3662	Heera Panna Road	Bmc garden i				Grdn				Others		0	0	0								2021-10-21
3663	Oshiwara Mahada New Link Road	Marigold no. 1				Res.		34		MHADA	yes	6	12	3				Bin comp				2021-10-21
3664	Oshiwara Mahada New Link Road	Anushkaa no.2				Res.		34		MHADA	yes	0	8	0				Bin comp				2021-10-21
3665	Oshiwara Mahada New Link Road	Aroma no.3				Res.		34		MHADA	yes	11		2				Bin comp				2021-10-21
3666	Oshiwara Mahada New Link Road	Sunshine no.4				Res.		34		MHADA	yes		15					Bin comp				2021-10-21
3667	Oshiwara Mahada New Link Road	Starship no.11				Res.		28		MHADA	yes	0	12	0				Bin comp	18/09/2021			2021-10-21
3668	Oshiwara Mahada New Link Road	Lotus no.12				Res.		32		MHADA	yes	17	5	4				Bin comp	18/09/2021			2021-10-21
3669	Oshiwara Mahada New Link Road	Utsav no.13				Res.		32		MHADA	yes	0	7	0				comp bin  returned				2021-10-21
3670	Oshiwara Mahada New Link Road	Rajanigandha no.14				Res.		32		MHADA	yes	0	0	0				Bin comp	18/09/2021			2021-10-21
3671	Oshiwara Mahada New Link Road	Income tax officers no.24				Res.		34		MHADA	yes	23	4	0				Bin comp	05.10.2021			2021-10-21
3672	Oshiwara Mahada New Link Road	Link way no.25				Res.		34		MHADA	yes	0	8	0				Bin comp				2021-10-21
3673	Oshiwara Mahada New Link Road	Central excise res.iety no.26				Res.		32		MHADA	yes	35	20	0								2021-10-21
3674	Oshiwara Mahada New Link Road	Central excise res.iety no.27				Res.		32		MHADA	yes	25	25	0								2021-10-21
3675	Oshiwara Mahada New Link Road	Harshvardhan chamber									yes											2021-10-21
3676	Oshiwara Mahada New Link Road	Oshiwara police chowki				Com				Others												2021-10-21
3677	Oshiwara Mahada New Link Road	Matru chayya				Res.		32		MHADA	yes	0	13	2				Bin comp				2021-10-21
3678	Oshiwara Mahada New Link Road	Ekdant society				Res.		34		MHADA	yes	2.5	5	0				Bin comp				2021-10-21
3679	Oshiwara Mahada New Link Road	Parth no.43				Res.		32		MHADA	yes	0	10	0				Bin comp				2021-10-21
3680	Oshiwara Mahada New Link Road	Fakir wadi (t.camp)				Res.				Others	yes	255	119	0								2021-10-21
3681	Behram  Baug	Shakti seva sangh				Res.		91	14	BWG/SRA	no	0	0	0								2021-10-22
3682	Behram  Baug	Ujala nagar sra				Res.		116	21	After 2007 (BWG/SRA)	no	0	0	0								2021-10-22
3683	Behram  Baug	Patel sra				Res.				Others	no	0	0	0								2021-10-22
3684	Behram  Baug	Sakirabi				Res.		114	16	After 2007 (BWG/SRA)	no	0	0	0								2021-10-22
3685	Behram  Baug	Parsi colony				Res.		13x28		Others	yes	182	65	0								2021-10-22
3687	Behram  Baug	Anupa public high scl				Scl				Others		0	0	0								2021-10-22
3688	Behram  Baug	Sarvodhaya sra				Res.				BWG	no	0	0	0						03/10/2021		2021-10-22
3689	Behram  Baug	Range heights				Com				After 2007 (BWG)		-	-	-								2021-10-22
3690	Behram  Baug	Santosh nagar sra				Res.				BWG	no	0	0	0						28/09/2021	Amersen Yadav\n9867974333	2021-10-22
3691	Behram  Baug	Green palace				Res.				Others	no	0	0	0								2021-10-22
3692	Roshan Nagar	Millenium court				Res.		80	1	BWG	yes	25	9	0						27/09/2021	Nitinn Ranga\n9821337126	2021-10-22
3693	Roshan Nagar	Evershine green				Res.		206	14	BWG	yes	20	56	3						18/09/2021	Rohit Sharma (chr)\n9819309474	2021-10-22
3694	Roshan Nagar	Raigad military school\nCom-bldg				Com		32		BWG	yes	0	0	0								2021-10-22
3695	Roshan Nagar	Raigad military school				Scl		32		Others	yes	0	0	0								2021-10-22
3696	Roshan Nagar	Mariyam public high school				Scl			16	Others	yes	0	10	0								2021-10-22
3697	Roshan Nagar	Belvedere spring school				Scl				Others	yes	0	0	0								2021-10-22
3698	Roshan Nagar	Level resident				Res.				Others	yes	-	-	-								2021-10-22
3699	Roshan Nagar	Oshiwara akash ganga				Res.		28		Others	yes	42	15	0								2021-10-22
3700	Roshan Nagar	Oshwara vishal				Res.		28		Others	yes	45	20	0								2021-10-22
3701	Roshan Nagar	Oshiwara sahyadri				Res.		56		Others	yes	31	3	0								2021-10-22
3702	Roshan Nagar	Oshiwara girnar				Res.		56		Others	yes	51	5	0								2021-10-22
3703	Roshan Nagar	Johig				Res.		28		Others	yes	25	16	0								2021-10-22
3704	Roshan Nagar	Oshiwara ravikiran				Res.		28		Others	yes	47	10	0								2021-10-22
3705	Roshan Nagar	Oshiwara satpuda				Res.		56		Others		-	-	-								2021-10-22
3706	Roshan Nagar	Green daimond				Res.		40		After 2007 (BWG)	yes	66	12	0						27/09/2021	Sameer Shaik(sup)\n9920048273	2021-10-22
3707	Roshan Nagar	Jogeshwari ganesh niwas				Res.		80		BWG/SRA	yes	97	19	0						27/09/2021	Bhagwan Jadhav\n9821800369	2021-10-22
3708	Roshan Nagar	Roshan nagar b1				Res.		52	12	After 2007 (BWG/SRA)	yes	86	15	0						27/09/2021	Ashok Dongre\n9833455170	2021-10-22
3709	Roshan Nagar	Roshan nagar b2				Res.		82	13	After 2007 (BWG/SRA)	yes	95		0						27/09/2021	Alim Khan\n8879313127	2021-10-22
3710	Roshan Nagar	Lashkaria empress				Res.		56	6	After 2007 (BWG/SRA)		-	-	-				Out source		21/09/2021	Sameer Shaik\n9920048273	2021-10-22
3711	Roshan Nagar	Oriental education 				Clg		0		Others		-	-	-								2021-10-22
3712	Roshan Nagar	Green heights (lashkaria)				Res.		0		BWG		-	-	-				Out source		21/09/2021	Aslam Lashkaria\n9820990707	2021-10-22
3713	Roshan Nagar	Shree sai lila (sra)				Res.		56		BWG	yes	0	0	0								2021-10-22
3714	Roshan Nagar	Shivspruthi bldg no.1 				Res.		88		BWG	yes	91	0	0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-22
3715	Roshan Nagar	Shivspruthi bldg no.2 				Res.				BWG /SRA	yes	93		0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-22
3716	Anand Nagar	Techweb centre				Com				Others	yes	0	55	0								2021-10-22
3717	Anand Nagar	Daimond /pearl				Res.		18	2	Others	yes	27	16	0								2021-10-22
3718	Anand Nagar	Vijay vishal				Res.		78		BWG	yes	10	16	2						20/09/2021	Chandrakant Kale\n9969003025	2021-10-22
3719	Anand Nagar	Spice tower				Com			16	Others		-	0	-				out source				2021-10-22
3720	Anand Nagar	Sandipani shikshak oshiwara				Res.		91	28	After 2007 (BWG)	yes	0	14	3						20/09/2021	Rammani C. Dube\n9702334382	2021-10-22
3721	Anand Nagar	Vaibhav palace				Res.		48	28	Others	yes	15	12	1								2021-10-22
3722	Mega Mall	Assistant commissioner police oshiwara division mumbai				Com					no	0	0	0								2021-10-22
3723	Mega Mall	Jay ambe				Res.		100		BWG	yes	0	0	0						28/09/2021	Amar Pal\n9920612050	2021-10-22
3724	Mega Mall	Mahataranga				Res.		52	4	Others	yes	27	0	0								2021-10-22
3725	Mega Mall	Swati apartment				Res.		28	7	Others	yes	26	0	0								2021-10-22
3726	Mega Mall	1 bhk				Com				Others		0	22	0					-			2021-10-22
3727	Mega Mall	Meera tower				Res.		100	28	BWG		-	-	-				out source			A.K.Singh (Mang)\n9930317315	2021-10-22
3728	Green Park	East side no.28				Res.		32		MHADA	yes	1	22	0				bin comp	24/09/2021			2021-10-22
3729	Green Park	Samruddhi no.29				Res.		32		MHADA	yes	0	13	0				bin comp	06.10.2021			2021-10-22
3730	Green Park	Anand vihar				Res.		42		MHADA	yes	30	21	0				bin comp	24/09/2021			2021-10-22
3731	Green Park	Oshiwara basera				Res.		28		MHADA	yes	0	8	15				bin comp				2021-10-22
3732	Green Park	Park paradise				Res.		44	12	MHADA	yes	0	19	5				bin comp	25/09/2021			2021-10-22
3733	Green Park	The park (lotus)				Res.		42		MHADA		-	-	-				-	-			2021-10-22
3734	Tarapore	K.l walawalkar mcgm garden				Grdn				Others		-	-	-								2021-10-22
3735	Tarapore	Atlantis				Res.		22		Others	yes	30	10	0								2021-10-22
3736	Tarapore	Deep apartment & tower				Res.		100		BWG	yes	0	18	0						28/09/2021	Zuber Menon	2021-10-22
3737	Tarapore	Harjanhans				Res.				Others	no	0	2	0								2021-10-22
3738	Tarapore	Kohinoor i				Res.				Others	yes	-	3	-				out source				2021-10-22
3739	Tarapore	Kohinoor ii				Res.				Others	yes	-	4	-				out source				2021-10-22
3740	Tarapore	Shantivan mhada (7 bldg)				Res.		7x28		MHADA	yes	150	4	0					25/09/2021			2021-10-22
3741	Tarapore	Bmc garden ii				Grdn				Others	yes	0	0	0								2021-10-22
3742	Tarapore	Rims international school 				Scl				Others	yes	0	0	0								2021-10-22
3743	Tarapore	Samartha deep				Res.		160		BWG		-	-	-				Out Source	-	-	-	2021-10-22
3744	Tarapore	Samartha ashish				Res.		74		Others	yes	0	15	0								2021-10-22
3745	Tarapore	Aakash				Res.		28		MHADA	yes	0	4	0				bin comp	26/09/2021			2021-10-22
3746	Tarapore	Eden garden no.22				Res.		32		MHADA	yes	0	10	0				bin comp	18/09/2021			2021-10-22
3747	Tarapore	Samartha aangan				Res.		330		After 2007 (BWG)	yes	215	30	0								2021-10-22
3748	Tarapore	Gulmohar				Res.		32		MHADA	yes	30	8	0								2021-10-22
3749	Tarapore	Mayfair no.20				Res.		32	6	MHADA	yes	30	15	0				bin comp	18/09/2021			2021-10-22
3750	Tarapore	Indra darshan l				Res.		264		BWG		-	-	-				Out source	-		-	2021-10-22
3751	Tarapore	Indra darshan ll				Res.		330		BWG		-	-	-				Out source	-	-	-	2021-10-22
3752	Tarapore	Tarapore garden no. 1,2,3				Res.		294		BWG	yes	0	80	20				OWC		18/09/2021	Sanjeev Sharma\n9920304152	2021-10-22
3753	Tarapore	Tarapore tower				Res.		269		BWG		-	-	-				Out source	-	18/09/2021	Arun poddar\n9920720066	2021-10-22
3754	Tarapore	Samartha vaibhav				Com		103	20	Others	yes	0	25	0								2021-10-22
3755	Azad Nagar Petrol Pump	Tulip no.6				Res.		37	2	MHADA	yes	30	25	0				Bin comp				2021-10-22
3756	Azad Nagar Petrol Pump	Aster no.5				Res.		34		MHADA	yes	10	0	2				Bin comp				2021-10-22
3757	Jbcn School Lane	Blue bell no.8				Res.		34	4	MHADA	yes	60	25	0				Bin comp				2021-10-22
3758	Jbcn School Lane	Avalon no7				Res.		30		MHADA	yes	60	15	0								2021-10-22
3759	Jbcn School Lane	(jbcn) international school				Scl				Others	yes	0	18	0								2021-10-22
3760	Jbcn School Lane	Daffodils no.10				Res.		32		MHADA	yes	10	30	0				Bin comp				2021-10-22
3761	Jbcn School Lane	Indus no.9				Res.		32		MHADA	yes	50	8	0				Bin comp				2021-10-22
3762	Oshiwara Garden	Maheshwari hall				Com				Others	yes	0	0	0								2021-10-22
3763	Oshiwara Garden	Suriyakiran no.19				Res.		32	6	MHADA	yes	0	20	0				bin comp	18/09/2021			2021-10-22
3764	Oshiwara Garden	Amity no.18				Res.		32		MHADA	yes	0	15	0				bin comp	18/09/2021			2021-10-22
3765	Oshiwara Garden	Oshiwara mhada garden				Grdn				After 2007 (BWG)	yes	50	0	0				bin comp	18/09/2021			2021-10-22
3766	Oshiwara Garden	Green view no.17				Res.		32		MHADA	yes	0	20	0				bin comp	18/09/2021			2021-10-22
3767	Oshiwara Garden	Hima sai no.16				Res.		32		MHADA	yes	5	15	0				bin comp	18/09/2021			2021-10-22
3768	Oshiwara Garden	Raja rani malhotra vidyalaya				Scl		40		Others	yes	0	4	0								2021-10-22
3769	Oshiwara Garden	Hvps education complex				Clg				Others	yes	0	10	0								2021-10-22
3770	Oshiwara Garden	Goenka international school				Scl			22	Others	yes	0	35	0								2021-10-22
3771	Oshiwara Garden	Marble arch school				Scl			22	Others	yes	0	0	0								2021-10-22
3772	Oshiwara Garden	Goverment of india building				Res.		30		Others	yes	0	4	0								2021-10-22
3773	Oshiwara Garden	Sanskar no.15				Res.		28		MHADA	yes	30	18	2					-	-	-	2021-10-22
3774	Bmc Road	Aradhana gurunanak sra				Res.		286	25	BWG	yes	380	80	0					-	-	-	2021-10-22
3775	Bmc Road	Annapoorna chs				Res.		30		Others	yes	0	30	0					-	-	-	2021-10-22
3776	Bmc Road	Godavari no1				Res.		40		MHADA	yes	0	8	0				Bin comp	02/10/2021			2021-10-22
3777	Bmc Road	Krishna no 2				Res.		40		MHADA	yes	0	0	0				Bin comp	02/10/2021			2021-10-22
3778	Bmc Road	Narmadha no 3				Res.		40		MHADA	yes	0		0				Bin comp	02/10/2021			2021-10-22
3779	Bmc Road	Kaveri no 4				Res.		40		MHADA	yes	0		0				Bin comp	02/10/2021			2021-10-22
3780	Bmc Road	Panchvati no 5				Res.		40		MHADA	yes	0	20	0				Bin comp	02/10/2021			2021-10-22
3781	Bmc Road	Saptha shrungi no 6				Res.		40		MHADA	yes							Bin comp				2021-10-22
3782	Bmc Road	Sai siddhii no 7				Res.		40		MHADA	yes							Bin comp				2021-10-22
3783	Bmc Road	Serenity shree sai wings adef chs				Res.		72		BWG	yes	15	60	10						18/09/2021	Nandkishore Ghag\n9821394023	2021-10-22
3784	Bmc Road	Serenity shree sai wings b1,b2 chs				Res.				BWG	yes									18/09/2021	Vare (Mang)\n9699720927	2021-10-22
3785	Bmc Road	Serenity shree sai wings ghi chs				Res.		84		BWG	yes		45							18/09/2021	Suryanarayan Chube \n9702021707	2021-10-22
3786	Bmc Road	City international school				Scl				Others	yes	0	12	0								2021-10-22
3787	Heera Panna Road	Sumukh heights				Res.		42		Others		-	-	-								2021-10-22
3788	Heera Panna Road	Aanand seva samity				Res.		102	11	BWG /SRA		-	-	-						27/09/2021	Mansoor Ali Khan\n9022887279	2021-10-22
3789	Heera Panna Road	Reliable business centre				Com			11	After 2007 (BWG)	yes	-	-	-						27/09/2021	Shakeel Shaik\n9821326518	2021-10-22
3790	Heera Panna Road	Om heera panna premises				Com			290	BWG	yes	-	-	-				bin comp	27/09/2021	27/09/2021	Kisanlal Hans\n9892408602	2021-10-22
3791	Heera Panna Road	Oshiwara link plaza				Com			199	Others	no	0	0	0								2021-10-22
3792	Heera Panna Road	Oshiwara yashodeep 				Res.		60		BWG /SRA	yes	0	0	2				Bin comp		18/09/2021	Ishwar  Hubale\n9870473923	2021-10-22
3793	Heera Panna Road	(sbi) officers quatres 35				Res.		90		MHADA	yes	0	24	0				Bin comp				2021-10-22
3794	Heera Panna Road	Godavari 								MHADA	yes	0	0	0				Bin comp				2021-10-22
3795	Heera Panna Road	Yamuna 38				Res.		55	12	MHADA	yes		0					Bin comp				2021-10-22
3796	Heera Panna Road	Kaveri no41				Res.				MHADA	yes		0					Bin comp				2021-10-22
3797	Heera Panna Road	Mhada sargam no40				Res.		88	4	MHADA	yes	0	8	0				Bin comp				2021-10-22
3798	Heera Panna Road	Sebi gaurur				Res.		32		Others	yes	0	0					Bin comp				2021-10-22
3799	Heera Panna Road	Gujarat bhavan				Res.		28		Others	yes	0	0	0				Bin comp				2021-10-22
3800	Heera Panna Road	Tata communication residential colony				Res.		105		MHADA	yes	0	8	0				comp bin				2021-10-22
3801	Heera Panna Road	Andhra bank quartres				Res.		62		MHADA	yes	0	15	0				comp bin				2021-10-22
3802	Heera Panna Road	Bmc garden i				Grdn				Others	yes	0		0								2021-10-22
3803	Oshiwara Mahada New Link Road	Marigold no. 1				Res.		34		MHADA	yes	0	20	0				Bin comp				2021-10-22
3804	Oshiwara Mahada New Link Road	Anushkaa no.2				Res.		34		MHADA	yes	30	8	10				Bin comp				2021-10-22
3805	Oshiwara Mahada New Link Road	Aroma no.3				Res.		34		MHADA	yes	0	6	0				Bin comp				2021-10-22
3806	Oshiwara Mahada New Link Road	Sunshine no.4				Res.		34		MHADA	yes		30					Bin comp				2021-10-22
3807	Oshiwara Mahada New Link Road	Starship no.11				Res.		28		MHADA	yes	0	35	0				Bin comp	18/09/2021			2021-10-22
3808	Oshiwara Mahada New Link Road	Lotus no.12				Res.		32		MHADA	yes	0	8	0				Bin comp	18/09/2021			2021-10-22
3809	Oshiwara Mahada New Link Road	Utsav no.13				Res.		32		MHADA	yes	0	8	5				comp bin  returned				2021-10-22
3810	Oshiwara Mahada New Link Road	Rajanigandha no.14				Res.		32		MHADA	no	0	0	7				Bin comp	18/09/2021			2021-10-22
3811	Oshiwara Mahada New Link Road	Income tax officers no.24				Res.		34		MHADA	yes	0	4	0				Bin comp	05.10.2021			2021-10-22
3812	Oshiwara Mahada New Link Road	Link way no.25				Res.		34		MHADA	yes	20	30	10				Bin comp				2021-10-22
3813	Oshiwara Mahada New Link Road	Central excise res.iety no.26				Res.		32		MHADA	yes	40	25	0								2021-10-22
3814	Oshiwara Mahada New Link Road	Central excise res.iety no.27				Res.		32		MHADA	yes	25	27	0								2021-10-22
3815	Oshiwara Mahada New Link Road	Harshvardhan chamber									no	0	0	0								2021-10-22
3816	Oshiwara Mahada New Link Road	Oshiwara police chowki				Com				Others	no	0	0	0								2021-10-22
3817	Oshiwara Mahada New Link Road	Matru chayya				Res.		32		MHADA	yes	0	12	2				Bin comp				2021-10-22
3818	Oshiwara Mahada New Link Road	Ekdant society				Res.		34		MHADA	yes	0	8	0				Bin comp				2021-10-22
3819	Oshiwara Mahada New Link Road	Parth no.43				Res.		32		MHADA	yes	0	10	0				Bin comp				2021-10-22
3820	Oshiwara Mahada New Link Road	Fakir wadi (t.camp)				Res.				Others	yes	310	50	0								2021-10-22
3821	Behram  Baug	Shakti seva sangh				Res.		91	14	BWG/SRA	no	0	0	0								2021-10-23
3822	Behram  Baug	Ujala nagar sra				Res.		116	21	After 2007 (BWG/SRA)	no	0	0	0								2021-10-23
3823	Behram  Baug	Patel sra				Res.				Others	no	0	0	0								2021-10-23
3824	Behram  Baug	Sakirabi				Res.		114	16	After 2007 (BWG/SRA)	no	0	0	0								2021-10-23
3825	Behram  Baug	Parsi colony				Res.		13x28		Others	yes	218	65	0								2021-10-23
3826	Behram  Baug	Shama chs				Res.				Others	no	0	0	0								2021-10-23
3827	Behram  Baug	Anupa public high scl				Scl				Others		0	0	0								2021-10-23
3828	Behram  Baug	Sarvodhaya sra				Res.				BWG	no	0	0	0						03/10/2021		2021-10-23
3829	Behram  Baug	Range heights				Com				After 2007 (BWG)		-	-	-								2021-10-23
3830	Behram  Baug	Santosh nagar sra				Res.				BWG	no	0	0	0						28/09/2021	Amersen Yadav\n9867974333	2021-10-23
3831	Behram  Baug	Green palace				Res.				Others	no	0	0	0								2021-10-23
3832	Roshan Nagar	Millenium court				Res.		80	1	BWG	yes	0	15	0						27/09/2021	Nitinn Ranga\n9821337126	2021-10-23
3833	Roshan Nagar	Evershine green				Res.		206	14	BWG	yes	20	50	10						18/09/2021	Rohit Sharma (chr)\n9819309474	2021-10-23
3834	Roshan Nagar	Raigad military school\nCom-bldg				Com		32		BWG	yes	0	0	0								2021-10-23
3835	Roshan Nagar	Raigad military school				Scl		32		Others	yes	0	0	0								2021-10-23
3836	Roshan Nagar	Mariyam public high school				Scl			16	Others	yes	0	0	0								2021-10-23
3837	Roshan Nagar	Belvedere spring school				Scl				Others	yes	0	0	0								2021-10-23
3838	Roshan Nagar	Level resident				Res.				Others		-	-	-								2021-10-23
3839	Roshan Nagar	Oshiwara akash ganga				Res.		28		Others	yes	31	0	0								2021-10-23
3840	Roshan Nagar	Oshwara vishal				Res.		28		Others	yes	30	9	0								2021-10-23
3841	Roshan Nagar	Oshiwara sahyadri				Res.		56		Others	yes	35	0	0								2021-10-23
3842	Roshan Nagar	Oshiwara girnar				Res.		56		Others	yes	25	0	0								2021-10-23
3843	Roshan Nagar	Johig				Res.		28		Others	yes	30	8	0								2021-10-23
3844	Roshan Nagar	Oshiwara ravikiran				Res.		28		Others	yes	25	12	0								2021-10-23
3845	Roshan Nagar	Oshiwara satpuda				Res.		56		Others		-	-	-								2021-10-23
3846	Roshan Nagar	Green daimond				Res.		40		After 2007 (BWG)	yes	47	15	0						27/09/2021	Sameer Shaik(sup)\n9920048273	2021-10-23
3847	Roshan Nagar	Jogeshwari ganesh niwas				Res.		80		BWG/SRA	yes	73	23	0						27/09/2021	Bhagwan Jadhav\n9821800369	2021-10-23
3848	Roshan Nagar	Roshan nagar b1				Res.		52	12	After 2007 (BWG/SRA)	yes	65	18	0						27/09/2021	Ashok Dongre\n9833455170	2021-10-23
3849	Roshan Nagar	Roshan nagar b2				Res.		82	13	After 2007 (BWG/SRA)	yes	77		0						27/09/2021	Alim Khan\n8879313127	2021-10-23
3850	Roshan Nagar	Lashkaria empress				Res.		56	6	After 2007 (BWG/SRA)		-	-	-				Out source		21/09/2021	Sameer Shaik\n9920048273	2021-10-23
3851	Roshan Nagar	Oriental education 				Clg		0		Others		-	-	-								2021-10-23
3852	Roshan Nagar	Green heights (lashkaria)				Res.		0		BWG		-	-	-				Out source		21/09/2021	Aslam Lashkaria\n9820990707	2021-10-23
3853	Roshan Nagar	Shree sai lila (sra)				Res.		56		BWG	yes	0	0	0								2021-10-23
3854	Roshan Nagar	Shivspruthi bldg no.1 				Res.		88		BWG	yes	60	20	0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-23
3855	Roshan Nagar	Shivspruthi bldg no.2 				Res.				BWG /SRA	yes	73		0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-23
3856	Anand Nagar	Techweb centre				Com				Others	yes	0	59	0								2021-10-23
3857	Anand Nagar	Daimond /pearl				Res.		18	2	Others	yes	30	15	0								2021-10-23
3858	Anand Nagar	Vijay vishal				Res.		78		BWG	yes	0	20	2						20/09/2021	Chandrakant Kale\n9969003025	2021-10-23
3859	Anand Nagar	Spice tower				Com			16	Others		-	-	-				out source				2021-10-23
3860	Anand Nagar	Sandipani shikshak oshiwara				Res.		91	28	After 2007 (BWG)	yes	0	3	0						20/09/2021	Rammani C. Dube\n9702334382	2021-10-23
3861	Anand Nagar	Vaibhav palace				Res.		48	28	Others	yes	0	10	0								2021-10-23
3862	Mega Mall	Assistant commissioner police oshiwara division mumbai				Com					no	0	0	0								2021-10-23
3863	Mega Mall	Jay ambe				Res.		100		BWG	yes	0	10	0						28/09/2021	Amar Pal\n9920612050	2021-10-23
3864	Mega Mall	Mahataranga				Res.		52	4	Others	yes	18	0	0								2021-10-23
3865	Mega Mall	Swati apartment				Res.		28	7	Others	yes	19	0	0								2021-10-23
3866	Mega Mall	1 bhk				Com				Others	yes	0	15	0					-			2021-10-23
3867	Mega Mall	Meera tower				Res.		100	28	BWG		-	-	-				out source			A.K.Singh (Mang)\n9930317315	2021-10-23
3868	Green Park	East side no.28				Res.		32		MHADA	yes	1	0	2				bin comp	24/09/2021			2021-10-23
3869	Green Park	Samruddhi no.29				Res.		32		MHADA	yes	0	16	0				bin comp	06.10.2021			2021-10-23
3870	Green Park	Anand vihar				Res.		42		MHADA	yes	40	12	0				bin comp	24/09/2021			2021-10-23
3871	Green Park	Oshiwara basera				Res.		28		MHADA	yes	25	22	0				bin comp				2021-10-23
3872	Green Park	Park paradise				Res.		44	12	MHADA	yes	0	18	3				bin comp	25/09/2021			2021-10-23
3873	Green Park	The park (lotus)				Res.		42		MHADA		-	-	-				-	-			2021-10-23
3874	Tarapore	K.l walawalkar mcgm garden				Grdn				Others		-	-	-								2021-10-23
3875	Tarapore	Atlantis				Res.		22		Others	yes	32	16	0								2021-10-23
3876	Tarapore	Deep apartment & tower				Res.		100		BWG	yes	0	16	0						28/09/2021	Zuber Menon	2021-10-23
3877	Tarapore	Harjanhans				Res.				Others	no	0	5	0								2021-10-23
3878	Tarapore	Kohinoor i				Res.				Others	yes	-	-	-				out source				2021-10-23
3879	Tarapore	Kohinoor ii				Res.				Others	yes	-	9	-				out source				2021-10-23
3880	Tarapore	Shantivan mhada (7 bldg)				Res.		7x28		MHADA	yes	135	35	0					25/09/2021			2021-10-23
3881	Tarapore	Bmc garden ii				Grdn				Others	yes	0	0	0								2021-10-23
3882	Tarapore	Rims international school 				Scl				Others	yes	32	0	0								2021-10-23
3883	Tarapore	Samartha deep				Res.		160		BWG		-	-	-				Out Source	-	-	-	2021-10-23
3884	Tarapore	Samartha ashish				Res.		74		Others	yes	0	0	0								2021-10-23
3885	Tarapore	Aakash				Res.		28		MHADA	yes	19	13	0				bin comp	26/09/2021			2021-10-23
3886	Tarapore	Eden garden no.22				Res.		32		MHADA	yes	15	12	0				bin comp	18/09/2021			2021-10-23
3887	Tarapore	Samartha aangan				Res.		330		After 2007 (BWG)	yes	60	68	15								2021-10-23
3888	Tarapore	Gulmohar				Res.		32		MHADA	yes	47	22	0								2021-10-23
3889	Tarapore	Mayfair no.20				Res.		32	6	MHADA	yes	27	22	0				bin comp	18/09/2021			2021-10-23
3890	Tarapore	Indra darshan l				Res.		264		BWG		-	-	-				Out source	-		-	2021-10-23
3891	Tarapore	Indra darshan ll				Res.		330		BWG		-	-	-				Out source	-	-	-	2021-10-23
3892	Tarapore	Tarapore garden no. 1,2,3				Res.		294		BWG	yes	0	55	35				OWC		18/09/2021	Sanjeev Sharma\n9920304152	2021-10-23
3893	Tarapore	Tarapore tower				Res.		269		BWG		-	-	-				Out source	-	18/09/2021	Arun poddar\n9920720066	2021-10-23
3894	Tarapore	Samartha vaibhav				Com		103	20	Others	yes	0	23	0								2021-10-23
3895	Azad Nagar Petrol Pump	Tulip no.6				Res.		37	2	MHADA	yes	25	15	0				Bin comp				2021-10-23
3896	Azad Nagar Petrol Pump	Aster no.5				Res.		34		MHADA	yes	7	15	10				Bin comp				2021-10-23
3897	Jbcn School Lane	Blue bell no.8				Res.		34	4	MHADA	yes	27		0				Bin comp				2021-10-23
3898	Jbcn School Lane	Avalon no7				Res.		30		MHADA	yes	33		0								2021-10-23
3899	Jbcn School Lane	(jbcn) international school				Scl				Others	yes	0	0	0								2021-10-23
3900	Jbcn School Lane	Daffodils no.10				Res.		32		MHADA	yes	31		0				Bin comp				2021-10-23
3901	Jbcn School Lane	Indus no.9				Res.		32		MHADA	yes	29		0				Bin comp				2021-10-23
3902	Oshiwara Garden	Maheshwari hall				Com				Others	yes	0	0	0								2021-10-23
3903	Oshiwara Garden	Suriyakiran no.19				Res.		32	6	MHADA	yes	3		1				bin comp	18/09/2021			2021-10-23
3904	Oshiwara Garden	Amity no.18				Res.		32		MHADA	yes	0		2				bin comp	18/09/2021			2021-10-23
3905	Oshiwara Garden	Oshiwara mhada garden				Grdn				After 2007 (BWG)	yes	40		0				bin comp	18/09/2021			2021-10-23
3906	Oshiwara Garden	Green view no.17				Res.		32		MHADA	yes	0		2				bin comp	18/09/2021			2021-10-23
3907	Oshiwara Garden	Hima sai no.16				Res.		32		MHADA	yes	1		3				bin comp	18/09/2021			2021-10-23
3908	Oshiwara Garden	Raja rani malhotra vidyalaya				Scl		40		Others	yes	0	0	0								2021-10-23
3909	Oshiwara Garden	Hvps education complex				Clg				Others	yes	0		0								2021-10-23
3910	Oshiwara Garden	Goenka international school				Scl			22	Others	yes	0	0	0								2021-10-23
3911	Oshiwara Garden	Marble arch school				Scl			22	Others	yes	0	0	0								2021-10-23
3912	Oshiwara Garden	Goverment of india building				Res.		30		Others	yes	0	0	0								2021-10-23
3913	Oshiwara Garden	Sanskar no.15				Res.		28		MHADA	yes	30		2					-	-	-	2021-10-23
3914	Bmc Road	Aradhana gurunanak sra				Res.		286	25	BWG	yes	345							-	-	-	2021-10-23
3915	Bmc Road	Annapoorna chs				Res.		30		Others	yes	51							-	-	-	2021-10-23
3916	Bmc Road	Godavari no1				Res.		40		MHADA	yes	0		0				Bin comp	02/10/2021			2021-10-23
3917	Bmc Road	Krishna no 2				Res.		40		MHADA	yes	0						Bin comp	02/10/2021			2021-10-23
3918	Bmc Road	Narmadha no 3				Res.		40		MHADA	yes	0		0				Bin comp	02/10/2021			2021-10-23
3919	Bmc Road	Kaveri no 4				Res.		40		MHADA	yes	0		0				Bin comp	02/10/2021			2021-10-23
3920	Bmc Road	Panchvati no 5				Res.		40		MHADA	yes	0		0				Bin comp	02/10/2021			2021-10-23
3921	Bmc Road	Saptha shrungi no 6				Res.		40		MHADA	yes							Bin comp				2021-10-23
3922	Bmc Road	Sai siddhii no 7				Res.		40		MHADA	yes							Bin comp				2021-10-23
3923	Bmc Road	Serenity shree sai wings adef chs				Res.		72		BWG	yes	25		10						18/09/2021	Nandkishore Ghag\n9821394023	2021-10-23
3924	Bmc Road	Serenity shree sai wings b1,b2 chs				Res.				BWG	yes									18/09/2021	Vare (Mang)\n9699720927	2021-10-23
3925	Bmc Road	Serenity shree sai wings ghi chs				Res.		84		BWG	yes									18/09/2021	Suryanarayan Chube \n9702021707	2021-10-23
3926	Bmc Road	City international school				Scl				Others	yes	0	0	0								2021-10-23
3927	Heera Panna Road	Sumukh heights				Res.		42		Others		-	-	-								2021-10-23
3928	Heera Panna Road	Aanand seva samity				Res.		102	11	BWG /SRA		-	-	-						27/09/2021	Mansoor Ali Khan\n9022887279	2021-10-23
3929	Heera Panna Road	Reliable business centre				Com			11	After 2007 (BWG/SRA)	yes	-	-	-						27/09/2021	Shakeel Shaik\n9821326518	2021-10-23
3930	Heera Panna Road	Om heera panna premises				Com			290	BWG	yes	-	-	-				bin comp	27/09/2021	27/09/2021	Kisanlal Hans\n9892408602	2021-10-23
3931	Heera Panna Road	Oshiwara link plaza				Com			199	Others	yes	0	0	0								2021-10-23
3932	Heera Panna Road	Oshiwara yashodeep 				Res.		60		BWG /SRA	yes	0		0				Bin comp		18/09/2021	Ishwar  Hubale\n9870473923	2021-10-23
3933	Heera Panna Road	(sbi) officers quatres 35				Res.		90		MHADA	yes	15		25				Bin comp				2021-10-23
3934	Heera Panna Road	Godavari 								MHADA	yes	0		0				Bin comp				2021-10-23
3935	Heera Panna Road	Yamuna 38				Res.		55	12	MHADA	yes							Bin comp				2021-10-23
3936	Heera Panna Road	Kaveri no41				Res.				MHADA	yes							Bin comp				2021-10-23
3937	Heera Panna Road	Mhada sargam no40				Res.		88	4	MHADA	yes	0		0				Bin comp				2021-10-23
3938	Heera Panna Road	Sebi gaurur				Res.		32		Others	yes	0		0				Bin comp				2021-10-23
3939	Heera Panna Road	Gujarat bhavan				Res.		28		Others	yes	0		0				Bin comp				2021-10-23
3940	Heera Panna Road	Tata communication residential colony				Res.		105		MHADA	yes	0		2				comp bin				2021-10-23
3941	Heera Panna Road	Andhra bank quartres				Res.		62		MHADA	yes	0		0				comp bin				2021-10-23
3942	Heera Panna Road	Bmc garden i				Grdn				Others	yes	0	0	0								2021-10-23
3943	Oshiwara Mahada New Link Road	Marigold no. 1				Res.		34		MHADA	yes	0		0				Bin comp				2021-10-23
3944	Oshiwara Mahada New Link Road	Anushkaa no.2				Res.		34		MHADA	yes	0		0				Bin comp				2021-10-23
3945	Oshiwara Mahada New Link Road	Aroma no.3				Res.		34		MHADA	yes	20		0				Bin comp				2021-10-23
3946	Oshiwara Mahada New Link Road	Sunshine no.4				Res.		34		MHADA	yes	0		0				Bin comp				2021-10-23
3947	Oshiwara Mahada New Link Road	Starship no.11				Res.		28		MHADA	yes	0		0				Bin comp	18/09/2021			2021-10-23
3948	Oshiwara Mahada New Link Road	Lotus no.12				Res.		32		MHADA	yes	0		0				Bin comp	18/09/2021			2021-10-23
3949	Oshiwara Mahada New Link Road	Utsav no.13				Res.		32		MHADA	yes	0		4				comp bin  returned				2021-10-23
3950	Oshiwara Mahada New Link Road	Rajanigandha no.14				Res.		32		MHADA		0		0				Bin comp	18/09/2021			2021-10-23
3951	Oshiwara Mahada New Link Road	Income tax officers no.24				Res.		34		MHADA	yes	15		0				Bin comp	05.10.2021			2021-10-23
3952	Oshiwara Mahada New Link Road	Link way no.25				Res.		34		MHADA	yes	0		0				Bin comp				2021-10-23
3953	Oshiwara Mahada New Link Road	Central excise res.iety no.26				Res.		32		MHADA	yes	30		7								2021-10-23
3954	Oshiwara Mahada New Link Road	Central excise res.iety no.27				Res.		32		MHADA	yes	24		0								2021-10-23
3955	Oshiwara Mahada New Link Road	Harshvardhan chamber										0		0								2021-10-23
3956	Oshiwara Mahada New Link Road	Oshiwara police chowki				Com				Others		0		0								2021-10-23
3957	Oshiwara Mahada New Link Road	Matru chayya				Res.		32		MHADA	yes	0		0				Bin comp				2021-10-23
3958	Oshiwara Mahada New Link Road	Ekdant society				Res.		34		MHADA	yes	0		3				Bin comp				2021-10-23
3959	Oshiwara Mahada New Link Road	Parth no.43				Res.		32		MHADA	yes	0		0				Bin comp				2021-10-23
3960	Oshiwara Mahada New Link Road	Fakir wadi (t.camp)				Res.				Others	yes	215	57	0								2021-10-23
3961	Behram  Baug	Shakti seva sangh				Res.		91	14	BWG/SRA	no	0	0	0								2021-10-24
3962	Behram  Baug	Ujala nagar sra				Res.		116	21	After 2007 (BWG/SRA)	no	0	0	0								2021-10-24
3963	Behram  Baug	Patel sra				Res.				Others	no	0	0	0								2021-10-24
3964	Behram  Baug	Sakirabi				Res.		114	16	After 2007 (BWG/SRA)	no	0	0	0								2021-10-24
3965	Behram  Baug	Parsi colony				Res.		13x28		Others	yes	120		0								2021-10-24
3966	Behram  Baug	Shama chs				Res.				Others	no	0	0	0								2021-10-24
3967	Behram  Baug	Anupa public high scl				Scl				Others		0	0	0								2021-10-24
3968	Behram  Baug	Sarvodhaya sra				Res.				BWG	no	0	0	0						03/10/2021		2021-10-24
3969	Behram  Baug	Range heights				Com				After 2007 (BWG)		-	-	-								2021-10-24
3970	Behram  Baug	Santosh nagar sra				Res.				BWG	no	0	0	0						28/09/2021	Amersen Yadav\n9867974333	2021-10-24
3971	Behram  Baug	Green palace				Res.				Others	no	0	0	0								2021-10-24
3972	Roshan Nagar	Millenium court				Res.		80	1	BWG	yes	15		5						27/09/2021	Nitinn Ranga\n9821337126	2021-10-24
3973	Roshan Nagar	Evershine green				Res.		206	14	BWG	yes									18/09/2021	Rohit Sharma (chr)\n9819309474	2021-10-24
3974	Roshan Nagar	Raigad military school\nCom-bldg				Com		32		BWG	yes											2021-10-24
3975	Roshan Nagar	Raigad military school				Scl		32		Others	yes											2021-10-24
3976	Roshan Nagar	Mariyam public high school				Scl			16	Others	yes											2021-10-24
3977	Roshan Nagar	Belvedere spring school				Scl				Others	yes											2021-10-24
3978	Roshan Nagar	Level resident				Res.				Others		-	-	-				-				2021-10-24
3979	Roshan Nagar	Oshiwara akash ganga				Res.		28		Others	yes	35		0								2021-10-24
3980	Roshan Nagar	Oshwara vishal				Res.		28		Others	yes	20		0								2021-10-24
3981	Roshan Nagar	Oshiwara sahyadri				Res.		56		Others	yes	37		0								2021-10-24
3982	Roshan Nagar	Oshiwara girnar				Res.		56		Others	yes	41		0								2021-10-24
3983	Roshan Nagar	Johig				Res.		28		Others	yes	21		0								2021-10-24
3984	Roshan Nagar	Oshiwara ravikiran				Res.		28		Others	yes	51		0								2021-10-24
3985	Roshan Nagar	Oshiwara satpuda				Res.		56		Others		-	-	-								2021-10-24
3986	Roshan Nagar	Green daimond				Res.		40		After 2007 (BWG)	yes	41		0						27/09/2021	Sameer Shaik(sup)\n9920048273	2021-10-24
3987	Roshan Nagar	Jogeshwari ganesh niwas				Res.		80		BWG/SRA	yes	56		0						27/09/2021	Bhagwan Jadhav\n9821800369	2021-10-24
3988	Roshan Nagar	Roshan nagar b1				Res.		52	12	After 2007 (BWG/SRA)	yes	80		0						27/09/2021	Ashok Dongre\n9833455170	2021-10-24
3989	Roshan Nagar	Roshan nagar b2				Res.		82	13	After 2007 (BWG/SRA)	yes	87		0						27/09/2021	Alim Khan\n8879313127	2021-10-24
3990	Roshan Nagar	Lashkaria empress				Res.		56	6	After 2007 (BWG/SRA)		-	-	-				Out source		21/09/2021	Sameer Shaik\n9920048273	2021-10-24
3991	Roshan Nagar	Oriental education 				Clg		0		Others		-	-	-								2021-10-24
3992	Roshan Nagar	Green heights (lashkaria)				Res.		0		BWG		-	-	-				Out source		21/09/2021	Aslam Lashkaria\n9820990707	2021-10-24
3993	Roshan Nagar	Shree sai lila (sra)				Res.		56		BWG	no	0	0	0								2021-10-24
3994	Roshan Nagar	Shivspruthi bldg no.1 				Res.		88		BWG	yes	70		0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-24
3995	Roshan Nagar	Shivspruthi bldg no.2 				Res.				BWG /SRA	yes	65		0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-24
3996	Anand Nagar	Techweb centre				Com				Others	yes	0										2021-10-24
3997	Anand Nagar	Daimond /pearl				Res.		18	2	Others	yes	37										2021-10-24
3998	Anand Nagar	Vijay vishal				Res.		78		BWG	yes	5		2						20/09/2021	Chandrakant Kale\n9969003025	2021-10-24
3999	Anand Nagar	Spice tower				Com			16	Others		-	-	-				out source				2021-10-24
4000	Anand Nagar	Sandipani shikshak oshiwara				Res.		91	28	After 2007 (BWG)	no	0	0	0						20/09/2021	Rammani C. Dube\n9702334382	2021-10-24
4001	Anand Nagar	Vaibhav palace				Res.		48	28	Others	yes	0		1								2021-10-24
4002	Mega Mall	Assistant commissioner police oshiwara division mumbai				Com					no	-	-	-								2021-10-24
4003	Mega Mall	Jay ambe				Res.		100		BWG	yes	-	-	-						28/09/2021	Amar Pal\n9920612050	2021-10-24
4004	Mega Mall	Mahataranga				Res.		52	4	Others	yes	27		0								2021-10-24
4005	Mega Mall	Swati apartment				Res.		28	7	Others	yes	23	20	0								2021-10-24
4006	Mega Mall	1 bhk				Com				Others		0		0					-			2021-10-24
4007	Mega Mall	Meera tower				Res.		100	28	BWG		-	-	-				out source			A.K.Singh (Mang)\n9930317315	2021-10-24
4008	Green Park	East side no.28				Res.		32		MHADA	yes	0		2				bin comp	24/09/2021			2021-10-24
4009	Green Park	Samruddhi no.29				Res.		32		MHADA	yes	10		0				bin comp	06.10.2021			2021-10-24
4010	Green Park	Anand vihar				Res.		42		MHADA	yes	37		0				bin comp	24/09/2021			2021-10-24
4011	Green Park	Oshiwara basera				Res.		28		MHADA	yes	21		0				bin comp				2021-10-24
4012	Green Park	Park paradise				Res.		44	12	MHADA	yes	70		2				bin comp	25/09/2021			2021-10-24
4013	Green Park	The park (lotus)				Res.		42		MHADA		-	-	-				-	-			2021-10-24
4014	Tarapore	K.l walawalkar mcgm garden				Grdn				Others		-	-	-								2021-10-24
4015	Tarapore	Atlantis				Res.		22		Others	yes	37		1								2021-10-24
4016	Tarapore	Deep apartment & tower				Res.		100		BWG	yes	-	-	-						28/09/2021	Zuber Menon	2021-10-24
4017	Tarapore	Harjanhans				Res.				Others	no	0		0								2021-10-24
4018	Tarapore	Kohinoor i				Res.				Others	yes	-	-	-				out source				2021-10-24
4019	Tarapore	Kohinoor ii				Res.				Others	yes	-		-				out source				2021-10-24
4020	Tarapore	Shantivan mhada (7 bldg)				Res.		7x28		MHADA	yes	130							25/09/2021			2021-10-24
4021	Tarapore	Bmc garden ii				Grdn				Others	yes	0	0	0								2021-10-24
4022	Tarapore	Rims international school 				Scl				Others	yes	0	0	0								2021-10-24
4023	Tarapore	Samartha deep				Res.		160		BWG		-	-	-				Out Source	-	-	-	2021-10-24
4024	Tarapore	Samartha ashish				Res.		74		Others		-	-	-								2021-10-24
4025	Tarapore	Aakash				Res.		28		MHADA	yes	0		0				bin comp	26/09/2021			2021-10-24
4026	Tarapore	Eden garden no.22				Res.		32		MHADA	yes	0		0				bin comp	18/09/2021			2021-10-24
4027	Tarapore	Samartha aangan				Res.		330		After 2007 (BWG)	yes	90		30								2021-10-24
4028	Tarapore	Gulmohar				Res.		32		MHADA	yes	27		0								2021-10-24
4029	Tarapore	Mayfair no.20				Res.		32	6	MHADA	yes	23		0				bin comp	18/09/2021			2021-10-24
4030	Tarapore	Indra darshan l				Res.		264		BWG		-	-	-				Out source	-		-	2021-10-24
4031	Tarapore	Indra darshan ll				Res.		330		BWG		-	-	-				Out source	-	-	-	2021-10-24
4032	Tarapore	Tarapore garden no. 1,2,3				Res.		294		BWG	yes	0		0				OWC		18/09/2021	Sanjeev Sharma\n9920304152	2021-10-24
4033	Tarapore	Tarapore tower				Res.		269		BWG		-	-	-				Out source	-	18/09/2021	Arun poddar\n9920720066	2021-10-24
4034	Tarapore	Samartha vaibhav				Com		103	20	Others	yes	0	0	0								2021-10-24
4035	Azad Nagar Petrol Pump	Tulip no.6				Res.		37	2	MHADA	yes	0		0				Bin comp				2021-10-24
4036	Azad Nagar Petrol Pump	Aster no.5				Res.		34		MHADA	yes	0		10				Bin comp				2021-10-24
4037	Jbcn School Lane	Blue bell no.8				Res.		34	4	MHADA	yes	35	25	0				Bin comp				2021-10-24
4038	Jbcn School Lane	Avalon no7				Res.		30		MHADA	yes	0	20	0								2021-10-24
4039	Jbcn School Lane	(jbcn) international school				Scl				Others	yes	-	8	-								2021-10-24
4040	Jbcn School Lane	Daffodils no.10				Res.		32		MHADA	yes	0	20	0				Bin comp				2021-10-24
4041	Jbcn School Lane	Indus no.9				Res.		32		MHADA	yes	47	12	0				Bin comp				2021-10-24
4042	Oshiwara Garden	Maheshwari hall				Com				Others		0	0	0								2021-10-24
4043	Oshiwara Garden	Suriyakiran no.19				Res.		32	6	MHADA	yes	0	20	3				bin comp	18/09/2021			2021-10-24
4044	Oshiwara Garden	Amity no.18				Res.		32		MHADA	yes	0	18	2				bin comp	18/09/2021			2021-10-24
4045	Oshiwara Garden	Oshiwara mhada garden				Grdn				After 2007 (BWG)	yes	0	0	0				bin comp	18/09/2021			2021-10-24
4046	Oshiwara Garden	Green view no.17				Res.		32		MHADA	yes	0	15	5				bin comp	18/09/2021			2021-10-24
4047	Oshiwara Garden	Hima sai no.16				Res.		32		MHADA	yes	0	18	3				bin comp	18/09/2021			2021-10-24
4048	Oshiwara Garden	Raja rani malhotra vidyalaya				Scl		40		Others	yes	0	3	0								2021-10-24
4049	Oshiwara Garden	Hvps education complex				Clg				Others	yes	0	5	0								2021-10-24
4050	Oshiwara Garden	Goenka international school				Scl			22	Others	yes	0	10	0								2021-10-24
4051	Oshiwara Garden	Marble arch school				Scl			22	Others	yes	0	9	0								2021-10-24
4052	Oshiwara Garden	Goverment of india building				Res.		30		Others	yes	12	5	5								2021-10-24
4053	Oshiwara Garden	Sanskar no.15				Res.		28		MHADA	yes	30	25	2					-	-	-	2021-10-24
4054	Bmc Road	Aradhana gurunanak sra				Res.		286	25	BWG	no	350	0	0					-	-	-	2021-10-24
4055	Bmc Road	Annapoorna chs				Res.		30		Others	yes	0	20	0					-	-	-	2021-10-24
4056	Bmc Road	Godavari no1				Res.		40		MHADA	yes	0	5	0				Bin comp	02/10/2021			2021-10-24
4057	Bmc Road	Krishna no 2				Res.		40		MHADA	yes	0	55	0				Bin comp	02/10/2021			2021-10-24
4058	Bmc Road	Narmadha no 3				Res.		40		MHADA	yes	0		0				Bin comp	02/10/2021			2021-10-24
4059	Bmc Road	Kaveri no 4				Res.		40		MHADA	yes	0		0				Bin comp	02/10/2021			2021-10-24
4060	Bmc Road	Panchvati no 5				Res.		40		MHADA	yes	0	10	0				Bin comp	02/10/2021			2021-10-24
4061	Bmc Road	Saptha shrungi no 6				Res.		40		MHADA	yes							Bin comp				2021-10-24
4062	Bmc Road	Sai siddhii no 7				Res.		40		MHADA	yes							Bin comp				2021-10-24
4063	Bmc Road	Serenity shree sai wings adef chs				Res.		72		BWG	yes	60	30	29						18/09/2021	Nandkishore Ghag\n9821394023	2021-10-24
4064	Bmc Road	Serenity shree sai wings b1,b2 chs				Res.				BWG	yes									18/09/2021	Vare (Mang)\n9699720927	2021-10-24
4065	Bmc Road	Serenity shree sai wings ghi chs				Res.		84		BWG	yes		27							18/09/2021	Suryanarayan Chube \n9702021707	2021-10-24
4066	Bmc Road	City international school				Scl				Others	yes	0	0	0								2021-10-24
4067	Heera Panna Road	Sumukh heights				Res.		42		Others		-	5	-								2021-10-24
4068	Heera Panna Road	Aanand seva samity				Res.		102	11	BWG /SRA		-	-	-						27/09/2021	Mansoor Ali Khan\n9022887279	2021-10-24
4069	Heera Panna Road	Reliable business centre				Com			11	After 2007 (BWG/SRA)	yes	0	35	0						27/09/2021	Shakeel Shaik\n9821326518	2021-10-24
4197	Bmc Road	Krishna no 2				Res.		40		MHADA	yes	0	12	0				Bin comp	02/10/2021			2021-10-25
4070	Heera Panna Road	Om heera panna premises				Com			290	BWG	yes	0	70	0				bin comp	27/09/2021	27/09/2021	Kisanlal Hans\n9892408602	2021-10-24
4071	Heera Panna Road	Oshiwara link plaza				Com			199	Others	yes	0		0								2021-10-24
4072	Heera Panna Road	Oshiwara yashodeep 				Res.		60		BWG /SRA	yes	0	15	5				Bin comp		18/09/2021	Ishwar  Hubale\n9870473923	2021-10-24
4073	Heera Panna Road	(sbi) officers quatres 35				Res.		90		MHADA	yes	5		0				Bin comp				2021-10-24
4074	Heera Panna Road	Godavari 								MHADA	yes	0		0				Bin comp				2021-10-24
4075	Heera Panna Road	Yamuna 38				Res.		55	12	MHADA	yes	22		0				Bin comp				2021-10-24
4076	Heera Panna Road	Kaveri no41				Res.				MHADA	yes	0		0				Bin comp				2021-10-24
4077	Heera Panna Road	Mhada sargam no40				Res.		88	4	MHADA	yes	0		0				Bin comp				2021-10-24
4078	Heera Panna Road	Sebi gaurur				Res.		32		Others	yes	0	12	0				Bin comp				2021-10-24
4079	Heera Panna Road	Gujarat bhavan				Res.		28		Others	yes	0	8	0				Bin comp				2021-10-24
4080	Heera Panna Road	Tata communication residential colony				Res.		105		MHADA	yes	5	10	3				comp bin				2021-10-24
4081	Heera Panna Road	Andhra bank quartres				Res.		62		MHADA	yes	0	12	0				comp bin				2021-10-24
4082	Heera Panna Road	Bmc garden i				Grdn				Others	yes	0	0	0								2021-10-24
4083	Oshiwara Mahada New Link Road	Marigold no. 1				Res.		34		MHADA	yes	0	12	0				Bin comp				2021-10-24
4084	Oshiwara Mahada New Link Road	Anushka no.2				Res.		34		MHADA	yes	0	15	0				Bin comp				2021-10-24
4085	Oshiwara Mahada New Link Road	Aroma no.3				Res.		34		MHADA	yes	0	8	0				Bin comp				2021-10-24
4086	Oshiwara Mahada New Link Road	Sunshine no.4				Res.		34		MHADA	yes	0	20	0				Bin comp				2021-10-24
4087	Oshiwara Mahada New Link Road	Starship no.11				Res.		28		MHADA	no	0	4	0				Bin comp	18/09/2021			2021-10-24
4088	Oshiwara Mahada New Link Road	Lotus no.12				Res.		32		MHADA	yes	0	5	0				Bin comp	18/09/2021			2021-10-24
4089	Oshiwara Mahada New Link Road	Utsav no.13				Res.		32		MHADA	yes	13	8	0				comp bin  returned				2021-10-24
4090	Oshiwara Mahada New Link Road	Rajanigandha no.14				Res.		32		MHADA	no	0	0	0				Bin comp	18/09/2021			2021-10-24
4091	Oshiwara Mahada New Link Road	Income tax officers no.24				Res.		34		MHADA	yes	0		0				Bin comp	05.10.2021			2021-10-24
4092	Oshiwara Mahada New Link Road	Link way no.25				Res.		34		MHADA	yes	0	25	0				Bin comp				2021-10-24
4093	Oshiwara Mahada New Link Road	Central excise res.iety no.26				Res.		32		MHADA	no	25	0	0								2021-10-24
4094	Oshiwara Mahada New Link Road	Central excise res.iety no.27				Res.		32		MHADA	yes	27	15	0								2021-10-24
4095	Oshiwara Mahada New Link Road	Harshvardhan chamber										0		0								2021-10-24
4096	Oshiwara Mahada New Link Road	Oshiwara police chowki				Com				Others	no	0	0	0								2021-10-24
4097	Oshiwara Mahada New Link Road	Matru chayya				Res.		32		MHADA	yes	0	8	1				Bin comp				2021-10-24
4098	Oshiwara Mahada New Link Road	Ekdant society				Res.		34		MHADA	yes	0	7	0				Bin comp				2021-10-24
4099	Oshiwara Mahada New Link Road	Parth no.43				Res.		32		MHADA	yes	0	15	1				Bin comp				2021-10-24
4100	Oshiwara Mahada New Link Road	Fakir wadi (t.camp)				Res.				Others	yes	367		0								2021-10-24
4101	Behram  Baug	Shakti seva sangh				Res.		91	14	BWG/SRA	no	0	0	0								2021-10-25
4102	Behram  Baug	Ujala nagar sra				Res.		116	21	After 2007 (BWG/SRA)	no	0	0	0								2021-10-25
4103	Behram  Baug	Patel sra				Res.				Others	no	0	0	0								2021-10-25
4104	Behram  Baug	Sakirabi				Res.		114	16	After 2007 (BWG/SRA)	no	0	0	0								2021-10-25
4105	Behram  Baug	Parsi colony				Res.		13x28		Others	yes	215	54	0								2021-10-25
4106	Behram  Baug	Shama chs				Res.				Others	no	0	0	0								2021-10-25
4107	Behram  Baug	Anupa public high scl				Scl				Others		0	0	0								2021-10-25
4108	Behram  Baug	Sarvodhaya sra				Res.				BWG	no	0	0	0						03/10/2021		2021-10-25
4109	Behram  Baug	Range heights				Com				After 2007 (BWG)		-	-	-								2021-10-25
4110	Behram  Baug	Santosh nagar sra				Res.				BWG	no	0	0	0						28/09/2021	Amersen Yadav\n9867974333	2021-10-25
4111	Behram  Baug	Green palace				Res.				Others	no	0	0	0								2021-10-25
4112	Roshan Nagar	Millenium court				Res.		80	1	BWG	yes	20	35	0						27/09/2021	Nitinn Ranga\n9821337126	2021-10-25
4113	Roshan Nagar	Evershine green				Res.		206	14	BWG	yes	23	65	5				OWC		18/09/2021	Rohit Sharma (chr)\n9819309474	2021-10-25
4114	Roshan Nagar	Raigad military school\nCom-bldg				Com		32		BWG	yes	0	0	0								2021-10-25
4115	Roshan Nagar	Raigad military school				Scl		32		Others	yes	0	0	0								2021-10-25
4116	Roshan Nagar	Mariyam public high school				Scl			16	Others	yes	0	5	0								2021-10-25
4117	Roshan Nagar	Belvedere spring school				Scl				Others	yes	0	0	0								2021-10-25
4118	Roshan Nagar	Level resident				Res.				Others		-	-	-								2021-10-25
4119	Roshan Nagar	Oshiwara akash ganga				Res.		28		Others	yes	12	22	0								2021-10-25
4120	Roshan Nagar	Oshwara vishal				Res.		28		Others	yes	53	22	0								2021-10-25
4121	Roshan Nagar	Oshiwara sahyadri				Res.		56		Others	yes	25	16	0								2021-10-25
4122	Roshan Nagar	Oshiwara girnar				Res.		56		Others	yes	51	22	0								2021-10-25
4123	Roshan Nagar	Johig				Res.		28		Others	yes	23	35	0								2021-10-25
4124	Roshan Nagar	Oshiwara ravikiran				Res.		28		Others	yes	10	25	0								2021-10-25
4125	Roshan Nagar	Oshiwara satpuda				Res.		56		Others		-	-	-								2021-10-25
4126	Roshan Nagar	Green daimond				Res.		40		After 2007 (BWG)	yes	27	16	0						27/09/2021	Sameer Shaik(sup)\n9920048273	2021-10-25
4127	Roshan Nagar	Jogeshwari ganesh niwas				Res.		80		BWG/SRA	yes	38	8	0						27/09/2021	Bhagwan Jadhav\n9821800369	2021-10-25
4128	Roshan Nagar	Roshan nagar b1				Res.		52	12	After 2007 (BWG/SRA)	yes	60	28	0						27/09/2021	Ashok Dongre\n9833455170	2021-10-25
4129	Roshan Nagar	Roshan nagar b2				Res.		82	13	After 2007 (BWG/SRA)	yes	72		0						27/09/2021	Alim Khan\n8879313127	2021-10-25
4130	Roshan Nagar	Lashkaria empress				Res.		56	6	After 2007 (BWG/SRA)		-	-	-				Out source		21/09/2021	Sameer Shaik\n9920048273	2021-10-25
4131	Roshan Nagar	Oriental education 				Clg		0		Others		-	-	-								2021-10-25
4132	Roshan Nagar	Green heights (lashkaria)				Res.		0		BWG		-	-	-				Out source		21/09/2021	Aslam Lashkaria\n9820990707	2021-10-25
4133	Roshan Nagar	Shree sai lila (sra)				Res.		56		BWG	no	0	0	0								2021-10-25
4134	Roshan Nagar	Shivspruthi bldg no.1 				Res.		88		BWG	yes	80	25	0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-25
4135	Roshan Nagar	Shivspruthi bldg no.2 				Res.				BWG /SRA	yes	76		0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-25
4136	Anand Nagar	Techweb centre				Com				Others	yes	0	5	0								2021-10-25
4137	Anand Nagar	Daimond /pearl				Res.		18	2	Others	yes	32	15	0								2021-10-25
4138	Anand Nagar	Vijay vishal				Res.		78		BWG	yes	10	18	2						20/09/2021	Chandrakant Kale\n9969003025	2021-10-25
4139	Anand Nagar	Spice tower				Com			16	Others		-	-	-				out source				2021-10-25
4140	Anand Nagar	Sandipani shikshak oshiwara				Res.		91	28	After 2007 (BWG)	yes	0	0	0						20/09/2021	Rammani C. Dube\n9702334382	2021-10-25
4141	Anand Nagar	Vaibhav palace				Res.		48	28	Others	no	0	9	0								2021-10-25
4142	Mega Mall	Assistant commissioner police oshiwara division mumbai				Com					no	0	0	0								2021-10-25
4143	Mega Mall	Jay ambe				Res.		100		BWG	yes	0	15	0						28/09/2021	Amar Pal\n9920612050	2021-10-25
4144	Mega Mall	Mahataranga				Res.		52	4	Others	no	0	0	0								2021-10-25
4145	Mega Mall	Swati apartment				Res.		28	7	Others	yes	0	14	0								2021-10-25
4146	Mega Mall	1 bhk				Com				Others	yes	0	30	0					-			2021-10-25
4147	Mega Mall	Meera tower				Res.		100	28	BWG		-	-	-				out source			A.K.Singh (Mang)\n9930317315	2021-10-25
4148	Green Park	East side no.28				Res.		32		MHADA	yes	0	16	0				bin comp	24/09/2021			2021-10-25
4149	Green Park	Samruddhi no.29				Res.		32		MHADA	yes	0	12	0				bin comp	06.10.2021			2021-10-25
4150	Green Park	Anand vihar				Res.		42		MHADA	yes	47	10	0				bin comp	24/09/2021			2021-10-25
4151	Green Park	Oshiwara basera				Res.		28		MHADA	yes	0	10	0				bin comp				2021-10-25
4152	Green Park	Park paradise				Res.		44	12	MHADA	yes	3	12	5				bin comp	25/09/2021			2021-10-25
4153	Green Park	The park (lotus)				Res.		42		MHADA		-	-	-				-	-			2021-10-25
4154	Tarapore	K.l walawalkar mcgm garden				Grdn				Others		-	-	-								2021-10-25
4155	Tarapore	Atlantis				Res.		22		Others	yes	25	15	0								2021-10-25
4156	Tarapore	Deep apartment & tower				Res.		100		BWG	yes	0	16	0						28/09/2021	Zuber Menon	2021-10-25
4157	Tarapore	Harjanhans				Res.				Others		0	8	0								2021-10-25
4158	Tarapore	Kohinoor i				Res.				Others	yes	-	-	-				out source				2021-10-25
4159	Tarapore	Kohinoor ii				Res.				Others	yes	-	23	-				out source				2021-10-25
4160	Tarapore	Shantivan mhada (7 bldg)				Res.		7x28		MHADA	yes	125	27	0					25/09/2021			2021-10-25
4161	Tarapore	Bmc garden ii				Grdn				Others	yes	0	0	0								2021-10-25
4162	Tarapore	Rims international school 				Scl				Others	yes	0	0	0								2021-10-25
4163	Tarapore	Samartha deep				Res.		160		BWG		-	-	-				Out Source	-	-	-	2021-10-25
4164	Tarapore	Samartha ashish				Res.		74		Others	yes	0	0	0								2021-10-25
4165	Tarapore	Aakash				Res.		28		MHADA	yes	20	19	0				bin comp	26/09/2021			2021-10-25
4166	Tarapore	Eden garden no.22				Res.		32		MHADA	yes	0	10	0				bin comp	18/09/2021			2021-10-25
4167	Tarapore	Samartha aangan				Res.		330		After 2007 (BWG)	yes	65	68	30								2021-10-25
4168	Tarapore	Gulmohar				Res.		32		MHADA	yes	25	13	0								2021-10-25
4169	Tarapore	Mayfair no.20				Res.		32	6	MHADA	yes	21	15	0				bin comp	18/09/2021			2021-10-25
4170	Tarapore	Indra darshan l				Res.		264		BWG		-	-	-				Out source	-		-	2021-10-25
4171	Tarapore	Indra darshan ll				Res.		330		BWG		-	-	-				Out source	-	-	-	2021-10-25
4172	Tarapore	Tarapore garden no. 1,2,3				Res.		294		BWG	yes	0	60	16				OWC		18/09/2021	Sanjeev Sharma\n9920304152	2021-10-25
4173	Tarapore	Tarapore tower				Res.		269		BWG		-	-	-				Out source	-	18/09/2021	Arun poddar\n9920720066	2021-10-25
4174	Tarapore	Samartha vaibhav				Com		103	20	Others	yes	0	0	0								2021-10-25
4175	Azad Nagar Petrol Pump	Tulip no.6				Res.		37	2	MHADA	yes	0	8	0				Bin comp				2021-10-25
4176	Azad Nagar Petrol Pump	Aster no.5				Res.		34		MHADA	yes	20	7	0				Bin comp				2021-10-25
4177	Jbcn School Lane	Blue bell no.8				Res.		34	4	MHADA	yes	31	20	0				Bin comp				2021-10-25
4178	Jbcn School Lane	Avalon no7				Res.		30		MHADA	yes	25	30	0								2021-10-25
4179	Jbcn School Lane	(jbcn) international school				Scl				Others	yes	0	9	0								2021-10-25
4180	Jbcn School Lane	Daffodils no.10				Res.		32		MHADA	yes	1	15	0				Bin comp				2021-10-25
4181	Jbcn School Lane	Indus no.9				Res.		32		MHADA	yes	3	7	4				Bin comp				2021-10-25
4182	Oshiwara Garden	Maheshwari hall				Com				Others	yes	0	0	0								2021-10-25
4183	Oshiwara Garden	Suriyakiran no.19				Res.		32	6	MHADA	yes	5	12	0				bin comp	18/09/2021			2021-10-25
4184	Oshiwara Garden	Amity no.18				Res.		32		MHADA	yes	0	15	1				bin comp	18/09/2021			2021-10-25
4185	Oshiwara Garden	Oshiwara mhada garden				Grdn				After 2007 (BWG)	yes	20	0	0				bin comp	18/09/2021			2021-10-25
4186	Oshiwara Garden	Green view no.17				Res.		32		MHADA	yes	0	11	0				bin comp	18/09/2021			2021-10-25
4187	Oshiwara Garden	Hima sai no.16				Res.		32		MHADA	yes	5	12	2				bin comp	18/09/2021			2021-10-25
4188	Oshiwara Garden	Raja rani malhotra vidyalaya				Scl		40		Others	yes	0	4	0								2021-10-25
4189	Oshiwara Garden	Hvps education complex				Clg				Others	yes	0	0	0								2021-10-25
4190	Oshiwara Garden	Goenka international school				Scl			22	Others	yes	0	15	0								2021-10-25
4191	Oshiwara Garden	Marble arch school				Scl			22	Others	yes	0	0	0								2021-10-25
4192	Oshiwara Garden	Goverment of india building				Res.		30		Others	yes	8	4	0								2021-10-25
4193	Oshiwara Garden	Sanskar no.15				Res.		28		MHADA	yes	21	15	1					-	-	-	2021-10-25
4194	Bmc Road	Aradhana gurunanak sra				Res.		286	25	BWG	yes	349	35	0					-	-	-	2021-10-25
4195	Bmc Road	Annapoorna chs				Res.		30		Others	yes	60	15	0					-	-	-	2021-10-25
4196	Bmc Road	Godavari no1				Res.		40		MHADA	yes	0	15	0				Bin comp	02/10/2021			2021-10-25
4198	Bmc Road	Narmadha no 3				Res.		40		MHADA	yes	0		0				Bin comp	02/10/2021			2021-10-25
4199	Bmc Road	Kaveri no 4				Res.		40		MHADA	yes	0		0				Bin comp	02/10/2021			2021-10-25
4200	Bmc Road	Panchvati no 5				Res.		40		MHADA	yes	0	25	0				Bin comp	02/10/2021			2021-10-25
4201	Bmc Road	Saptha shrungi no 6				Res.		40		MHADA	yes							Bin comp				2021-10-25
4202	Bmc Road	Sai siddhii no 7				Res.		40		MHADA	yes							Bin comp				2021-10-25
4203	Bmc Road	Serenity shree sai wings adef chs				Res.		72		BWG	yes	51	25	0						18/09/2021	Nandkishore Ghag\n9821394023	2021-10-25
4204	Bmc Road	Serenity shree sai wings b1,b2 chs				Res.				BWG	yes									18/09/2021	Vare (Mang)\n9699720927	2021-10-25
4205	Bmc Road	Serenity shree sai wings ghi chs				Res.		84		BWG	yes		20							18/09/2021	Suryanarayan Chube \n9702021707	2021-10-25
4206	Bmc Road	City international school				Scl				Others	yes	0	2	0								2021-10-25
4207	Heera Panna Road	Sumukh heights				Res.		42		Others	yes	0	5	0								2021-10-25
4208	Heera Panna Road	Aanand seva samity				Res.		102	11	BWG /SRA	no	0	0	0						27/09/2021	Mansoor Ali Khan\n9022887279	2021-10-25
4209	Heera Panna Road	Reliable business centre				Com			11	After 2007 (BWG/SRA)	yes	0	25	0						27/09/2021	Shakeel Shaik\n9821326518	2021-10-25
4210	Heera Panna Road	Om heera panna premises				Com			290	BWG	yes	0	35	0				bin comp	27/09/2021	27/09/2021	Kisanlal Hans\n9892408602	2021-10-25
4211	Heera Panna Road	Oshiwara link plaza				Com			199	Others	no	0	0	0								2021-10-25
4212	Heera Panna Road	Oshiwara yashodeep 				Res.		60		BWG /SRA	yes	0	25	2				Bin comp		18/09/2021	Ishwar  Hubale\n9870473923	2021-10-25
4213	Heera Panna Road	(sbi) officers quatres 35				Res.		90		MHADA	yes	1	12	1				Bin comp				2021-10-25
4214	Heera Panna Road	Godavari 								MHADA	yes	0	12	0				Bin comp				2021-10-25
4215	Heera Panna Road	Yamuna 38				Res.		55	12	MHADA	yes	20	15	3				Bin comp				2021-10-25
4216	Heera Panna Road	Kaveri no41				Res.				MHADA	yes	0	20	0				Bin comp				2021-10-25
4217	Heera Panna Road	Mhada sargam no40				Res.		88	4	MHADA	yes	10	7	2				Bin comp				2021-10-25
4218	Heera Panna Road	Sebi gaurur				Res.		32		Others	yes	0	12	0				Bin comp				2021-10-25
4219	Heera Panna Road	Gujarat bhavan				Res.		28		Others	yes	15	12	0				Bin comp				2021-10-25
4220	Heera Panna Road	Tata communication residential colony				Res.		105		MHADA	yes	0	30	0				comp bin				2021-10-25
4221	Heera Panna Road	Andhra bank quartres				Res.		62		MHADA	yes	0	15	5				comp bin				2021-10-25
4222	Heera Panna Road	Bmc garden i				Grdn				Others	yes	0	0	0								2021-10-25
4223	Oshiwara Mahada New Link Road	Marigold no. 1				Res.		34		MHADA	yes	0	20	0				Bin comp				2021-10-25
4224	Oshiwara Mahada New Link Road	Anushkaa no.2				Res.		34		MHADA	yes	1	15	0				Bin comp				2021-10-25
4225	Oshiwara Mahada New Link Road	Aroma no.3				Res.		34		MHADA	yes	0	10	0				Bin comp				2021-10-25
4226	Oshiwara Mahada New Link Road	Sunshine no.4				Res.		34		MHADA	yes	0	8	0				Bin comp				2021-10-25
4227	Oshiwara Mahada New Link Road	Starship no.11				Res.		28		MHADA	no	21	0	2				Bin comp	18/09/2021			2021-10-25
4228	Oshiwara Mahada New Link Road	Lotus no.12				Res.		32		MHADA	yes	0	5	0				Bin comp	18/09/2021			2021-10-25
4229	Oshiwara Mahada New Link Road	Utsav no.13				Res.		32		MHADA	yes	8	10	3				comp bin  returned				2021-10-25
4230	Oshiwara Mahada New Link Road	Rajanigandha no.14				Res.		32		MHADA		25	8	0				Bin comp	18/09/2021			2021-10-25
4231	Oshiwara Mahada New Link Road	Income tax officers no.24				Res.		34		MHADA	yes	0	5	0				Bin comp	05.10.2021			2021-10-25
4232	Oshiwara Mahada New Link Road	Link way no.25				Res.		34		MHADA	yes	10	9	0				Bin comp				2021-10-25
4233	Oshiwara Mahada New Link Road	Central excise res.iety no.26				Res.		32		MHADA	yes	26	25	0								2021-10-25
4234	Oshiwara Mahada New Link Road	Central excise res.iety no.27				Res.		32		MHADA	yes	29	15	0								2021-10-25
4235	Oshiwara Mahada New Link Road	Harshvardhan chamber									yes	0	4	0								2021-10-25
4236	Oshiwara Mahada New Link Road	Oshiwara police chowki				Com				Others	no	0	0	0								2021-10-25
4237	Oshiwara Mahada New Link Road	Matru chayya				Res.		32		MHADA	yes	0	15	1				Bin comp				2021-10-25
4238	Oshiwara Mahada New Link Road	Ekdant society				Res.		34		MHADA	yes	0	7	0				Bin comp				2021-10-25
4239	Oshiwara Mahada New Link Road	Parth no.43				Res.		32		MHADA	yes	0	12	1				Bin comp				2021-10-25
4240	Oshiwara Mahada New Link Road	Fakir wadi (t.camp)				Res.				Others	yes	367	0	0								2021-10-25
4241	Behram  Baug	Shakti seva sangh				Res.		91	14	BWG/SRA	no	0	-	0								2021-10-26
4242	Behram  Baug	Ujala nagar sra				Res.		116	21	After 2007 (BWG/SRA)	no	0	-	0								2021-10-26
4243	Behram  Baug	Patel sra				Res.				Others	no	0	-	0								2021-10-26
4244	Behram  Baug	Sakirabi				Res.		114	16	After 2007 (BWG/SRA)	no	0	-	0								2021-10-26
4245	Behram  Baug	Parsi colony				Res.		13x28		Others	yes	221	-	0								2021-10-26
4246	Behram  Baug	Shama chs				Res.				Others	no	0	-	0								2021-10-26
4247	Behram  Baug	Anupa public high scl				Scl				Others		0	-	0								2021-10-26
4248	Behram  Baug	Sarvodhaya sra				Res.				BWG	no	0	-	0						03/10/2021		2021-10-26
4249	Behram  Baug	Range heights				Com				After 2007 (BWG)		-	-	-								2021-10-26
4250	Behram  Baug	Santosh nagar sra				Res.				BWG	no	0	-	0						28/09/2021	Amersen Yadav\n9867974333	2021-10-26
4251	Behram  Baug	Green palace				Res.				Others	no	0	-	0								2021-10-26
4252	Roshan Nagar	Millenium court				Res.		80	1	BWG	yes	0	-	0						27/09/2021	Nitinn Ranga\n9821337126	2021-10-26
4253	Roshan Nagar	Evershine green				Res.		206	14	BWG	yes	5	-	2						18/09/2021	Rohit Sharma (chr)\n9819309474	2021-10-26
4254	Roshan Nagar	Raigad military school\nCom-bldg				Com		32		BWG	yes	0	-	0								2021-10-26
4255	Roshan Nagar	Raigad military school				Scl		32		Others	yes	0	-	0								2021-10-26
4256	Roshan Nagar	Mariyam public high school				Scl			16	Others	yes	0	-	0								2021-10-26
4257	Roshan Nagar	Belvedere spring school				Scl				Others	yes	0	-	0								2021-10-26
4258	Roshan Nagar	Level resident				Res.				Others		-	-	-								2021-10-26
4259	Roshan Nagar	Oshiwara akash ganga				Res.		28		Others	yes	27	-	0								2021-10-26
4260	Roshan Nagar	Oshwara vishal				Res.		28		Others	yes	60	-	0								2021-10-26
4261	Roshan Nagar	Oshiwara sahyadri				Res.		56		Others	yes	28	-	0								2021-10-26
4262	Roshan Nagar	Oshiwara girnar				Res.		56		Others	yes	50	-	0								2021-10-26
4263	Roshan Nagar	Johig				Res.		28		Others	yes	30	-	0								2021-10-26
4264	Roshan Nagar	Oshiwara ravikiran				Res.		28		Others	yes	23	-	0								2021-10-26
4265	Roshan Nagar	Oshiwara satpuda				Res.		56		Others		-	-	-								2021-10-26
4266	Roshan Nagar	Green daimond				Res.		40		After 2007 (BWG)	yes	51	-	0						27/09/2021	Sameer Shaik(sup)\n9920048273	2021-10-26
4267	Roshan Nagar	Jogeshwari ganesh niwas				Res.		80		BWG/SRA	yes	72	-	0						27/09/2021	Bhagwan Jadhav\n9821800369	2021-10-26
4268	Roshan Nagar	Roshan nagar b1				Res.		52	12	After 2007 (BWG/SRA)	yes	81	-	0						27/09/2021	Ashok Dongre\n9833455170	2021-10-26
4269	Roshan Nagar	Roshan nagar b2				Res.		82	13	After 2007 (BWG/SRA)	yes	79		0						27/09/2021	Alim Khan\n8879313127	2021-10-26
4270	Roshan Nagar	Lashkaria empress				Res.		56	6	After 2007 (BWG/SRA)		-		-				Out source		21/09/2021	Sameer Shaik\n9920048273	2021-10-26
4271	Roshan Nagar	Oriental education 				Clg		0		Others		-	-	-								2021-10-26
4272	Roshan Nagar	Green heights (lashkaria)				Res.		0		BWG		-	-	-				Out source		21/09/2021	Aslam Lashkaria\n9820990707	2021-10-26
4273	Roshan Nagar	Shree sai lila (sra)				Res.		56		BWG	no	0	-	0								2021-10-26
4274	Roshan Nagar	Shivspruthi bldg no.1 				Res.		88		BWG	yes	81	-	0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-26
4275	Roshan Nagar	Shivspruthi bldg no.2 				Res.				BWG /SRA	yes	75		0						27/09/2021	Vasant  Mahadik\n7208580681	2021-10-26
4276	Anand Nagar	Techweb centre				Com				Others	yes	0	-	0								2021-10-26
4277	Anand Nagar	Daimond /pearl				Res.		18	2	Others	yes	31	-	0								2021-10-26
4278	Anand Nagar	Vijay vishal				Res.		78		BWG	yes	11	-	3						20/09/2021	Chandrakant Kale\n9969003025	2021-10-26
4279	Anand Nagar	Spice tower				Com			16	Others		-	-	-				out source				2021-10-26
4280	Anand Nagar	Sandipani shikshak oshiwara				Res.		91	28	After 2007 (BWG)	no	0	-	0						20/09/2021	Rammani C. Dube\n9702334382	2021-10-26
4281	Anand Nagar	Vaibhav palace				Res.		48	28	Others	yes	15		5								2021-10-26
4282	Mega Mall	Assistant commissioner police oshiwara division mumbai				Com					no	0	-	0								2021-10-26
4283	Mega Mall	Jay ambe				Res.		100		BWG	yes	0	-	0						28/09/2021	Amar Pal\n9920612050	2021-10-26
4284	Mega Mall	Mahataranga				Res.		52	4	Others	yes	5		0								2021-10-26
4285	Mega Mall	Swati apartment				Res.		28	7	Others	no	6	-	0								2021-10-26
4286	Mega Mall	1 bhk				Com				Others	yes	0	-	0					-			2021-10-26
4287	Mega Mall	Meera tower				Res.		100	28	BWG		-	-	-				out source			A.K.Singh (Mang)\n9930317315	2021-10-26
4288	Green Park	East side no.28				Res.		32		MHADA	yes	5	-	0				bin comp	24/09/2021			2021-10-26
4289	Green Park	Samruddhi no.29				Res.		32		MHADA	yes	0	-	0				bin comp	06.10.2021			2021-10-26
4290	Green Park	Anand vihar				Res.		42		MHADA	yes	48	-	0				bin comp	24/09/2021			2021-10-26
4291	Green Park	Oshiwara basera				Res.		28		MHADA	yes	10	-	0				bin comp				2021-10-26
4292	Green Park	Park paradise				Res.		44	12	MHADA	yes	4	-	5				bin comp	25/09/2021			2021-10-26
4293	Green Park	The park (lotus)				Res.		42		MHADA		-	-	-				-	-			2021-10-26
4294	Tarapore	K.l walawalkar mcgm garden				Grdn				Others		-	-	-								2021-10-26
4295	Tarapore	Atlantis				Res.		22		Others	yes	27	-	0								2021-10-26
4296	Tarapore	Deep apartment & tower				Res.		100		BWG	yes	0	-	0						28/09/2021	Zuber Menon	2021-10-26
4297	Tarapore	Harjanhans				Res.				Others	no	0	-	0								2021-10-26
4298	Tarapore	Kohinoor i				Res.				Others	yes	-	-	-				out source				2021-10-26
4299	Tarapore	Kohinoor ii				Res.				Others	yes	-	-	-				out source				2021-10-26
4300	Tarapore	Shantivan mhada (7 bldg)				Res.		7x28		MHADA	yes	127	-	15					25/09/2021			2021-10-26
4301	Tarapore	Bmc garden ii				Grdn				Others	yes	0	-	0								2021-10-26
4302	Tarapore	Rims international school 				Scl				Others	yes	0	-	0								2021-10-26
4303	Tarapore	Samartha deep				Res.		160		BWG		-	-	-				Out Source	-	-	-	2021-10-26
4304	Tarapore	Samartha ashish				Res.		74		Others	yes	0	-	0								2021-10-26
4305	Tarapore	Aakash				Res.		28		MHADA	yes	20	-	0				bin comp	26/09/2021			2021-10-26
4306	Tarapore	Eden garden no.22				Res.		32		MHADA	yes	0	-	0				bin comp	18/09/2021			2021-10-26
4307	Tarapore	Samartha aangan				Res.		330		After 2007 (BWG)	yes	61	-	35				OWC				2021-10-26
4308	Tarapore	Gulmohar				Res.		32		MHADA	yes	26	-	0								2021-10-26
4309	Tarapore	Mayfair no.20				Res.		32	6	MHADA	yes	20	-	0				bin comp	18/09/2021			2021-10-26
4310	Tarapore	Indra darshan l				Res.		264		BWG		-	-	-				Out source	-		-	2021-10-26
4311	Tarapore	Indra darshan ll				Res.		330		BWG		-	-	-				Out source	-	-	-	2021-10-26
4312	Tarapore	Tarapore garden no. 1,2,3				Res.		294		BWG	yes	25	-	15				OWC		18/09/2021	Sanjeev Sharma\n9920304152	2021-10-26
4313	Tarapore	Tarapore tower				Res.		269		BWG		-	-	-				Out source	-	18/09/2021	Arun poddar\n9920720066	2021-10-26
4314	Tarapore	Samartha vaibhav				Com		103	20	Others	yes	0	-	0								2021-10-26
4315	Azad Nagar Petrol Pump	Tulip no.6				Res.		37	2	MHADA	yes	15	-	7				Bin comp				2021-10-26
4316	Azad Nagar Petrol Pump	Aster no.5				Res.		34		MHADA	yes	30	-	5				Bin comp				2021-10-26
4317	Jbcn School Lane	Blue bell no.8				Res.		34	4	MHADA	yes	30	22	0				Bin comp				2021-10-26
4318	Jbcn School Lane	Avalon no7				Res.		30		MHADA	yes	20	25	0								2021-10-26
4319	Jbcn School Lane	(jbcn) international school				Scl				Others	yes	0	30	0								2021-10-26
4320	Jbcn School Lane	Daffodils no.10				Res.		32		MHADA	yes	1	15	0				Bin comp				2021-10-26
4321	Jbcn School Lane	Indus no.9				Res.		32		MHADA	yes	6	16	5				Bin comp				2021-10-26
4322	Oshiwara Garden	Maheshwari hall				Com				Others	yes	0	0	0								2021-10-26
4323	Oshiwara Garden	Suriyakiran no.19				Res.		32	6	MHADA	yes	20	19	0				bin comp	18/09/2021			2021-10-26
4324	Oshiwara Garden	Amity no.18				Res.		32		MHADA	yes	0	18	7				bin comp	18/09/2021			2021-10-26
4325	Oshiwara Garden	Oshiwara mhada garden				Grdn				After 2007 (BWG)	yes	0	0	0				bin comp	18/09/2021			2021-10-26
4326	Oshiwara Garden	Green view no.17				Res.		32		MHADA	yes	0	12	0				bin comp	18/09/2021			2021-10-26
4327	Oshiwara Garden	Hima sai no.16				Res.		32		MHADA	yes	0	18	0				bin comp	18/09/2021			2021-10-26
4328	Oshiwara Garden	Raja rani malhotra vidyalaya				Scl		40		Others	yes	0	0	0								2021-10-26
4329	Oshiwara Garden	Hvps education complex				Clg				Others	yes	0	0	0								2021-10-26
4330	Oshiwara Garden	Goenka international school				Scl			22	Others	yes	0	0	0								2021-10-26
4331	Oshiwara Garden	Marble arch school				Scl			22	Others	yes	0	0	0								2021-10-26
4332	Oshiwara Garden	Goverment of india building				Res.		30		Others	yes	0	6	0								2021-10-26
4333	Oshiwara Garden	Sanskar no.15				Res.		28		MHADA	yes	0	25	0					-	-	-	2021-10-26
4334	Bmc Road	Aradhana gurunanak sra				Res.		286	25	BWG	yes	0	40	0					-	-	-	2021-10-26
4335	Bmc Road	Annapoorna chs				Res.		30		Others	yes	3	18	0					-	-	-	2021-10-26
4336	Bmc Road	Godavari no1				Res.		40		MHADA	yes	7	12	2				Bin comp	02/10/2021			2021-10-26
4337	Bmc Road	Krishna no 2				Res.		40		MHADA	yes	0	25					Bin comp	02/10/2021			2021-10-26
4338	Bmc Road	Narmadha no 3				Res.		40		MHADA	yes	0		5				Bin comp	02/10/2021			2021-10-26
4339	Bmc Road	Kaveri no 4				Res.		40		MHADA	yes	0		10				Bin comp	02/10/2021			2021-10-26
4340	Bmc Road	Panchvati no 5				Res.		40		MHADA	yes	7	42	0				Bin comp	02/10/2021			2021-10-26
4341	Bmc Road	Saptha shrungi no 6				Res.		40		MHADA	yes	0		0				Bin comp				2021-10-26
4342	Bmc Road	Sai siddhii no 7				Res.		40		MHADA	yes	0		4				Bin comp				2021-10-26
4343	Bmc Road	Serenity shree sai wings adef chs				Res.		72		BWG	yes	75	35	0						18/09/2021	Nandkishore Ghag\n9821394023	2021-10-26
4344	Bmc Road	Serenity shree sai wings b1,b2 chs				Res.				BWG	yes									18/09/2021	Vare (Mang)\n9699720927	2021-10-26
4345	Bmc Road	Serenity shree sai wings ghi chs				Res.		84		BWG	yes		40							18/09/2021	Suryanarayan Chube \n9702021707	2021-10-26
4346	Bmc Road	City international school				Scl				Others	yes	0	1	0								2021-10-26
4347	Heera Panna Road	Sumukh heights				Res.		42		Others	no	0	0	0								2021-10-26
4348	Heera Panna Road	Aanand seva samity				Res.		102	11	BWG /SRA	no	0	0	0						27/09/2021	Mansoor Ali Khan\n9022887279	2021-10-26
4349	Heera Panna Road	Reliable business centre				Com			11	After 2007 (BWG/SRA)	yes	0	20	0						27/09/2021	Shakeel Shaik\n9821326518	2021-10-26
4350	Heera Panna Road	Om heera panna premises				Com			290	BWG	yes	0	40	0				bin comp	27/09/2021	27/09/2021	Kisanlal Hans\n9892408602	2021-10-26
4351	Heera Panna Road	Oshiwara link plaza				Com			199	Others	no	0	0	0								2021-10-26
4352	Heera Panna Road	Oshiwara yashodeep 				Res.		60		BWG /SRA	yes	2	15	6				Bin comp		18/09/2021	Ishwar  Hubale\n9870473923	2021-10-26
4353	Heera Panna Road	(sbi) officers quatres 35				Res.		90		MHADA	yes	10	20	1				Bin comp				2021-10-26
4354	Heera Panna Road	Godavari 								MHADA	yes	0	9	0				Bin comp				2021-10-26
4355	Heera Panna Road	Yamuna 38				Res.		55	12	MHADA	yes	21	12	3				Bin comp				2021-10-26
4356	Heera Panna Road	Kaveri no41				Res.				MHADA	yes	0	15	0				Bin comp				2021-10-26
4357	Heera Panna Road	Mhada sargam no40				Res.		88	4	MHADA	yes	11	4	3				Bin comp				2021-10-26
4358	Heera Panna Road	Sebi gaurur				Res.		32		Others	yes	0	8	0				Bin comp				2021-10-26
4359	Heera Panna Road	Gujarat bhavan				Res.		28		Others	yes	15	8	0				Bin comp				2021-10-26
4360	Heera Panna Road	Tata communication residential colony				Res.		105		MHADA	yes	0	30	5				comp bin				2021-10-26
4361	Heera Panna Road	Andhra bank quartres				Res.		62		MHADA	yes	2	20	2				comp bin				2021-10-26
4362	Heera Panna Road	Bmc garden i				Grdn				Others	yes	0	0	0								2021-10-26
4363	Oshiwara Mahada New Link Road	Marigold no. 1				Res.		34		MHADA	yes	0	12	0				Bin comp				2021-10-26
4364	Oshiwara Mahada New Link Road	Anushkaa no.2				Res.		34		MHADA	yes	0	20	0				Bin comp				2021-10-26
4365	Oshiwara Mahada New Link Road	Aroma no.3				Res.		34		MHADA	yes	0	30	0				Bin comp				2021-10-26
4366	Oshiwara Mahada New Link Road	Sunshine no.4				Res.		34		MHADA	yes	0	38	0				Bin comp				2021-10-26
4367	Oshiwara Mahada New Link Road	Starship no.11				Res.		28		MHADA	yes	21	35	2				Bin comp	18/09/2021			2021-10-26
4368	Oshiwara Mahada New Link Road	Lotus no.12				Res.		32		MHADA	yes	0	5	0				Bin comp	18/09/2021			2021-10-26
4369	Oshiwara Mahada New Link Road	Utsav no.13				Res.		32		MHADA	yes	25	12	1				comp bin  returned				2021-10-26
4370	Oshiwara Mahada New Link Road	Rajanigandha no.14				Res.		32		MHADA		0	18	0				Bin comp	18/09/2021			2021-10-26
4371	Oshiwara Mahada New Link Road	Income tax officers no.24				Res.		34		MHADA	yes	0	6	0				Bin comp	05.10.2021			2021-10-26
4372	Oshiwara Mahada New Link Road	Link way no.25				Res.		34		MHADA	yes	10	35	0				Bin comp				2021-10-26
4373	Oshiwara Mahada New Link Road	Central excise res.iety no.26				Res.		32		MHADA	yes	28	29	0								2021-10-26
4374	Oshiwara Mahada New Link Road	Central excise res.iety no.27				Res.		32		MHADA	yes	29	18	0								2021-10-26
4375	Oshiwara Mahada New Link Road	Harshvardhan chamber										0	8	0								2021-10-26
4376	Oshiwara Mahada New Link Road	Oshiwara police chowki				Com				Others	no	0	0	0								2021-10-26
4377	Oshiwara Mahada New Link Road	Matru chayya				Res.		32		MHADA	yes	5	12	2				Bin comp				2021-10-26
4378	Oshiwara Mahada New Link Road	Ekdant society				Res.		34		MHADA	yes	0	9	3				Bin comp				2021-10-26
4379	Oshiwara Mahada New Link Road	Parth no.43				Res.		32		MHADA	yes	0	15	0				Bin comp				2021-10-26
4380	Oshiwara Mahada New Link Road	Fakir wadi (t.camp)				Res.				Others	yes	391	0	0								2021-10-26
\.


--
-- Data for Name: zerowaste_grievance; Type: TABLE DATA; Schema: public; Owner: ward61user
--

COPY public.zerowaste_grievance (id, name, email, mobile, grievance, uploaded_at) FROM stdin;
1	monika	kjhjkh@jh.com	998	ytyutyu	2021-10-28 13:48:15.630014+02
2	test@kj	test@gmail.com	987897	kjnkj	2021-12-07 18:52:15.581217+01
\.


--
-- Data for Name: zerowaste_rating; Type: TABLE DATA; Schema: public; Owner: ward61user
--

COPY public.zerowaste_rating (id, name, mobile, email, service_swk, timing_swk, mobile_swk, compost_kit_garden, communicate_swk, solid_waste_man, service_workers, segregation, recycle_process, awareness, role) FROM stdin;
\.


--
-- Data for Name: zerowaste_report; Type: TABLE DATA; Schema: public; Owner: ward61user
--

COPY public.zerowaste_report (id, coll_date, recyclable_waste, compostable_waste, dry_waste_bf, hazardous_waste, region_name, wet_waste_bf, rejected_waste, building_name) FROM stdin;
3	2021-09-12	120	90	150	10	REGION1	100	30	NEELKANTH12
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ward61user
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 2, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ward61user
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 100, true);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ward61user
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 96, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ward61user
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 9, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ward61user
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 8, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ward61user
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 204, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ward61user
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 12, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ward61user
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 24, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ward61user
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 29, true);


--
-- Name: employee_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ward61user
--

SELECT pg_catalog.setval('public.employee_details_id_seq', 1, true);


--
-- Name: osm_buildings_29oct21_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ward61user
--

SELECT pg_catalog.setval('public.osm_buildings_29oct21_id_seq', 133, true);


--
-- Name: ward61_buildings_osm_2nov2021_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ward61user
--

SELECT pg_catalog.setval('public.ward61_buildings_osm_2nov2021_id_seq', 147, true);


--
-- Name: ward61_osm_buildings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ward61user
--

SELECT pg_catalog.setval('public.ward61_osm_buildings_id_seq', 133, true);


--
-- Name: waste_segregation_details_track_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ward61user
--

SELECT pg_catalog.setval('public.waste_segregation_details_track_id_seq', 4387, true);


--
-- Name: zerowaste_grievance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ward61user
--

SELECT pg_catalog.setval('public.zerowaste_grievance_id_seq', 2, true);


--
-- Name: zerowaste_rating_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ward61user
--

SELECT pg_catalog.setval('public.zerowaste_rating_id_seq', 1, true);


--
-- Name: zerowaste_report_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ward61user
--

SELECT pg_catalog.setval('public.zerowaste_report_id_seq', 3, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: employee_details employee_details_pkey; Type: CONSTRAINT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.employee_details
    ADD CONSTRAINT employee_details_pkey PRIMARY KEY (id);


--
-- Name: osm_buildings_29oct21 osm_buildings_29oct21_pkey; Type: CONSTRAINT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.osm_buildings_29oct21
    ADD CONSTRAINT osm_buildings_29oct21_pkey PRIMARY KEY (id);


--
-- Name: ward61_buildings_osm_2nov2021 ward61_buildings_osm_2nov2021_pkey; Type: CONSTRAINT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.ward61_buildings_osm_2nov2021
    ADD CONSTRAINT ward61_buildings_osm_2nov2021_pkey PRIMARY KEY (id);


--
-- Name: waste_segregation_details waste_segregation_details_pkey; Type: CONSTRAINT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.waste_segregation_details
    ADD CONSTRAINT waste_segregation_details_pkey PRIMARY KEY (track_id);


--
-- Name: zerowaste_grievance zerowaste_grievance_pkey; Type: CONSTRAINT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.zerowaste_grievance
    ADD CONSTRAINT zerowaste_grievance_pkey PRIMARY KEY (id);


--
-- Name: zerowaste_rating zerowaste_rating_pkey; Type: CONSTRAINT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.zerowaste_rating
    ADD CONSTRAINT zerowaste_rating_pkey PRIMARY KEY (id);


--
-- Name: zerowaste_report zerowaste_report_pkey; Type: CONSTRAINT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.zerowaste_report
    ADD CONSTRAINT zerowaste_report_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: ward61user
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: ward61user
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: ward61user
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: ward61user
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: ward61user
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: ward61user
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: ward61user
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: ward61user
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: ward61user
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: ward61user
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: ward61user
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: ward61user
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: ward61user
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ward61user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

