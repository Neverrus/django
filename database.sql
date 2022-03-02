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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO django;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO django;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO django;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO django;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO django;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO django;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: django
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


ALTER TABLE public.auth_user OWNER TO django;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO django;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO django;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO django;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO django;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO django;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.authtoken_token OWNER TO django;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: django
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


ALTER TABLE public.django_admin_log OWNER TO django;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO django;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO django;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO django;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO django;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO django;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO django;

--
-- Name: homework_message; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.homework_message (
    id bigint NOT NULL,
    title character varying(200) NOT NULL,
    image character varying(100),
    text text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    author_id integer NOT NULL
);


ALTER TABLE public.homework_message OWNER TO django;

--
-- Name: homework_message_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.homework_message_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.homework_message_id_seq OWNER TO django;

--
-- Name: homework_message_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.homework_message_id_seq OWNED BY public.homework_message.id;


--
-- Name: posts_post; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.posts_post (
    id bigint NOT NULL,
    title character varying(200) NOT NULL,
    image character varying(100),
    slug character varying(50) NOT NULL,
    text text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    author_id integer NOT NULL
);


ALTER TABLE public.posts_post OWNER TO django;

--
-- Name: posts_post_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.posts_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_post_id_seq OWNER TO django;

--
-- Name: posts_post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.posts_post_id_seq OWNED BY public.posts_post.id;


--
-- Name: posts_tags; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.posts_tags (
    id bigint NOT NULL,
    title character varying(100) NOT NULL
);


ALTER TABLE public.posts_tags OWNER TO django;

--
-- Name: posts_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.posts_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_tags_id_seq OWNER TO django;

--
-- Name: posts_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.posts_tags_id_seq OWNED BY public.posts_tags.id;


--
-- Name: posts_tags_posts; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.posts_tags_posts (
    id bigint NOT NULL,
    tags_id bigint NOT NULL,
    post_id bigint NOT NULL
);


ALTER TABLE public.posts_tags_posts OWNER TO django;

--
-- Name: posts_tags_posts_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.posts_tags_posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_tags_posts_id_seq OWNER TO django;

--
-- Name: posts_tags_posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.posts_tags_posts_id_seq OWNED BY public.posts_tags_posts.id;


--
-- Name: shop_product; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.shop_product (
    id bigint NOT NULL,
    title character varying(200) NOT NULL,
    cost integer NOT NULL,
    description text,
    image character varying(100),
    link character varying(200),
    status character varying(100) NOT NULL,
    external_id integer
);


ALTER TABLE public.shop_product OWNER TO django;

--
-- Name: shop_product_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.shop_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shop_product_id_seq OWNER TO django;

--
-- Name: shop_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.shop_product_id_seq OWNED BY public.shop_product.id;


--
-- Name: shop_purchase; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.shop_purchase (
    id bigint NOT NULL,
    count integer NOT NULL,
    product_id bigint NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp with time zone NOT NULL
);


ALTER TABLE public.shop_purchase OWNER TO django;

--
-- Name: shop_purchase_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.shop_purchase_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shop_purchase_id_seq OWNER TO django;

--
-- Name: shop_purchase_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.shop_purchase_id_seq OWNED BY public.shop_purchase.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: homework_message id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.homework_message ALTER COLUMN id SET DEFAULT nextval('public.homework_message_id_seq'::regclass);


--
-- Name: posts_post id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.posts_post ALTER COLUMN id SET DEFAULT nextval('public.posts_post_id_seq'::regclass);


--
-- Name: posts_tags id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.posts_tags ALTER COLUMN id SET DEFAULT nextval('public.posts_tags_id_seq'::regclass);


--
-- Name: posts_tags_posts id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.posts_tags_posts ALTER COLUMN id SET DEFAULT nextval('public.posts_tags_posts_id_seq'::regclass);


--
-- Name: shop_product id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.shop_product ALTER COLUMN id SET DEFAULT nextval('public.shop_product_id_seq'::regclass);


--
-- Name: shop_purchase id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.shop_purchase ALTER COLUMN id SET DEFAULT nextval('public.shop_purchase_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: django
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
25	Can add post	7	add_post
26	Can change post	7	change_post
27	Can delete post	7	delete_post
28	Can view post	7	view_post
29	Can add tags	8	add_tags
30	Can change tags	8	change_tags
31	Can delete tags	8	delete_tags
32	Can view tags	8	view_tags
33	Can add message	9	add_message
34	Can change message	9	change_message
35	Can delete message	9	delete_message
36	Can view message	9	view_message
37	Can add purchase	10	add_purchase
38	Can change purchase	10	change_purchase
39	Can delete purchase	10	delete_purchase
40	Can view purchase	10	view_purchase
41	Can add product	11	add_product
42	Can change product	11	change_product
43	Can delete product	11	delete_product
44	Can view product	11	view_product
45	Access admin page	12	view
46	Can add Token	13	add_token
47	Can change Token	13	change_token
48	Can delete Token	13	delete_token
49	Can view Token	13	view_token
50	Can add token	14	add_tokenproxy
51	Can change token	14	change_tokenproxy
52	Can delete token	14	delete_tokenproxy
53	Can view token	14	view_tokenproxy
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$320000$LUHQIevPNAV1cKjgGwTimW$tnrNbczJq0GEQUB7zN0wXY1n46Qe1GRGXPBjd8zBBXQ=	\N	f	never				f	t	2022-01-19 19:31:12.255936+03
3	pbkdf2_sha256$320000$WHEuC7nBb2emAiUlBFbPf4$GLhFGbQ1Fp7vYIbLa3OwjKSXj8534zDSSozfZ4//+BA=	2022-01-24 21:47:11.40206+03	t	neverrushs@gmail.com	Neverrus	Neverovich	neverrushs@gmail.com	t	t	2022-01-24 21:45:23+03
4		\N	f	1				f	t	2022-02-02 21:50:45.223738+03
5		\N	f	2				f	t	2022-02-02 21:51:36.1244+03
6		\N	f	3				f	t	2022-02-02 21:51:36.130352+03
1	pbkdf2_sha256$320000$VZadV8xfaE9u3T4ivWtJDh$6dMvMlRx5988SUPZZhUxl4Ve5CDLIkGNCO/bzQZg88U=	2022-02-16 20:32:41.224672+03	t	django			neverrushs@gmail.com	t	t	2022-01-17 21:32:33.734183+03
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.authtoken_token (key, created, user_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2022-01-19 19:08:45.240723+03	1	Post object (1)	1	[{"added": {}}]	7	1
2	2022-01-19 19:09:15.216328+03	2	Post object (2)	1	[{"added": {}}]	7	1
3	2022-01-19 19:09:42.287813+03	3	Post object (3)	1	[{"added": {}}]	7	1
4	2022-01-19 19:31:12.370604+03	2	never	1	[{"added": {}}]	4	1
5	2022-01-19 19:32:50.553162+03	4	Post object (4)	1	[{"added": {}}]	7	1
6	2022-01-19 19:37:50.172186+03	4	Post object (4)	2	[{"changed": {"fields": ["Image"]}}]	7	1
7	2022-01-24 21:46:37.781069+03	3	neverrushs@gmail.com	2	[{"changed": {"fields": ["Staff status", "Superuser status"]}}]	4	1
8	2022-02-07 21:42:05.489174+03	1	Product object (1)	1	[{"added": {}}]	11	1
9	2022-02-07 21:43:43.808457+03	2	Product object (2)	1	[{"added": {}}]	11	1
10	2022-02-07 21:46:55.473939+03	1	Product object (1)	2	[{"added": {"name": "purchase", "object": "Purchase object (1)"}}, {"added": {"name": "purchase", "object": "Purchase object (2)"}}]	11	1
11	2022-02-07 21:47:13.701754+03	2	Product object (2)	2	[{"added": {"name": "purchase", "object": "Purchase object (3)"}}, {"added": {"name": "purchase", "object": "Purchase object (4)"}}]	11	1
12	2022-02-09 21:23:37.658558+03	12	Вертикальный фрезер Werker EWRT002 - 249	3		11	1
13	2022-02-09 21:23:37.668866+03	22	Винтоверт Bosch GDR 120-LI Professional 06019F0000 - 175	3		11	1
14	2022-02-09 21:23:37.677568+03	19	Дрель BOSCH EasyImpact 600 0603133020 - 124	3		11	1
15	2022-02-09 21:23:37.687617+03	17	Дрель-миксер Werker PRO DME 1100 - 132	3		11	1
16	2022-02-09 21:23:37.693135+03	23	Дрель-шуруповерт Bosch GSR 120-LI Professional 06019G8000 - 226	3		11	1
17	2022-02-09 21:23:37.695299+03	10	Дрель-шуруповерт Bosch GSR 180-LI Professional 06019F8109 - 381	3		11	1
18	2022-02-09 21:23:37.697307+03	8	Дрель-шуруповерт Makita DF333DWAE с 2-мя АКБ, кейс - 229	3		11	1
19	2022-02-09 21:23:37.699282+03	13	Дрель-шуруповерт Makita DF333DWYE с 2-мя АКБ, кейс - 274	3		11	1
20	2022-02-09 21:23:37.700995+03	7	Дрель-шуруповерт Werker CD 1202 Li с 2-мя АКБ - 129	3		11	1
21	2022-02-09 21:23:37.702865+03	3	Дрель-шуруповерт Werker CD 1411 Li с 1-м АКБ - 129	3		11	1
22	2022-02-09 21:23:37.705386+03	9	Перфоратор Makita HR 2470 - 287	3		11	1
23	2022-02-09 21:23:37.707511+03	21	Пылесос Karcher WD 3 1.629-801.0 - 237	3		11	1
24	2022-02-09 21:23:37.709508+03	24	Рубанок Werker PL 710 - 139	3		11	1
25	2022-02-09 21:23:37.711304+03	25	Рубанок Werker PL 850 - 159	3		11	1
26	2022-02-09 21:23:37.713149+03	5	Рубанок Werker PL 900 - 179	3		11	1
27	2022-02-09 21:23:37.714702+03	18	Термоклеевой пистолет Werker EWSG002 - 15	3		11	1
28	2022-02-09 21:23:37.716233+03	4	Термоклеевой пистолет Werker EWSG004 - 12	3		11	1
29	2022-02-09 21:23:37.717612+03	11	Угловая шлифмашина Makita M9507 - 87	3		11	1
30	2022-02-09 21:23:37.719083+03	6	Угловая шлифмашина Werker AG 700 - 79	3		11	1
31	2022-02-09 21:23:37.720665+03	20	Угловая шлифмашина Werker PRO AGP 1100 - 169	3		11	1
32	2022-02-09 21:23:37.722079+03	15	Эксцентриковая шлифмашина Werker RS 270 S - 99	3		11	1
33	2022-02-09 21:23:37.7233+03	26	Электролобзик Bosch PST 650 06033A0720 - 144	3		11	1
34	2022-02-09 21:23:37.724505+03	14	Электролобзик Werker JS 850 - 139	3		11	1
35	2022-02-09 21:23:37.725727+03	16	Электроотвертка Werker SC 3.6 Li - 49	3		11	1
36	2022-02-09 21:25:27.73164+03	36	Вертикальный фрезер Werker EWRT002 - 249	3		11	1
37	2022-02-09 21:25:27.734566+03	46	Винтоверт Bosch GDR 120-LI Professional 06019F0000 - 175	3		11	1
38	2022-02-09 21:25:27.735747+03	43	Дрель BOSCH EasyImpact 600 0603133020 - 124	3		11	1
39	2022-02-09 21:25:27.736795+03	41	Дрель-миксер Werker PRO DME 1100 - 132	3		11	1
40	2022-02-09 21:25:27.738337+03	47	Дрель-шуруповерт Bosch GSR 120-LI Professional 06019G8000 - 226	3		11	1
41	2022-02-09 21:25:27.739698+03	34	Дрель-шуруповерт Bosch GSR 180-LI Professional 06019F8109 - 381	3		11	1
42	2022-02-09 21:25:27.74098+03	32	Дрель-шуруповерт Makita DF333DWAE с 2-мя АКБ, кейс - 229	3		11	1
43	2022-02-09 21:25:27.742259+03	37	Дрель-шуруповерт Makita DF333DWYE с 2-мя АКБ, кейс - 274	3		11	1
44	2022-02-09 21:25:27.74346+03	31	Дрель-шуруповерт Werker CD 1202 Li с 2-мя АКБ - 129	3		11	1
45	2022-02-09 21:25:27.744705+03	27	Дрель-шуруповерт Werker CD 1411 Li с 1-м АКБ - 129	3		11	1
46	2022-02-09 21:25:27.745865+03	33	Перфоратор Makita HR 2470 - 287	3		11	1
47	2022-02-09 21:25:27.746941+03	45	Пылесос Karcher WD 3 1.629-801.0 - 237	3		11	1
48	2022-02-09 21:25:27.748015+03	48	Рубанок Werker PL 710 - 139	3		11	1
49	2022-02-09 21:25:27.749239+03	49	Рубанок Werker PL 850 - 159	3		11	1
50	2022-02-09 21:25:27.750437+03	29	Рубанок Werker PL 900 - 179	3		11	1
51	2022-02-09 21:25:27.751491+03	42	Термоклеевой пистолет Werker EWSG002 - 15	3		11	1
52	2022-02-09 21:25:27.75256+03	28	Термоклеевой пистолет Werker EWSG004 - 12	3		11	1
53	2022-02-09 21:25:27.753621+03	35	Угловая шлифмашина Makita M9507 - 87	3		11	1
54	2022-02-09 21:25:27.754583+03	30	Угловая шлифмашина Werker AG 700 - 79	3		11	1
55	2022-02-09 21:25:27.755564+03	44	Угловая шлифмашина Werker PRO AGP 1100 - 169	3		11	1
56	2022-02-09 21:25:27.756503+03	39	Эксцентриковая шлифмашина Werker RS 270 S - 99	3		11	1
57	2022-02-09 21:25:27.757532+03	50	Электролобзик Bosch PST 650 06033A0720 - 144	3		11	1
58	2022-02-09 21:25:27.758674+03	38	Электролобзик Werker JS 850 - 139	3		11	1
59	2022-02-09 21:25:27.759694+03	40	Электроотвертка Werker SC 3.6 Li - 49	3		11	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	posts	post
8	posts	tags
9	homework	message
10	shop	purchase
11	shop	product
12	django_rq	queue
13	authtoken	token
14	authtoken	tokenproxy
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-01-17 21:18:46.551228+03
2	auth	0001_initial	2022-01-17 21:18:46.631371+03
3	admin	0001_initial	2022-01-17 21:18:46.650703+03
4	admin	0002_logentry_remove_auto_add	2022-01-17 21:18:46.658858+03
5	admin	0003_logentry_add_action_flag_choices	2022-01-17 21:18:46.665947+03
6	contenttypes	0002_remove_content_type_name	2022-01-17 21:18:46.677681+03
7	auth	0002_alter_permission_name_max_length	2022-01-17 21:18:46.684241+03
8	auth	0003_alter_user_email_max_length	2022-01-17 21:18:46.691469+03
9	auth	0004_alter_user_username_opts	2022-01-17 21:18:46.697727+03
10	auth	0005_alter_user_last_login_null	2022-01-17 21:18:46.70386+03
11	auth	0006_require_contenttypes_0002	2022-01-17 21:18:46.705634+03
12	auth	0007_alter_validators_add_error_messages	2022-01-17 21:18:46.711306+03
13	auth	0008_alter_user_username_max_length	2022-01-17 21:18:46.72+03
14	auth	0009_alter_user_last_name_max_length	2022-01-17 21:18:46.726272+03
15	auth	0010_alter_group_name_max_length	2022-01-17 21:18:46.733567+03
16	auth	0011_update_proxy_permissions	2022-01-17 21:18:46.739274+03
17	auth	0012_alter_user_first_name_max_length	2022-01-17 21:18:46.746583+03
18	sessions	0001_initial	2022-01-17 21:18:46.759248+03
19	posts	0001_initial	2022-01-17 21:43:28.527839+03
20	posts	0002_post_author	2022-01-17 21:54:53.029111+03
21	posts	0003_tags	2022-01-31 21:41:55.79424+03
22	homework	0001_initial	2022-02-02 18:57:31.351348+03
23	shop	0001_initial	2022-02-07 21:33:37.14533+03
24	shop	0002_product_description_product_image_product_link_and_more	2022-02-09 20:33:58.479544+03
25	shop	0003_product_external_id	2022-02-09 21:37:25.736197+03
26	django_rq	0001_initial	2022-02-16 20:27:20.205497+03
27	authtoken	0001_initial	2022-02-23 21:11:41.246282+03
28	authtoken	0002_auto_20160226_1747	2022-02-23 21:11:41.283514+03
29	authtoken	0003_tokenproxy	2022-02-23 21:11:41.286279+03
30	shop	0004_purchase_created_at	2022-02-23 21:17:11.470978+03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
bb57z8h36m709nb0p0q2i05rf3ojoo7n	.eJxVjMsOwiAURP-FtSGFIt66dN9vaO4DpGogKe3K-O_SpAtdzGbOmXmrCbc1TVsNyzSLuqpenX47Qn6GvAN5YL4XzSWvy0x6V_RBqx6LhNftcP8OEtbU1gzifIBoBrpE9tY7FOs6w2wRegRLTBIBO0QcjNgzoXFNaHEejFWfL_wfN-M:1nC4Mx:MliS4kfoWogDPBYAHREr4dtmwgVDFfr8uKljlWIe8aI	2022-02-07 21:47:11.403958+03
dethq2u41g6aydfcl5z51hynv8b5tdvs	.eJxVjEEOwiAQRe_C2pAOLTC4dN8zEGAGqRqalHZlvLtt0oVu33v_v4UP21r81njxE4mrAHH5ZTGkJ9dD0CPU-yzTXNdlivJI5GmbHGfi1-1s_w5KaGVfm5RNhwOjIUURNGMG6AZlMDvCnoJS4CzvkAEj9QSJnU2onc42YxSfL91SN_A:1nEbmS:QXjKuOZbuhjHN9SGD2Lsmea_RWG7rfMD7t6Iqgaf4s4	2022-02-14 21:52:00.971246+03
de06gp9q3ncxolukshg6rllzsr8fij3h	.eJxVjEEOwiAQRe_C2pAOLTC4dN8zEGAGqRqalHZlvLtt0oVu33v_v4UP21r81njxE4mrAHH5ZTGkJ9dD0CPU-yzTXNdlivJI5GmbHGfi1-1s_w5KaGVfm5RNhwOjIUURNGMG6AZlMDvCnoJS4CzvkAEj9QSJnU2onc42YxSfL91SN_A:1nKOAT:BAZuB-Tb4ET_f6k901ENrR_-1anv_FAorQIylV5j0GQ	2022-03-02 20:32:41.227429+03
\.


--
-- Data for Name: homework_message; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.homework_message (id, title, image, text, created_at, author_id) FROM stdin;
\.


--
-- Data for Name: posts_post; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.posts_post (id, title, image, slug, text, created_at, author_id) FROM stdin;
1	Test1		test1	Test1	2022-01-19 19:08:45.238604+03	1
2	Test2		test2	Test2	2022-01-19 19:09:15.214421+03	1
3	Test3		test3	Test3	2022-01-19 19:09:42.287061+03	1
4	Test4	billy-herrington-11549006699suan2rride.png	test4	Test4	2022-01-19 19:32:50.551448+03	2
5	UBER		UBER1	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi.	2022-01-26 19:01:51.048097+03	3
6	Kafka		test5	One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections. The bedding was hardly able to cover it and seemed ready to slide off any moment. His many legs, pitifully thin compared with the size of the rest of him, waved about helplessly as he looked. "What's happened to me?" he thought. It wasn't a dream. His room, a proper human room although a little too small, lay peacefully between its four familiar walls. A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame. It showed a lady fitted out with a fur hat and fur boa who sat upright, raising a heavy fur muff that covered the whole of her lower arm towards the viewer. Gregor then turned to look out the window at the dull weather.	2022-01-26 19:15:53.488797+03	3
7	test5	billy-herrington-11549006699suan2rride.png		test5	2022-01-31 21:52:19.934918+03	1
8	Test1		test	Test1	2022-02-02 21:46:19.90557+03	1
9	Test2		test	Test2	2022-02-02 21:46:19.914875+03	2
10	Test3		test	Test3	2022-02-02 21:46:19.916209+03	3
11	Test1	None	test	Test1	2022-02-02 21:48:37.459549+03	1
12	Test2	None	test	Test2	2022-02-02 21:48:37.473194+03	2
13	Test3	None	test	Test3	2022-02-02 21:48:37.481841+03	3
14	Test1	None	test	Test1	2022-02-02 21:51:36.096092+03	4
15	Test2	None	test	Test2	2022-02-02 21:51:36.127222+03	5
16	Test3	None	test	Test3	2022-02-02 21:51:36.132706+03	6
17	Test1	None	test	Test1	2022-02-02 22:01:56.630945+03	4
18	Test2	None	test	Test2	2022-02-02 22:01:56.640812+03	5
19	Test3	None	test	Test3	2022-02-02 22:01:56.642739+03	6
20	Test1	None	test	Test1	2022-02-02 22:02:46.750825+03	4
21	Test2	None	test	Test2	2022-02-02 22:02:46.760731+03	5
22	Test3	None	test	Test3	2022-02-02 22:02:46.775006+03	6
\.


--
-- Data for Name: posts_tags; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.posts_tags (id, title) FROM stdin;
\.


--
-- Data for Name: posts_tags_posts; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.posts_tags_posts (id, tags_id, post_id) FROM stdin;
\.


--
-- Data for Name: shop_product; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.shop_product (id, title, cost, description, image, link, status, external_id) FROM stdin;
1	RTX 3090Ti	99999	\N	\N	\N	IN_STOCK	\N
2	SHAURMA	10	\N	\N	\N	IN_STOCK	\N
51	Дрель-шуруповерт Werker CD 1411 Li с 1-м АКБ	129	\N	https://www.oma.by/upload/Sh/imageCache/070/d90/d9ff40b9ea6d1ec273d003ea1b043037.jpg	https://www.oma.by/akkumulyatornaya-drel-shurupovert-werker-cd-1411-li-1-261826-p	IN_STOCK	568707
52	Термоклеевой пистолет Werker EWSG004	12	\N	https://www.oma.by/upload/Sh/imageCache/a67/6b4/3ef143690b50746c461c2481f6cad704.jpg	https://www.oma.by/pistolet-termokleevoy-elektricheskiy-werker-ewsg004-1-258881-p	IN_STOCK	580771
53	Рубанок Werker PL 900	179	\N	https://www.oma.by/upload/Sh/imageCache/10a/3ba/b6a9bf4337ad5d717d5e9016b3315758.jpg	https://www.oma.by/rubanok-setevoy-werker-pl-900-1-260642-p	IN_STOCK	564406
54	Угловая шлифмашина Werker AG 700	79	\N	https://www.oma.by/upload/Sh/imageCache/74d/f20/ad6b9a6b05d6e9ebfb96c30c36034556.jpg	https://www.oma.by/shlifmashina-uglovaya-setevaya-werker-ag-700-1-260648-p	IN_STOCK	564412
55	Дрель-шуруповерт Werker CD 1202 Li с 2-мя АКБ	129	\N	https://www.oma.by/upload/Sh/imageCache/9d7/9fe/9657363fa62ab4945d68626c6f497432.jpg	https://www.oma.by/akkumulyatornaya-drel-shurupovert-werker-cd-1202-li-1-261823-p	IN_STOCK	568704
56	Дрель-шуруповерт Makita DF333DWAE с 2-мя АКБ, кейс	229	\N	https://www.oma.by/upload/Sh/imageCache/94c/62a/d59ccc29ebfe99e120d3d33eb415863a.jpg	https://www.oma.by/drel-shurupovert-makita-df333dwae-1-273763-p	IN_STOCK	829826
57	Перфоратор Makita HR 2470	287	\N	https://www.oma.by/upload/Sh/imageCache/baf/031/951f2fb952687e9203413a9e72a018ca.jpg	https://www.oma.by/perforator-makita-hr-2470-1-149453-p	IN_STOCK	260647
58	Дрель-шуруповерт Bosch GSR 180-LI Professional 06019F8109	381	\N	https://www.oma.by/upload/Sh/imageCache/6cf/0ac/b736f2af1a01777aa7f8031e476b2490.jpg	https://www.oma.by/drel-shurupovert-akk-bosch-gsr-180li-18v-2sk-54nm-2akk2-0ach-chem-06019f8109-1-278671-p	IN_STOCK	863614
59	Угловая шлифмашина Makita M9507	87	\N	https://www.oma.by/upload/Sh/imageCache/3ce/f20/950cf4cbd067988b4cb123b04181c1d3.jpg	https://www.oma.by/shlifmashina-uglov-makita-m9507-720vt-115mm-11000ob-min-kor-1-294658-p	IN_STOCK	939862
60	Вертикальный фрезер Werker EWRT002	249	\N	https://www.oma.by/upload/Sh/imageCache/b36/efd/0871e804d7c26e7ea493081d403bded7.jpg	https://www.oma.by/frezer-elektricheskiy-werker-ewrt002-1-253864-p	IN_STOCK	526403
61	Дрель-шуруповерт Makita DF333DWYE с 2-мя АКБ, кейс	274	\N	https://www.oma.by/upload/Sh/imageCache/c27/706/de9bf7bd72e1873f97eb2c24cd057d3b.jpg	https://www.oma.by/drel-shurupovert-akk-makita-df333dwye-12v-2sk-30nm-2akk1-5ach-psb-10-chem-1-282413-p	IN_STOCK	870888
62	Электролобзик Werker JS 850	139	\N	https://www.oma.by/upload/Sh/imageCache/8fa/729/f8290d6c7671f3fb3db05fde200e06cf.jpg	https://www.oma.by/lobzik-elektricheskiy-bytovoy-werker-js-850-850-vt-1-264348-p	IN_STOCK	575564
63	Эксцентриковая шлифмашина Werker RS 270 S	99	\N	https://www.oma.by/upload/Sh/imageCache/459/658/afd33995429ebc31fa832d8cb67f32b6.jpg	https://www.oma.by/shlifmashina-ekstsentrikovaya-setevaya-werker-rs-270-s-1-260669-p	IN_STOCK	564416
64	Электроотвертка Werker SC 3.6 Li	49	\N	https://www.oma.by/upload/Sh/imageCache/f64/9eb/084464e91460eefa4b0adaf8f87080a6.jpg	https://www.oma.by/shurupovert-otvertka-akkumulyatornyy-bytovoy-werker-sc-3-6-li-1-229951-p	IN_STOCK	864922
65	Дрель-миксер Werker PRO DME 1100	132	\N	https://www.oma.by/upload/Sh/imageCache/e3c/c4f/c6f9031c895f6c2aebcc3ddcd6862803.jpg	https://www.oma.by/drel-mikser-elektr-werker-pro-dme-1100-1100vt-800ob-min-psr-16mm-met-venchik150mm-kor-1-275273-p	IN_STOCK	875470
66	Термоклеевой пистолет Werker EWSG002	15	\N	https://www.oma.by/upload/Sh/imageCache/3a9/7ba/1511a9d0934755778485e2ea1cc6ac6c.jpg	https://www.oma.by/pistolet-termokleevoy-werker-ewsg002-1-251760-p	IN_STOCK	539905
67	Дрель BOSCH EasyImpact 600 0603133020	124	\N	https://www.oma.by/upload/Sh/imageCache/9ca/4a7/afd1fec8d9f60d9a0eafc7e838df3bd5.jpg	https://www.oma.by/drel-elektr-bosch-easyimpact-600-ud-600vt-revers-psr-13-kor-0603133020-1-304311-p	IN_STOCK	1008679
68	Угловая шлифмашина Werker PRO AGP 1100	169	\N	https://www.oma.by/upload/Sh/imageCache/551/d95/b1ea401c10236e8deccd8708efb44460.jpg	https://www.oma.by/shlifmashina-uglov-werker-pro-agp-1100-1100vt-125mm-reg-ob-2-8-12tys-ob-min-kor-1-279649-p	IN_STOCK	875473
69	Пылесос Karcher WD 3 1.629-801.0	237	\N	https://www.oma.by/upload/Sh/imageCache/8fc/6da/273f1f268b9ba3c64f7384e1e8663c23.jpg	https://www.oma.by/pylesos-khozyaystvennyy-karcher-wd3-1-629-801-0-1-232625-p	IN_STOCK	278724
70	Винтоверт Bosch GDR 120-LI Professional 06019F0000	175	\N	https://www.oma.by/upload/Sh/imageCache/eb8/716/083c2f321f2af4188ebe2483cc924ae9.jpg	https://www.oma.by/shurupovert-impulsnyy-akkumulyatornyy-bosch-gdr-120-li-1-250452-p	IN_STOCK	529534
71	Дрель-шуруповерт Bosch GSR 120-LI Professional 06019G8000	226	\N	https://www.oma.by/upload/Sh/imageCache/de1/57d/8a535516e7dfe635d11364c1a4512873.jpg	https://www.oma.by/drel-shurupovert-akkumulyatornaya-bosch-gsr-120-li-06019g8000-1-286119-p	IN_STOCK	880086
72	Рубанок Werker PL 710	139	\N	https://www.oma.by/upload/Sh/imageCache/468/f5f/c38a602370a9d25c7efc76df729f715f.jpg	https://www.oma.by/rubanok-setevoy-werker-pl-710-1-260640-p	IN_STOCK	564404
73	Рубанок Werker PL 850	159	\N	https://www.oma.by/upload/Sh/imageCache/390/938/6f51b7dc6f988803a9afe2ea53fe58c9.jpg	https://www.oma.by/rubanok-setevoy-werker-pl-850-1-260641-p	IN_STOCK	564405
74	Электролобзик Bosch PST 650 06033A0720	144	\N	https://www.oma.by/upload/Sh/imageCache/d76/419/29fb2a6be7827a48b105397b2641bd31.jpg	https://www.oma.by/lobzik-bosch-pst-650-compact-1-139641-p	IN_STOCK	259240
75	Дрель ударная электрич. EasyImpact 550 0.603.130.020	155	\N	_thumb_180x140xin_upload_iblock_f3d_1359189_1.jpg	https://mile.by/catalog/dreli-udarnye/udarnaia-drel-bosch-easyimpact-550-0603130020--product/	IN_STOCK	1359189
76	Пила торцовочная Einhell Einhell TС-MS (TH-MS) 2112 4300295	369	\N	_thumb_180x140xin_upload_iblock_0df_1263556_1.jpg	https://mile.by/catalog/tortsovochnye-pily/tortcovochnaia-pila-einhell-tc-ms-2112-4300295--product/	IN_STOCK	1263556
77	Угловая шлифмашина Bort BWS-905-R (98290004)	135	\N	_thumb_180x140xin_upload_iblock_930_1415454_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-bort-bws-905-r-98290004--product/	IN_STOCK	1415454
78	Угловая шлифмашина DWT WS08-125T	133	\N	_thumb_180x140xin_upload_iblock_583_1443075_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/ugloshlifovalnaya-mashina-dwt-ws08-125-t-product/	IN_STOCK	1443075
79	Дрель-шуруповерт WATT WSM-600 (2.600.010.10)	92	\N	_thumb_180x140xin_upload_iblock_87d_1441434_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-watt-wsm-600-2-600-010-10-product/	IN_STOCK	1441434
80	Угловая шлифмашина Hammer USM900D	111	\N	_thumb_180x140xin_upload_iblock_635_1479107-1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaya-shlifmashina-hammer-flex-usm900d-900vt-12000ob-min-125mm-product/	IN_STOCK	1479107
81	Лобзик Bosch PST 700E 500Вт	182	\N	_thumb_180x140xin_upload_iblock_a67_1118989_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/elektrolobzik-bosch-pst-700-e-06033a0020--product/	IN_STOCK	1118989
82	Угловая шлифмашина Bort BWS-1000-R (98296631)	0	\N	_thumb_180x140xin_upload_iblock_c75_1424313_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/bort-bws-1000-r-98296631--product/	OUT_OF_STOCK	1424313
83	Дрель-шуруповерт Daewoo DAA 1220Li (с 2-мя АКБ)	170	\N	_thumb_180x140xin_upload_iblock_2a0_1449940_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumulyatornaya-daewoo-daa-1220li-daa-1220li-product/	IN_STOCK	1449940
84	Дрель-шуруповерт аккумуляторная GSR 12V-15 FC    0.601.9F6.004	217	\N	_thumb_180x140xin_upload_iblock_f15_1394068_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumuliatornaia-bosch-gsr-12v-15-fc-professional-06019f6004-li-ion-12-v--product/	IN_STOCK	1394068
85	Дрель-шуруповерт Wortex BD 1820-1 Dli (BD18201DLi1029)	248	\N	_thumb_180x140xin_upload_iblock_fcb_1425456_1.jpg	https://mile.by/catalog/dreli-shurupoverty/akkum-drel-shurupovert-wortex-bd-1820-1-dli-v-chem-art-bd18201dli1029-product/	IN_STOCK	1425456
86	Торцовочная пила Metabo KGS 216 M (619260000)	825	\N	_thumb_180x140xin_upload_iblock_422_1295206_1.jpg	https://mile.by/catalog/tortsovochnye-pily/tortcovochnaia-pila-metabo-kgs-216-m-619260000--product/	IN_STOCK	1295206
87	Торцовочная пила AEG PS 254 L (4935440670)	1109	\N	_thumb_180x140xin_upload_iblock_cb7_1291193_1.jpg	https://mile.by/catalog/tortsovochnye-pily/tortcovochnaia-pila-aeg-ps-254-l-4935440670--product/	IN_STOCK	1291193
88	Торцовочная пила Ryobi EMS254L (5133001202)	849	\N	_thumb_180x140xin_upload_iblock_682_1263313_1.jpg	https://mile.by/catalog/tortsovochnye-pily/tortcovochnaia-pila-ryobi-ems254l-5133001202--product/	IN_STOCK	1263313
89	Многофункциональный инструмент Dremel 7760-15 Lite (F.013.776.0JD)	212	\N	_thumb_180x140xin_upload_iblock_5e6_1434357_1.jpg	https://mile.by/catalog/gravery/mnogofunktsionalnyy-instrument-akkum-dremel-7760-15-lite-f-013-776-0jd-product/	IN_STOCK	1434357
90	Ударная дрель-шуруповерт Bosch GSB 120-LI Professional 0.601.9G8.100 (с 2-мя АКБ, кейс)	262	\N	_thumb_180x140xin_upload_iblock_ba8_1435692-1.jpg	https://mile.by/catalog/dreli-shurupoverty/akk-udarn-drel-shurupovert-li-ion-12-v-gsb-120-li-0-601-9g8-100-product/	IN_STOCK	1435692
91	Промышленный фен Bort BHG-2000X (91272577)	55	\N	_thumb_180x140xin_upload_iblock_d68_1465967_1.jpg	https://mile.by/catalog/stroitelnye-feny/promyshlennyy-fen-bort-bhg-2000x-91272577-product/	IN_STOCK	1465967
92	Дрель-шуруповерт сетевая PATRIOT FS 250	53	\N	_thumb_180x140xin_upload_iblock_b17_1371470_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-setevoi-patriot-fs-250-120301465--product/	IN_STOCK	1371470
93	Угловая шлифовальная машина WWS-900 NEW d125 без рег 4.900.125.20	65	\N	_thumb_180x140xin_upload_iblock_cde_1375470_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-watt-wws-900-490012520--product/	IN_STOCK	1375470
94	Перфоратор Bosch PBH 2100 RE	209	\N	_thumb_180x140xin_upload_iblock_32a_1289351_1.jpg	https://mile.by/catalog/perforatory_/perforator-bosch-pbh-2100-re-06033a9320--product/	IN_STOCK	1289351
95	Лобзик Bosch PST 750 PE 0.603.3A0.521	139	\N	_thumb_180x140xin_upload_iblock_37a_1004145_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/lobzik-bosch-pst-750-pe-0-603-3a0-521-product/	IN_STOCK	1004145
96	Лобзик электрич. PST 750 PE 0.603.3A0.520	149	\N	_thumb_180x140xin_upload_iblock_45a_1365809_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/elektrolobzik-bosch-pst-750-pe-06033a0520--product/	IN_STOCK	1365809
97	Промышленный фен WATT  WHP-2020 (702000210)	48	\N	_thumb_180x140xin_upload_iblock_fb3_1075274_1.jpg	https://mile.by/catalog/stroitelnye-feny/promyshlennyi-fen-watt-whp-2020-702000210--product/	IN_STOCK	1075274
98	Дрель-шуруповерт WATT WAS-12 Li-2 101202712 (с 2мя АКБ)	95	\N	_thumb_180x140xin_upload_iblock_9f1_1394768_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumuliatornaia-watt-was-12li-2-101202712--product/	IN_STOCK	1394768
99	Фен технический PATRIOT HG201 The One	40	\N	_thumb_180x140xin_upload_iblock_ba0_1373589_1.jpg	https://mile.by/catalog/stroitelnye-feny/promyshlennyy-fen-patriot-hg201-the-one-170301311-product/	IN_STOCK	1373589
100	Гравер электрический Molot MMG 3215 E (MMG3215E11424)	74	\N	_thumb_180x140xin_upload_iblock_77d_1415447_1.jpg	https://mile.by/catalog/gravery/graver-elektricheskii-molot-mmg-3215-e-mmg3215e11424--product/	IN_STOCK	1415447
101	Одноручная углошлифмашина WORTEX AG 1210-1 в кор., арт.AG1210100013	109	\N	_thumb_180x140xin_upload_iblock_6b3_1419304_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/odnoruchnaya-ugloshlifmashina-wortex-ag-1210-1-v-kor-art-ag1210100013-product/	IN_STOCK	1419304
102	Угловая шлифмашина Bosch GWS 750 S (0.601.394.121)	144	\N	_thumb_180x140xin_upload_iblock_2fd_1415738_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/ugloshlifmashina-gws-750-s-0-601-394-121-product/	IN_STOCK	1415738
103	Ударная дрель Wortex DS 1308 (DS130800029)	73	\N	_thumb_180x140xin_upload_iblock_7e6_1456734_1.jpg	https://mile.by/catalog/dreli-udarnye/drel-udarnaya-wortex-ds-1308-v-kor-art-ds130800029-product/	IN_STOCK	1456734
104	Дрель-шуруповерт Wortex DR 1023 D (DR1023D0029)	81	\N	_thumb_180x140xin_upload_iblock_7e2_1456740_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-wortex-dr-1023-d-v-kor-art-dr1023d0029-product/	IN_STOCK	1456740
105	Эксцентриковая шлифмашина Wortex RS 1250-1 AE (RS12501AE01319)	124	\N	_thumb_180x140xin_upload_iblock_e03_1421065_1.jpg	https://mile.by/catalog/ekstsentrikovye-shlifovalnye-mashiny/ekstsentrikovaya-shlifmashina-wortex-rs-1250-1-ae-v-kor-art-rs12501ae01319-product/	IN_STOCK	1421065
106	Угловая шлифмашина DWT WS08-125 V	115	\N	_thumb_180x140xin_upload_iblock_ed2_1463618_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/shlifmashina-uglovaya-ws08-125-v-product/	IN_STOCK	1463618
107	Дрель-шуруповерт Watt WSM-550 (2.550.010.00)	64	\N	_thumb_180x140xin_upload_iblock_fd0_1438564_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-watt-wsm-550-2-550-010-00-product/	IN_STOCK	1438564
283	Гравер Dremel 3000-15 F0133000JL	188	\N	_thumb_180x140xin_upload_iblock_601_1313300_1.jpg	https://mile.by/catalog/gravery/graver-dremel-3000-15-f0133000jl-product/	IN_STOCK	1313300
108	Электролобзик JS 7008 LE (арт.JS7008LE019)	99	\N	_thumb_180x140xin_upload_iblock_c5c_1464436_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/lobzik-elektricheskiy-wortex-js-7008-le-v-kor-art-js7008le019-product/	IN_STOCK	1464436
109	Дрель ударная электрич. EasyImpact 600 0.611.2A6.020	113	\N	_thumb_180x140xin_upload_iblock_772_1477832-1.jpg	https://mile.by/catalog/dreli-udarnye/drel-udarnaya-elektrich-easyimpact-600-0-603-133-020-product/	IN_STOCK	1477832
110	Циркулярная пила Wortex CS 1915 (CS191500019)	159	\N	_thumb_180x140xin_upload_iblock_7bd_1471903_1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/tsirkulyarnaya-pila-wortex-cs-1915-v-kor-art-cs191500019-product/	IN_STOCK	1471903
111	Шуруповерт WATT WAS-21Li 1.021.029.10	169	\N	_thumb_180x140xin_upload_iblock_973_1485279_1.jpg	https://mile.by/catalog/elektrootvertki-shurupoverty-i-gaykoverty/shurupovert-watt-was-21li-1-021-029-10-product/	IN_STOCK	1485279
112	Дрель-шуруповерт Wortex BD 1215-1 Li (BD12151Li10029)	154	\N	_thumb_180x140xin_upload_iblock_7da_1485281_1.jpg	https://mile.by/catalog/dreli-shurupoverty/akkum-drel-shurupovert-wortex-bd-1215-1-li-v-chem-art-bd12151li10029-product/	IN_STOCK	1485281
113	Перфоратор Wortex LX RH 2628 (0329062)	173	\N	_thumb_180x140xin_upload_iblock_181_1485282_1.jpg	https://mile.by/catalog/perforatory_/perforator-wortex-lx-rh-2628-v-chem-art-0329062-product/	IN_STOCK	1485282
114	Ударная дрель DWT SBM07-13	99	\N	_thumb_180x140xin_upload_iblock_115_1472331_1.jpg	https://mile.by/catalog/dreli-udarnye/drel-udarnaya-sbm07-13-product/	IN_STOCK	1472331
115	Дрель-шуруповерт DWT ABS-14.4 L-2 BMC	169	\N	_thumb_180x140xin_upload_iblock_7df_1472340_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-akkumulyatornaya-abs-14-4-l-2-bmc-product/	IN_STOCK	1472340
116	Угловая шлифмашина Molot MAG 1208-1 (MAG120810027)	77	\N	_thumb_180x140xin_upload_iblock_87f_1469838_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/odnoruchnaya-ugloshlifmashina-molot-mag-1208-1-v-kor-art-mag120810027-product/	IN_STOCK	1469838
117	Дрель-шуруповерт Patriot BR 189UES (180301549)	151	\N	_thumb_180x140xin_upload_iblock_b16_1492529_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumulyatornaya-patriot-br-189ues-180301549-product/	IN_STOCK	1492529
118	Угловая шлифмашина Patriot AG 131 (110301331)	79	\N	_thumb_180x140xin_upload_iblock_f90_1492531_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/mashina-ugloshlifovalnaya-ushm-patriot-ag-131-110301331-product/	IN_STOCK	1492531
119	Дрель-шуруповерт DWT BM02-10 ST	82	\N	_thumb_180x140xin_upload_iblock_c3d_1492645_1.jpg	https://mile.by/catalog/dreli-shurupoverty/shurupovert-setevoy-bm02-10-st-product/	IN_STOCK	1492645
120	Перфоратор Makita HR 2470	286	\N	_thumb_180x140xin_upload_iblock_625_1494015-1.jpg	https://mile.by/catalog/perforatory_/perforator-makita-hr-2470-33760030-product/	IN_STOCK	1494015
121	Многофункциональный инструмент DREMEL 3000-1/25, F.013.300.0JT	248	\N	_thumb_180x140xin_upload_iblock_ef2_1325905_1.jpg	https://mile.by/catalog/gravery/graver-dremel-3000-1-25-f0133000jt-product/	IN_STOCK	1325905
122	Углошлифовальная машина DWT WS08-125 E	140	\N	_thumb_180x140xin_upload_iblock_935_1437664_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/ugloshlifovalnaya-mashina-dwt-ws08-125-e-product/	IN_STOCK	1437664
123	Шуруповерт аккумуляторный EasyDrill 1200 0.603.9A2.10B	262	\N	_thumb_180x140xin_upload_iblock_887_1359184_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumuliatornaia-bosch-easydrill-1200-06039a210b-li-ion-12-v--product/	IN_STOCK	1359184
124	Дрель-шуруповерт аккумуляторная Makita DDF453RFE (Li-ion 18 В)	493	\N	_thumb_180x140xin_upload_iblock_2a3_1368214_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumuliatornaia-makita-ddf453rfe-li-ion-18-v--product/	IN_STOCK	1368214
125	Дрель-шуруповерт аккумуляторная Makita DDF453SYE (Li-ion 18 В)	404	\N	_thumb_180x140xin_upload_iblock_012_1349546_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumuliatornaia-makita-ddf453sye-li-ion-18-v--product/	IN_STOCK	1349546
126	Дрель-шуруповерт аккумуляторная TH-CD 12-2LI 4513660	0	\N	_thumb_180x140xin_upload_iblock_497_1360516_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumuliatornaia-einhell-th-cd-12-2-li-4513660-li-ion-12-v--product/	OUT_OF_STOCK	1360516
127	Дрель аккум. Интерскол ДА-10/14,4 ЭР	247	\N	_thumb_180x140xin_upload_iblock_a14_1267001_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumuliatornaia-interskol-da-10-14-4er-li-ion-14-4-v--product/	IN_STOCK	1267001
128	Дрель ручная электр. аккум. ДЭА-18НК-01	0	\N	_thumb_180x140xin_upload_iblock_026_1336112_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumuliatornaia-diold-dea-18nk-01-ni-cd-18-v--product/	OUT_OF_STOCK	1336112
129	Дрель-шуруповерт аккумуляторная PATRIOT THE ONE BR 181Li	171	\N	_thumb_180x140xin_upload_iblock_cb7_1371586_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumuliatornaia-patriot-br-181li-180201425-li-ion-18-v--product/	IN_STOCK	1371586
130	Дрель-шуруповерт аккумуляторная PATRIOT THE ONE BR 114Li	149	\N	_thumb_180x140xin_upload_iblock_db3_1375490_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumuliatornaia-patriot-br-114li-180201405-li-ion-12-v--product/	IN_STOCK	1375490
131	Дрель-шуруповерт аккумуляторная PATRIOT THE ONE BR 141Li	175	\N	_thumb_180x140xin_upload_iblock_6d1_1378448_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumuliatornaia-patriot-br-141li-180201419-li-ion-14-4-v--product/	IN_STOCK	1378448
132	Дрель-шуруповерт аккумуляторная PATRIOT THE ONE BR 201Li	166	\N	_thumb_180x140xin_upload_iblock_48b_1388131_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumuliatornaia-patriot-br-201li-180201406-li-ion-20-v--product/	IN_STOCK	1388131
133	Дрель-шуруповерт Black & Decker BDCDD12-XK	0	\N	_thumb_180x140xin_upload_iblock_b45_1367717_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumuliatornaia-black-decker-bdcdd12k-10-8-v--product/	OUT_OF_STOCK	1367717
134	Дрель-шуруповерт SCD20S2K 18В Li-ion 1,5 Ач.	295	\N	_thumb_180x140xin_upload_iblock_736_1371155_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumuliatornaia-stanley-scd20s2k-li-ion-18-v--product/	IN_STOCK	1371155
135	Аккумуляторный БЕСЩЕТОЧНЫЙ шуруповерт Stanley SBD20S2K Li-Ion 18V	0	\N	_thumb_180x140xin_upload_iblock_e65_1377852_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumuliatornaia-stanley-sbd20s2k-li-ion-18-v--product/	OUT_OF_STOCK	1377852
136	Дрель аккумуляторная BLACK & DECKER BDCDC18KB-QW	235	\N	_thumb_180x140xin_upload_iblock_ae4_1384678_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumuliatornaia-black-decker-bdcdc18kb-li-ion-18-v--product/	IN_STOCK	1384678
137	18В УДАРНАЯ ДРЕЛЬ-ШУРУПОВЕРТ, 45 НМ (SCH201D2K)	435	\N	_thumb_180x140xin_upload_iblock_3b7_1389532_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumuliatornaia-stanley-sch201d2k-li-ion-18-v--product/	IN_STOCK	1389532
138	Дрель-шуруповерт аккумуляторная Stanley SBH20S2K (Li-Ion 18 В)	0	\N	_thumb_180x140xin_upload_iblock_702_1389533_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumuliatornaia-stanley-sbh20s2k-li-ion-18-v--product/	OUT_OF_STOCK	1389533
139	Дрель-шуруповерт ударная аккумуляторная GSB 180-LI    0.601.9F8.300	439	\N	_thumb_180x140xin_upload_iblock_6d3_1374708_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumuliatornaia-bosch-gsb-180-li-professional-06019f8300-li-ion-18-v--product/	IN_STOCK	1374708
140	18.0В XR ударная дрель-шуруповерт DeWalt DCD776S2-KS	496	\N	_thumb_180x140xin_upload_iblock_f1b_1377138_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumuliatornaia-dewalt-dcd776s2-ks-li-ion-18-v--product/	IN_STOCK	1377138
141	Электрический шуруповерт Диолд ЭШ-06	94	\N	_thumb_180x140xin_upload_iblock_e55_1330739_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-setevoi-diold-esh-0-6--product/	IN_STOCK	1330739
142	Электрический шуруповерт 2-х скор, ЭШ-0,56-2 560Вт,0-450/0-150 об/мин, 24Нм	122	\N	_thumb_180x140xin_upload_iblock_a68_1341649_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-setevoi-diold-esh-0-56-2--product/	IN_STOCK	1341649
143	Дрель-шуруповерт сетевая PATRIOT FS300	121	\N	_thumb_180x140xin_upload_iblock_1c8_1376153_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-setevoi-patriot-fs-300-120301400--product/	IN_STOCK	1376153
144	Шлифмашина угловая Bosch PWS 750-125	172	\N	_thumb_180x140xin_upload_iblock_739_1052912_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-bosch-pws-750-125-06033a2422--product/	IN_STOCK	1052912
145	Шлифмашина угловая бытовая BOSCH PWS 850-125	225	\N	_thumb_180x140xin_upload_iblock_edc_1251443_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-bosch-pws-850-125-06033a2720--product/	IN_STOCK	1251443
146	Шлифмашина угловая бытовая BOSCH PWS 750-115	162	\N	_thumb_180x140xin_upload_iblock_6d2_1254900_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-bosch-pws-750-115-06033a2421--product/	IN_STOCK	1254900
147	Машина шлиф. уловая электр. PWS 700-115 0.603.3A2.020	141	\N	_thumb_180x140xin_upload_iblock_d1f_1289363_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-bosch-pws-700-115-06033a2020--product/	IN_STOCK	1289363
148	Шлифмашина угловая бытовая BOSCH PWS 850-125 0.603.3A2.721	194	\N	_thumb_180x140xin_upload_iblock_d28_1302834_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-bosch-pws-850-125-06033a2721--product/	IN_STOCK	1302834
149	Угловая шлифмашина Makita GA9020	319	\N	_thumb_180x140xin_upload_iblock_9e2_1032099_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-makita-ga9020-product/	IN_STOCK	1032099
150	Угловая шлифмашина Makita 9558HN	194	\N	_thumb_180x140xin_upload_iblock_4df_1046015_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-makita-9558hn-product/	IN_STOCK	1046015
151	Угловая шлифмашина Makita 9069	328	\N	_thumb_180x140xin_upload_iblock_92e_1104060_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-makita-9069-product/	IN_STOCK	1104060
152	Угловая шлифмашина Makita 9565 HZ	300	\N	_thumb_180x140xin_upload_iblock_d3c_1334447_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-makita-9565-hz-product/	IN_STOCK	1334447
153	Угловая шлифмашина Makita 9562 CVH	404	\N	_thumb_180x140xin_upload_iblock_041_1349549_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-makita-9562-cvh-product/	IN_STOCK	1349549
154	Угловая шлифмашина Makita GA5034	159	\N	_thumb_180x140xin_upload_iblock_fcf_1368217_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-makita-ga5034-product/	IN_STOCK	1368217
155	Угловая шлифмашина Makita GA6021C	475	\N	_thumb_180x140xin_upload_iblock_bfa_1368218_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-makita-ga6021c-product/	IN_STOCK	1368218
156	Угловая шлифмашина Makita SA7000C	506	\N	_thumb_180x140xin_upload_iblock_3bc_1368225_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-makita-sa7000c-product/	IN_STOCK	1368225
157	Угловая шлифмашина Makita GA9020SF	396	\N	_thumb_180x140xin_upload_iblock_519_1368892_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-makita-ga9020sf-product/	IN_STOCK	1368892
158	Углошлифмашина Einhell TC-AG 125 4430619	128	\N	_thumb_180x140xin_upload_iblock_9bb_1335365_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-einhell-tc-ag-125-4430619--product/	IN_STOCK	1335365
159	Углошлифмашина TE-AG 125 CE (4430860)	195	\N	_thumb_180x140xin_upload_iblock_772_1384478_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-einhell-te-ag-125-ce-product/	IN_STOCK	1384478
160	Угловая шлифовальная машина WWS-850 NEW 850 Вт, d125 рег оборотов) 4.850.125.10	81	\N	_thumb_180x140xin_upload_iblock_6b9_1375236_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-watt-wws-850-485012510--product/	IN_STOCK	1375236
161	Угловая полировальная машина WAP-1400 (4.014.180.20)	180	\N	_thumb_180x140xin_upload_iblock_f8f_1378434_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-watt-wws-1400-401418020--product/	IN_STOCK	1378434
162	Шлифмашина угловая УШМ-230/2100 М	0	\N	_thumb_180x140xin_upload_iblock_ef5_1056924_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-interskol-ushm-230-2100m-product/	OUT_OF_STOCK	1056924
163	Угловая шлифмашина УШМ-125/1100 Э	203	\N	_thumb_180x140xin_upload_iblock_277_1087004_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-interskol-ushm-125-1100e-product/	IN_STOCK	1087004
164	Машина руч электрич полиров УПМ-180/1300Э	0	\N	_thumb_180x140xin_upload_iblock_f43_1233487_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-interskol-upm-180-1300e-product/	OUT_OF_STOCK	1233487
165	Шлифмашина угловая УШМ-125/1400 ЭЛ	0	\N	_thumb_180x140xin_upload_iblock_a76_1320909_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-interskol-ushm-125-1400el-product/	OUT_OF_STOCK	1320909
166	Шлифмашина угловая 1000Вт max=125мм МШУ-1,0-125	120	\N	_thumb_180x140xin_upload_iblock_bd6_1017931_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-diold-mshu-1-0-125-product/	IN_STOCK	1017931
167	Машина шлиф.углов. 1200Вт,2500-6800 об/мин МШУ-1,2-01	154	\N	_thumb_180x140xin_upload_iblock_164_1322704_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-diold-mshu-1-2-01-product/	IN_STOCK	1322704
168	Машина шлиф.углов. 950Вт 0-11000об/мин МШУ-0,95-01	111	\N	_thumb_180x140xin_upload_iblock_db6_1322705_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-diold-mshu-0-95-01-product/	IN_STOCK	1322705
169	Машина шлиф.углов. 1500Вт 0-8000 об/мин МШУ-1,5-01	196	\N	_thumb_180x140xin_upload_iblock_58a_1322706_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-diold-mshu-1-5-01-product/	IN_STOCK	1322706
170	Машина шлифовальная угловая, МШУ-1-02 1000 Вт,10000 об/мин	111	\N	_thumb_180x140xin_upload_iblock_a77_1341636_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-diold-mshu-1-02-product/	IN_STOCK	1341636
171	Угловая шлифмашина AEG WS 13-125 XE	273	\N	_thumb_180x140xin_upload_iblock_692_1330351_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-aeg-ws-13-125-xe-product/	IN_STOCK	1330351
172	Угловая шлифмашина AEG WS 8-125 (4935451402)	177	\N	_thumb_180x140xin_upload_iblock_029_1341434_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-aeg-ws-8-125-4935451402--product/	IN_STOCK	1341434
173	Угловая шлифмашина AEG WS 10-125 (4935451301)	233	\N	_thumb_180x140xin_upload_iblock_d61_1353753_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-aeg-ws-10-125-4935451301--product/	IN_STOCK	1353753
174	Угловая шлифмашина Ryobi R18AG-0	186	\N	_thumb_180x140xin_upload_iblock_18d_1263273_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-ryobi-r18ag-0-product/	IN_STOCK	1263273
175	Полировальная машина Wortex PM 1810 SE	215	\N	_thumb_180x140xin_upload_iblock_d43_1371648_1.jpg	https://mile.by/catalog/ekstsentrikovye-shlifovalnye-mashiny/polirovalnaia-mashina-wortex-pm-1810-se-product/	IN_STOCK	1371648
176	Машина углошлифовальная  PATRIOT AG120M	122	\N	_thumb_180x140xin_upload_iblock_69c_1371472_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-patriot-ag-120m-product/	IN_STOCK	1371472
177	Машина углошлифовальная PATRIOT AG122	154	\N	_thumb_180x140xin_upload_iblock_5fa_1375492_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-patriot-ag-122-110301210--product/	IN_STOCK	1375492
178	Машина углошлифовальная PATRIOT AG125	175	\N	_thumb_180x140xin_upload_iblock_3f9_1388142_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-patriot-ag-125-110301215--product/	IN_STOCK	1388142
179	Машина угловая полировальная PATRIOT AG180	216	\N	_thumb_180x140xin_upload_iblock_6dc_1388143_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-patriot-ag-180-product/	IN_STOCK	1388143
180	Углошлифмашина GWS 9-125 S 0.601.396.102	211	\N	_thumb_180x140xin_upload_iblock_e56_1394057_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-bosch-gws-9-125-s-professional-0601396102--product/	IN_STOCK	1394057
181	Углошлифмашина GWS 1000       0601828800	231	\N	_thumb_180x140xin_upload_iblock_dd8_1355569_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-bosch-gws-1000-professional-0601828800--product/	IN_STOCK	1355569
182	Углошлифмашина GWS 13-125 CIE   060179F002	408	\N	_thumb_180x140xin_upload_iblock_516_1355570_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-bosch-gws-13-125-cie-professional-060179f002--product/	IN_STOCK	1355570
183	Углошлифмашина GWS 17-125 CIE 060179H002	435	\N	_thumb_180x140xin_upload_iblock_441_1355571_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-bosch-gws-17-125-cie-professional-060179h002--product/	IN_STOCK	1355571
184	Углошлифмашина GWS 750-125     0601394001	172	\N	_thumb_180x140xin_upload_iblock_449_1355572_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-bosch-gws-750-125-professional-0601394001--product/	IN_STOCK	1355572
185	Углошлифмашина GWS 19-125 CIE    0.601.79P.002	581	\N	_thumb_180x140xin_upload_iblock_ac7_1356446_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-bosch-gws-19-125-cie-professional-060179p002--product/	IN_STOCK	1356446
186	Угловая шлифмашина 125 мм 730Вт DeWalt DWE4015-KS	179	\N	_thumb_180x140xin_upload_iblock_0d1_1377147_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-dewalt-dwe4015-ks-product/	IN_STOCK	1377147
187	Угловая шлифмашина 125 мм 1200Вт DeWalt DWE4215-KS	0	\N	_thumb_180x140xin_upload_iblock_c5c_1377149_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-dewalt-dwe4215-ks-product/	OUT_OF_STOCK	1377149
188	Углошлифмашина GWS 22-230 JH    0601882203	370	\N	_thumb_180x140xin_upload_iblock_dae_1087950_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-bosch-gws-22-230-jh-professional-0601882203--product/	IN_STOCK	1087950
189	Углошлифмашина GWS 22-230H    0601882103	0	\N	_thumb_180x140xin_upload_iblock_e75_1098916_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-bosch-gws-22-230-h-professional-0601882103--product/	OUT_OF_STOCK	1098916
190	Углошлифмашина GWS 1400     0601824800	314	\N	_thumb_180x140xin_upload_iblock_f21_1102709_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-bosch-gws-1400-professional-0601824800--product/	IN_STOCK	1102709
191	Углошлифмашина GWS 20-230 H   0601850107	345	\N	_thumb_180x140xin_upload_iblock_549_1032096_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-bosch-gws-20-230-h-professional-0601850107--product/	IN_STOCK	1032096
192	Углошлифмашина GWS 24-230 Н   0601884103	512	\N	_thumb_180x140xin_upload_iblock_dd5_1308409_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-bosch-gws-24-230-h-professional-0601884103--product/	IN_STOCK	1308409
193	Перфоратор AEG KH 24IE (4935451555)	410	\N	_thumb_180x140xin_upload_iblock_75c_1352189_1.jpg	https://mile.by/catalog/perforatory_/perforator-aeg-kh-24ie-4935451555--product/	IN_STOCK	1352189
194	Перфоратор Bosch PBH 2100 SRE	281	\N	_thumb_180x140xin_upload_iblock_98e_1229352_1.jpg	https://mile.by/catalog/perforatory_/perforator-bosch-pbh-2100-sre-06033a9321--product/	IN_STOCK	1229352
195	Перфоратор BOSCH PBH 2500 RE	267	\N	_thumb_180x140xin_upload_iblock_2e1_1243075_1.jpg	https://mile.by/catalog/perforatory_/perforator-bosch-pbh-2500-re-0603344421--product/	IN_STOCK	1243075
196	Перфоратор GBH 2-20 D    0.611.25A.400	397	\N	_thumb_180x140xin_upload_iblock_305_1097369_1.jpg	https://mile.by/catalog/perforatory_/perforator-bosch-gbh-2-20-d-professional-061125a400--product/	IN_STOCK	1097369
197	Перфоратор GBH 2-26 DRЕ    0611253708	445	\N	_thumb_180x140xin_upload_iblock_170_1297969_1.jpg	https://mile.by/catalog/perforatory_/perforator-bosch-gbh-2-26-dre-professional-0611253708--product/	IN_STOCK	1297969
198	Перфоратор GBH 240    0611272100	345	\N	_thumb_180x140xin_upload_iblock_1c6_1355575_1.jpg	https://mile.by/catalog/perforatory_/perforator-bosch-gbh-2-24-dre-professional-0611272100--product/	IN_STOCK	1355575
199	Перфоратор GBH 240 F    0611273000	430	\N	_thumb_180x140xin_upload_iblock_723_1355574_1.jpg	https://mile.by/catalog/perforatory_/perforator-bosch-gbh-2-24-dfr-professional-0611273000--product/	IN_STOCK	1355574
200	Перфоратор GBH 2-28       0611267500	560	\N	_thumb_180x140xin_upload_iblock_a95_1355577_1.jpg	https://mile.by/catalog/perforatory_/perforator-bosch-gbh-2-28-professional-0611267500--product/	IN_STOCK	1355577
201	Перфоратор Bosch PBH 3000 FRE	436	\N	_thumb_180x140xin_upload_iblock_3b8_1079523_1.jpg	https://mile.by/catalog/perforatory_/perforator-bosch-pbh-3000-fre-0603393220--product/	IN_STOCK	1079523
202	Перфоратор BOSCH PBH 2900 RE 0.603.393.106	364	\N	_thumb_180x140xin_upload_iblock_595_1289352_1.jpg	https://mile.by/catalog/perforatory_/perforator-bosch-pbh-2900-re-0603393106--product/	IN_STOCK	1289352
203	Перфоратор GBH 2-28 F   0611267600	602	\N	_thumb_180x140xin_upload_iblock_b1c_1355576_1.jpg	https://mile.by/catalog/perforatory_/perforator-bosch-gbh-2-28-f-professional-0611267600--product/	IN_STOCK	1355576
204	Перфоратор Bosch PBH 3000-2 FRE	493	\N	_thumb_180x140xin_upload_iblock_70d_1079524_1.jpg	https://mile.by/catalog/perforatory_/perforator-bosch-pbh-3000-2-fre-0603394220--product/	IN_STOCK	1079524
205	Перфоратор GBH 4-32 DFR       0611332100	1276	\N	_thumb_180x140xin_upload_iblock_631_1295974_1.jpg	https://mile.by/catalog/perforatory_/perforator-bosch-gbh-4-32-dfr-professional-0611332100--product/	IN_STOCK	1295974
206	Перфоратор Makita HR 2800	658	\N	_thumb_180x140xin_upload_iblock_76c_1349551_1.jpg	https://mile.by/catalog/perforatory_/perforator-makita-hr-2800-product/	IN_STOCK	1349551
207	Перфоратор Makita HR 3200 C	1208	\N	_thumb_180x140xin_upload_iblock_f4c_1368224_1.jpg	https://mile.by/catalog/perforatory_/perforator-makita-hr-3200-c-product/	IN_STOCK	1368224
208	Перфоратор PATRIOT THE ONE RH262	209	\N	_thumb_180x140xin_upload_iblock_bae_1373590_1.jpg	https://mile.by/catalog/perforatory_/perforator-patriot-rh-262-140301325--product/	IN_STOCK	1373590
209	Перфоратор PATRIOT RH260	247	\N	_thumb_180x140xin_upload_iblock_85a_1375493_1.jpg	https://mile.by/catalog/perforatory_/perforator-patriot-rh-260-140301322--product/	IN_STOCK	1375493
210	Перфоратор PATRIOT RH265Q	255	\N	_thumb_180x140xin_upload_iblock_9a0_1388145_1.jpg	https://mile.by/catalog/perforatory_/perforator-patriot-rh-265q-140301330--product/	IN_STOCK	1388145
211	Перфоратор Stanley SHR263K	257	\N	_thumb_180x140xin_upload_iblock_0f4_1390659_1.jpg	https://mile.by/catalog/perforatory_/perforator-stanley-shr263k-product/	IN_STOCK	1390659
212	Перфоратор SDS+ Stanley STHR323K-RU	332	\N	_thumb_180x140xin_upload_iblock_aa2_1367733_1.jpg	https://mile.by/catalog/perforatory_/perforator-stanley-sthr323k-product/	IN_STOCK	1367733
213	Перфоратор П-26/800ЭР	254	\N	_thumb_180x140xin_upload_iblock_ba8_1056910_1.jpg	https://mile.by/catalog/perforatory_/perforator-interskol-p-26-800er-product/	IN_STOCK	1056910
214	Перфоратор GBH 2-26 DFR    0611254768	531	\N	_thumb_180x140xin_upload_iblock_6a5_1050900_1.jpg	https://mile.by/catalog/perforatory_/perforator-bosch-gbh-2-26-dfr-professional-0611254768--product/	IN_STOCK	1050900
215	Ударная дрель AEG SBE 705 RE (4935442830)	229	\N	_thumb_180x140xin_upload_iblock_316_1310237_1.jpg	https://mile.by/catalog/dreli-udarnye/udarnaia-drel-aeg-sbe-705-re-4935442830--product/	IN_STOCK	1310237
216	Ударная дрель AEG SBE 750 RE (4935442850)	0	\N	_thumb_180x140xin_upload_iblock_624_1366761_1.jpg	https://mile.by/catalog/dreli-udarnye/udarnaia-drel-aeg-sbe-750-re-4935442850--product/	OUT_OF_STOCK	1366761
217	Дрель ударная электрич. UniversalImpact 700 0.603.131.020	222	\N	_thumb_180x140xin_upload_iblock_378_1359190_1.jpg	https://mile.by/catalog/dreli-udarnye/udarnaia-drel-bosch-universalimpact-700-0603131020--product/	IN_STOCK	1359190
218	Дрель ударная электрич. AdvancedImpact 900 0.603.174.020	412	\N	_thumb_180x140xin_upload_iblock_2a9_1359191_1.jpg	https://mile.by/catalog/dreli-udarnye/udarnaia-drel-bosch-advancedimpact-900-0603174020--product/	IN_STOCK	1359191
219	Дрель ударная электрич. UniversalImpact 800 0.603.131.120	331	\N	_thumb_180x140xin_upload_iblock_cd7_1361724_1.jpg	https://mile.by/catalog/dreli-udarnye/udarnaia-drel-bosch-universalimpact-800-0603131120--product/	IN_STOCK	1361724
220	Дрель ударная электрич. EasyImpact 500 0.603.130.003	146	\N	_thumb_180x140xin_upload_iblock_379_1365808_1.jpg	https://mile.by/catalog/dreli-udarnye/udarnaia-drel-bosch-easyimpact-500-0603130003--product/	IN_STOCK	1365808
221	Дрель ударная  GSB 1600 RE 0.601.218.121	253	\N	_thumb_180x140xin_upload_iblock_63e_1032063_1.jpg	https://mile.by/catalog/dreli-udarnye/udarnaia-drel-bosch-gsb-1600-re-professional-0601218121--product/	IN_STOCK	1032063
222	Дрель ударная GSB 16 RE   060114E500	365	\N	_thumb_180x140xin_upload_iblock_d69_1355567_1.jpg	https://mile.by/catalog/dreli-udarnye/udarnaia-drel-bosch-gsb-16-re-professional-060114e500--product/	IN_STOCK	1355567
223	Дрель ударная GSB 13 RE   0.601.217.100	187	\N	_thumb_180x140xin_upload_iblock_ff6_1028749_1.jpg	https://mile.by/catalog/dreli-udarnye/udarnaia-drel-bosch-gsb-13-re-professional-0601217100--product/	IN_STOCK	1028749
224	Дрель ударная GSB 13 RE    0601217102	167	\N	_thumb_180x140xin_upload_iblock_e5b_1296000_1.jpg	https://mile.by/catalog/dreli-udarnye/udarnaia-drel-bosch-gsb-13-re-professional-0601217102--product/	IN_STOCK	1296000
225	Ударная дрель 701Вт DeWalt DWD024-KS	202	\N	_thumb_180x140xin_upload_iblock_63c_1377139_1.jpg	https://mile.by/catalog/dreli-udarnye/udarnaia-drel-dewalt-dwd024-ks-product/	IN_STOCK	1377139
226	Дрель ударная TС-ID (TH-ID) 720 E 4259819	0	\N	_thumb_180x140xin_upload_iblock_e93_1279525_1.jpg	https://mile.by/catalog/dreli-udarnye/udarnaia-drel-einhell-tc-id-720-e-4259819--product/	OUT_OF_STOCK	1279525
227	Ударная дрель Makita HP1640	192	\N	_thumb_180x140xin_upload_iblock_73e_1102707_1.jpg	https://mile.by/catalog/dreli-udarnye/udarnaia-drel-makita-hp1640-product/	IN_STOCK	1102707
228	Ударная дрель Ryobi RPD500-G (5133001832)	155	\N	_thumb_180x140xin_upload_iblock_985_1263281_1.jpg	https://mile.by/catalog/dreli-udarnye/udarnaia-drel-ryobi-rpd500-g-5133001832--product/	IN_STOCK	1263281
229	Ударная дрель Ryobi RPD800-K (5133002018)	205	\N	_thumb_180x140xin_upload_iblock_ff0_1287823_1.jpg	https://mile.by/catalog/dreli-udarnye/udarnaia-drel-ryobi-rpd800-k-5133002018--product/	IN_STOCK	1287823
230	Ударная дрель Stanley SDH700-RU	125	\N	_thumb_180x140xin_upload_iblock_268_1367726_1.jpg	https://mile.by/catalog/dreli-udarnye/udarnaya-drel-stanley-sdh700-ru-product/	IN_STOCK	1367726
231	Машина ручная электр.,сверлильная ударно-вращательная 750Вт,патрон 13мм,0-3000 об/мин МЭСУ-2-0	113	\N	_thumb_180x140xin_upload_iblock_381_1277373_1.jpg	https://mile.by/catalog/dreli-udarnye/udarnaia-drel-diold-mesu-2-01-product/	IN_STOCK	1277373
232	Дрель  600Вт,0-2800 об/мин МЭСУ-1-01	97	\N	_thumb_180x140xin_upload_iblock_60a_1322703_1.jpg	https://mile.by/catalog/dreli-udarnye/udarnaia-drel-diold-mesu-1-01-product/	IN_STOCK	1322703
233	Машина ручная электрическая сверлильная ударно-вращательная, МЭСУ-6-01 900 Вт,патрон 13мм,0-2800 об/мин	122	\N	_thumb_180x140xin_upload_iblock_487_1341625_1.jpg	https://mile.by/catalog/dreli-udarnye/udarnaia-drel-diold-mesu-6-01-product/	IN_STOCK	1341625
234	Пила дисковая ручная Bosch PKS 55	257	\N	_thumb_180x140xin_upload_iblock_e16_1244777_1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/pila-tcirkuliarnaia-diskovaia-bosch-pks-55-0603500020--product/	IN_STOCK	1244777
235	Пила дисковая ручная аккум. UniversalCirc 12 0.603.3C7.002	425	\N	_thumb_180x140xin_upload_iblock_179_1359193_1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/pila-tcirkuliarnaia-diskovaia-bosch-universalcirc-12-06033c7002--product/	IN_STOCK	1359193
236	Пила дисковая ручная аккум. UniversalCirc 12  0.603.3C7.003 (без акк. )	281	\N	_thumb_180x140xin_upload_iblock_53e_1393689_1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/pila-tcirkuliarnaia-diskovaia-bosch-universalcirc-12-06033c7003-bez-akkumuliatora-product/	IN_STOCK	1393689
237	Пила циркулярная Bosch PKS 40 850Вт 40мм	233	\N	_thumb_180x140xin_upload_iblock_79e_1013198_1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/pila-tcirkuliarnaia-diskovaia-bosch-pks-40-0603328008--product/	IN_STOCK	1013198
238	Пила циркулярная Bosch  PKS 66A  1200Вт 66мм	340	\N	_thumb_180x140xin_upload_iblock_9f1_1013202_1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/pila-tcirkuliarnaia-diskovaia-bosch-pks-66-a-0603502022--product/	IN_STOCK	1013202
239	Пила циркулярная Bosch PKS 55 A	291	\N	_thumb_180x140xin_upload_iblock_b34_1079530_1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/pila-tcirkuliarnaia-diskovaia-bosch-pks-55-a-0603501020--product/	IN_STOCK	1079530
240	Пила циркулярная (дисковая) Makita HS 7601	423	\N	_thumb_180x140xin_upload_iblock_ca3_1368236_1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/pila-tcirkuliarnaia-diskovaia-makita-hs-7601-product/	IN_STOCK	1368236
241	Электропила ручная циркулярная TC-CS 1200 4330936	229	\N	_thumb_180x140xin_upload_iblock_2ff_1366309_1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/pila-tcirkuliarnaia-diskovaia-einhell-tc-cs-1200-4330936--product/	IN_STOCK	1366309
242	Циркулярная пила WHS-1500 (проф) 6.015.185.00	180	\N	_thumb_180x140xin_upload_iblock_f9b_1363710_1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/pila-tcirkuliarnaia-diskovaia-watt-pro-whs-1500-601518500--product/	IN_STOCK	1363710
243	Пила ручная циркулярная Watt 6.013.185.00 WHS-1300	153	\N	_thumb_180x140xin_upload_iblock_c78_1042515-1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/pila-tcirkuliarnaia-diskovaia-watt-whs-1300-601318500--product/	IN_STOCK	1042515
244	Электропила циркулярная TC-CS (TH-CS) 1400 4330937	248	\N	_thumb_180x140xin_upload_iblock_129_1282697_1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/pila-tcirkuliarnaia-diskovaia-einhell-tc-cs-1400-4330937--product/	IN_STOCK	1282697
245	Пила ручная дисковая, Интерскол ДП-210/1900, 5000 об/мин	397	\N	_thumb_180x140xin_upload_iblock_538_1267027_1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/pila-tcirkuliarnaia-diskovaia-interskol-dp-210-1900-product/	IN_STOCK	1267027
246	Пила дисковая ручная ДП-165/1200	268	\N	_thumb_180x140xin_upload_iblock_a7a_1117841_1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/pila-tcirkuliarnaia-diskovaia-interskol-dp-165-1200-product/	IN_STOCK	1117841
247	Пила ручная  дисковая Интерскол ДП-235/2000 М, 2000Вт	0	\N	_thumb_180x140xin_upload_iblock_b09_1267028_1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/pila-tcirkuliarnaia-diskovaia-interskol-dp-235-2000-m-product/	OUT_OF_STOCK	1267028
248	Дисковая пила ДП-1,6-190	269	\N	_thumb_180x140xin_upload_iblock_ade_1035399_1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/pila-tcirkuliarnaia-diskovaia-diold-dp-1-6-190-product/	IN_STOCK	1035399
249	Пила ручная электрическая дисковая ДП-2,0-200, 2000 Вт	311	\N	_thumb_180x140xin_upload_iblock_5f6_1350819_1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/pila-tcirkuliarnaia-diskovaia-diold-dp-2-0-200-product/	IN_STOCK	1350819
250	Пила дисковая ДП-1,3-160	196	\N	_thumb_180x140xin_upload_iblock_d3a_1035963_1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/pila-tcirkuliarnaia-diskovaia-diold-dp-1-3-160-product/	IN_STOCK	1035963
251	Пила циркулярная (дисковая) AEG KS 66-2	425	\N	_thumb_180x140xin_upload_iblock_efb_1290583_1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/pila-tcirkuliarnaia-diskovaia-aeg-ks-66-2-product/	IN_STOCK	1290583
252	Пила циркулярная (дисковая) Ryobi  RCS 1400-G (5133002778 )	279	\N	_thumb_180x140xin_upload_iblock_b02_1366794_1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/pila-tcirkuliarnaia-diskovaia-ryobi-rcs-1400-g-5133002778--product/	IN_STOCK	1366794
253	Пила циркулярная (дисковая) Wortex CS 2170	242	\N	_thumb_180x140xin_upload_iblock_9b4_1352554_1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/pila-tcirkuliarnaia-diskovaia-wortex-cs-2170-product/	IN_STOCK	1352554
254	Циркулярная пила WORTEX CS 1613 L в кор., арт.CS1613L00021	179	\N	_thumb_180x140xin_upload_iblock_0af_1377874_1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/pila-tcirkuliarnaia-diskovaia-wortex-cs-1613-l-cs1613l00021--product/	IN_STOCK	1377874
255	Пила циркулярная (дисковая) Wortex CS 1916 L (CS1916L00021)	225	\N	_thumb_180x140xin_upload_iblock_008_1377875_1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/pila-tcirkuliarnaia-diskovaia-wortex-cs-1916-l-cs1916l00021--product/	IN_STOCK	1377875
256	Акк. пила дисковая Li-Ion 12 В GKS 12V-26 0.601.6A1.001 (без акк. )	331	\N	_thumb_180x140xin_upload_iblock_0c3_1394062_1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/pila-tcirkuliarnaia-diskovaia-bosch-gks-12v-26-professional-06016a1001-bez-akkumuliatora--product/	IN_STOCK	1394062
257	Циркулярная пила BOSCH GKS 190 в кор., арт.0601623000	389	\N	_thumb_180x140xin_upload_iblock_89d_1355580-1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/pila-tcirkuliarnaia-diskovaia-bosch-gks-190-professional-0601623000--product/	IN_STOCK	1355580
258	Циркулярная пила BOSCH GKS 600 в кор., арт.06016A9020	345	\N	_thumb_180x140xin_upload_iblock_24b_1355581_1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/pila-tcirkuliarnaia-diskovaia-bosch-gks-600-professional-06016a9020--product/	IN_STOCK	1355581
259	Лобзик электр. бытовой Bosch PST 650 0.603.3A0.720	151	\N	_thumb_180x140xin_upload_iblock_e55_1028754_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/elektrolobzik-bosch-pst-650-06033a0720--product/	IN_STOCK	1028754
260	Лобзик Bosch PST 800 PEL	201	\N	_thumb_180x140xin_upload_iblock_17b_1079531_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/elektrolobzik-bosch-pst-800-pel-06033a0120--product/	IN_STOCK	1079531
261	Лобзик Bosch PST 900 PEL	279	\N	_thumb_180x140xin_upload_iblock_d41_1104059_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/elektrolobzik-bosch-pst-900-pel-06033a0220--product/	IN_STOCK	1104059
262	Электролобзик Makita 4327	138	\N	_thumb_180x140xin_upload_iblock_de8_1032070_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/elektrolobzik-makita-4327-product/	IN_STOCK	1032070
263	Электролобзик Makita 4329	184	\N	_thumb_180x140xin_upload_iblock_67f_1032071_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/elektrolobzik-makita-4329-product/	IN_STOCK	1032071
264	Электролобзик Makita 4326	172	\N	_thumb_180x140xin_upload_iblock_798_1080826_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/elektrolobzik-makita-4326-product/	IN_STOCK	1080826
265	Электролобзик МП-100/700Э	0	\N	_thumb_180x140xin_upload_iblock_e4d_1226546_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/elektrolobzik-interskol-mp-100-700e-product/	OUT_OF_STOCK	1226546
266	Пила лобзиковая электр. 450Вт  ПЛЭ-1-02 М	93	\N	_thumb_180x140xin_upload_iblock_e6d_1322707_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/elektrolobzik-diold-ple-1-02-m--product/	IN_STOCK	1322707
267	Пила лобзиковая электрическая, ПЛЭ-1-08 (лазер) 650 Вт,ск.500-3000 ход/мин	125	\N	_thumb_180x140xin_upload_iblock_73b_1341658_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/elektrolobzik-diold-ple-1-08-product/	IN_STOCK	1341658
268	Пила лобзиковая электрическая, ПЛЭ-1-07	122	\N	_thumb_180x140xin_upload_iblock_317_1386221_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/elektrolobzik-diold-ple-1-07-product/	IN_STOCK	1386221
269	Электролобзик Metabo  STEB 65 Quick (60103000)	218	\N	_thumb_180x140xin_upload_iblock_e61_1351734_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/elektrolobzik-metabo-steb-65-quick-60103000--product/	IN_STOCK	1351734
270	Электролобзик AEG STEP 100 X	321	\N	_thumb_180x140xin_upload_iblock_dbc_1324271_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/elektrolobzik-aeg-step-100-x-product/	IN_STOCK	1324271
271	Электролобзик Wortex  JS 6506-2 E (JS65062E00021)	117	\N	_thumb_180x140xin_upload_iblock_ec1_1373511_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/elektrolobzik-wortex-js-6506-2-e-js65062e00021--product/	IN_STOCK	1373511
272	Электролобзик Wortex  JS 1009-2 LE (JS10092LE0021)	169	\N	_thumb_180x140xin_upload_iblock_948_1377394_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/elektrolobzik-wortex-js-1009-2-le-js10092le0021--product/	IN_STOCK	1377394
273	Электролобзик Wortex  JS 8008-2 LE (JS80082LE0021)	142	\N	_thumb_180x140xin_upload_iblock_ea3_1377395_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/elektrolobzik-wortex-js-8008-2-le-js80082le0021--product/	IN_STOCK	1377395
274	Электролобзик Wortex  JS 6506-2 LE (JS65062LE0021)	122	\N	_thumb_180x140xin_upload_iblock_6d9_1377856_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/elektrolobzik-wortex-js-6506-2-le-js65062le0021--product/	IN_STOCK	1377856
275	Акк.пила лобзиковая 12 В GST 12V-70 0.601.5A1.001 (без акк. )	330	\N	_thumb_180x140xin_upload_iblock_b44_1394061_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/elektrolobzik-bosch-gst-12v-70-professional-06015a1001--product/	IN_STOCK	1394061
276	Лобзик электрический BOSCH GST 8000 E в кор., арт.060158H000	247	\N	_thumb_180x140xin_upload_iblock_f50_1355568_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/elektrolobzik-bosch-gst-8000-e-professional-060158h000--product/	IN_STOCK	1355568
277	Лобзик электр Bosch GST 90 BE 060158F001	319	\N	_thumb_180x140xin_upload_iblock_b53_1230698_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/elektrolobzik-bosch-gst-90-be-professional-060158f001--product/	IN_STOCK	1230698
278	Электролобзик Dremel Moto-Saw (MS20-1/5) (F.013.MS2.0JС)	333	\N	_thumb_180x140xin_upload_iblock_4f8_1337555_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/elektrolobzik-dremel-moto-saw-ms20-1-5-f-013-ms2-0js--product/	IN_STOCK	1337555
279	Гравер Ryobi EHT150V 5133000754	183	\N	_thumb_180x140xin_upload_iblock_d06_1263297_1.jpg	https://mile.by/catalog/gravery/graver-ryobi-eht150v-5133000754-product/	IN_STOCK	1263297
280	Мультишлифмашина гравировальная Einhell TC-MG (TH-MG) 135 E 4419169	187	\N	_thumb_180x140xin_upload_iblock_969_1263554-1.jpg	https://mile.by/catalog/gravery/graver-einhell-tc-mg-135-e-4419169--product/	IN_STOCK	1263554
281	Гравер Wortex MG 3218 E	135	\N	_thumb_180x140xin_upload_iblock_8f9_1318275_1.jpg	https://mile.by/catalog/gravery/graver-wortex-mg-3218-e--product/	IN_STOCK	1318275
282	Гравер Dremel Engraver (290-1) F0130290JZ	94	\N	_thumb_180x140xin_upload_iblock_7be_1310289_1.jpg	https://mile.by/catalog/gravery/graver-dremel-engraver-290-1-f0130290jz-product/	IN_STOCK	1310289
284	Гравер Dremel 4000-4/65 F0134000JT	452	\N	_thumb_180x140xin_upload_iblock_619_1310282_1.jpg	https://mile.by/catalog/gravery/graver-dremel-4000-4-65-f0134000jt-product/	IN_STOCK	1325906
285	Гравер Dremel 4000 (4000-1/45) F0134000JG	368	\N	_thumb_180x140xin_upload_iblock_04c_1310282_1.jpg	https://mile.by/catalog/gravery/graver-dremel-4000-4000-1-45-f0134000jg-product/	IN_STOCK	1310282
286	Гравер Dremel 8220 (8220-5/65) F0138220JN	659	\N	_thumb_180x140xin_upload_iblock_c1e_1375048_1.jpg	https://mile.by/catalog/gravery/graver-dremel-8220-8220-5-65-f0138220jn-product/	IN_STOCK	1375048
287	Гравер Dremel 4200 (4200-4/75) F0134200JD	456	\N	_thumb_180x140xin_upload_iblock_32f_1337552_1.jpg	https://mile.by/catalog/gravery/graver-dremel-4200-4200-4-75-f0134200jd-product/	IN_STOCK	1337552
288	Гравер Dremel 4000-6/128 F0134000LR	622	\N	_thumb_180x140xin_upload_iblock_88c_1310282_1.jpg	https://mile.by/catalog/gravery/graver-dremel-4000-6-128-f0134000lr-product/	IN_STOCK	1337551
289	Гравер Dremel 8220-1/5 F0138220JD	358	\N	_thumb_180x140xin_upload_iblock_d7c_1375046_1.jpg	https://mile.by/catalog/gravery/graver-dremel-8220-1-5-f0138220jd-product/	IN_STOCK	1375046
290	Гравер Dremel 8220 (8220-2/45) F0138220JJ	556	\N	_thumb_180x140xin_upload_iblock_f7d_1375046_1.jpg	https://mile.by/catalog/gravery/graver-dremel-8220-8220-2-45-f0138220jj-product/	IN_STOCK	1375047
291	Гравер Dremel 7750-10 F0137750JC	0	\N	_thumb_180x140xin_upload_iblock_970_1385106_1.jpg	https://mile.by/catalog/gravery/graver-dremel-7750-10-f0137750jc-product/	OUT_OF_STOCK	1385106
292	Гравер Dremel 4300-3/45 F0134300JD	522	\N	_thumb_180x140xin_upload_iblock_baa_1375045_1.jpg	https://mile.by/catalog/gravery/graver-dremel-4300-3-45-f0134300jd-product/	IN_STOCK	1375045
293	Гравер Dremel 4000-4/65 F0134000LW	439	\N	_thumb_180x140xin_upload_iblock_8a8_1310282_1.jpg	https://mile.by/catalog/gravery/graver-dremel-4000-4-65-f0134000lw-product/	IN_STOCK	1390181
294	Рубанок Bosch PHO 1500 0.603.2A4.020	237	\N	_thumb_180x140xin_upload_iblock_615_1293630_1.jpg	https://mile.by/catalog/elektrorubanki/elektrorubanok-bosch-pho-1500-06032a4020--product/	IN_STOCK	1293630
295	Рубанок Bosch PHO 2000 0.603.2A4.120	300	\N	_thumb_180x140xin_upload_iblock_54a_1293631_1.jpg	https://mile.by/catalog/elektrorubanki/elektrorubanok-bosch-pho-2000-06032a4120--product/	IN_STOCK	1293631
296	Электрорубанок Makita 1911 B	701	\N	_thumb_180x140xin_upload_iblock_b9c_1266986_1.jpg	https://mile.by/catalog/elektrorubanki/elektrorubanok-makita-1911-b-product/	IN_STOCK	1266986
297	Электрорубанок Makita KP0800	423	\N	_thumb_180x140xin_upload_iblock_93b_1284362_1.jpg	https://mile.by/catalog/elektrorubanki/elektrorubanok-makita-kp0800-product/	IN_STOCK	1284362
298	Рубанок электр.ручной P-82/710	251	\N	_thumb_180x140xin_upload_iblock_d4d_1122701_1.jpg	https://mile.by/catalog/elektrorubanki/elektrorubanok-interskol-r-82-710-product/	IN_STOCK	1122701
299	Рубанок ручной электр Р-110/1100М	330	\N	_thumb_180x140xin_upload_iblock_ba4_1226548_1.jpg	https://mile.by/catalog/elektrorubanki/elektrorubanok-interskol-r-110-1100m-product/	IN_STOCK	1226548
300	Рубанок ручной электр РЭ-900-01	172	\N	_thumb_180x140xin_upload_iblock_683_1253128_1.jpg	https://mile.by/catalog/elektrorubanki/elektrorubanok-diold-re-900-01-product/	IN_STOCK	1253128
301	Рубанок ручной электрический, РЭ-1500-01 1500 Вт, 15000 об/мин, 110мм, 0-3,5мм	271	\N	_thumb_180x140xin_upload_iblock_2d3_1341642_1.jpg	https://mile.by/catalog/elektrorubanki/elektrorubanok-diold-re-1500-01-product/	IN_STOCK	1341642
302	Рубанок ручной электрический РЭ-1100-01,1100 Вт	164	\N	_thumb_180x140xin_upload_iblock_274_1342498_1.jpg	https://mile.by/catalog/elektrorubanki/elektrorubanok-diold-re-1100-01-product/	IN_STOCK	1342498
303	Электрорубанок Ryobi EPN6082CHG (51330003500)	180	\N	_thumb_180x140xin_upload_iblock_86a_1263305_1.jpg	https://mile.by/catalog/elektrorubanki/elektrorubanok-ryobi-epn6082chg-51330003500--product/	IN_STOCK	1263305
304	Электрорубанок Ryobi EPN7582NHG (5133000352)	223	\N	_thumb_180x140xin_upload_iblock_c51_1263305_1.jpg	https://mile.by/catalog/elektrorubanki/elektrorubanok-ryobi-epn7582nhg-5133000352--product/	IN_STOCK	1263307
305	Электрорубанок Wortex PL 2009 (PL200900011)	190	\N	_thumb_180x140xin_upload_iblock_409_1349371_1.jpg	https://mile.by/catalog/elektrorubanki/elektrorubanok-wortex-pl-2009-pl200900011--product/	IN_STOCK	1349371
306	Рубанок электр. Bosch GHO 26-82D 0.601.5А4.301	524	\N	_thumb_180x140xin_upload_iblock_49a_1344772_1.jpg	https://mile.by/catalog/elektrorubanki/elektrorubanok-bosch-gho-26-82-d-professional-06015a4301--product/	IN_STOCK	1344772
307	Рубанки GHO 6500 0.601.596.000	370	\N	_thumb_180x140xin_upload_iblock_396_1356447_1.jpg	https://mile.by/catalog/elektrorubanki/elektrorubanok-bosch-gho-6500-professional-0601596000--product/	IN_STOCK	1356447
308	Электрорубанок DeWalt DW680	460	\N	_thumb_180x140xin_upload_iblock_dd7_1377146_1.jpg	https://mile.by/catalog/elektrorubanki/elektrorubanok-dewalt-dw680-product/	IN_STOCK	1377146
309	Рубанок ручной электрический РЭ-900-01(подставка), 900 Вт	193	\N	_thumb_180x140xin_upload_iblock_e46_1350824_1.jpg	https://mile.by/catalog/elektrorubanki/elektrorubanok-diold-re-900-01-podstavka-product/	IN_STOCK	1350824
310	Промышленный фен WATT  WHP-2020 (702000211) 4+1 насадки	52	\N	_thumb_180x140xin_upload_iblock_ebd_1340337_1.jpg	https://mile.by/catalog/stroitelnye-feny/promyshlennyi-fen-watt-whp-2020-702000211-4-1-nasadki-product/	IN_STOCK	1340337
311	Электрофен технический TH-HA 2000/1 4520179	97	\N	_thumb_180x140xin_upload_iblock_1fe_1282695_1.jpg	https://mile.by/catalog/stroitelnye-feny/promyshlennyi-fen-einhell-th-ha-2000-1--product/	IN_STOCK	1282695
312	Фен ручной строительный Интерскол ФЭ-2000 Э, 2000Вт	137	\N	_thumb_180x140xin_upload_iblock_726_1267037_1.jpg	https://mile.by/catalog/stroitelnye-feny/promyshlennyi-fen-interskol-fe-2000e-product/	IN_STOCK	1267037
313	Фен электрический ФЭ-2000 ЭМ 2000Вт	179	\N	_thumb_180x140xin_upload_iblock_6c1_1350836_1.jpg	https://mile.by/catalog/stroitelnye-feny/promyshlennyi-fen-interskol-fe-2000em-product/	IN_STOCK	1350836
314	Термофен 9 предметов в кейсе 2000Вт ВГВ-2000А	73	\N	_thumb_180x140xin_upload_iblock_7ab_1054387_1.jpg	https://mile.by/catalog/stroitelnye-feny/promyshlennyi-fen-diold-vgv-2000-a-product/	IN_STOCK	1054387
315	Промышленный фен Ryobi EHG2000 (5133001137)	107	\N	_thumb_180x140xin_upload_iblock_500_1263318_1.jpg	https://mile.by/catalog/stroitelnye-feny/promyshlennyi-fen-ryobi-ehg2000-5133001137--product/	IN_STOCK	1263318
316	Промышленный фен Ryobi EHG2020LCD (5133001730)	196	\N	_thumb_180x140xin_upload_iblock_95c_1263320_1.jpg	https://mile.by/catalog/stroitelnye-feny/promyshlennyi-fen-ryobi-ehg2020lcd-5133001730--product/	IN_STOCK	1263320
317	Промышленный фен Wortex HG 6120 + набор сопл HG6120TK0811	88	\N	_thumb_180x140xin_upload_iblock_cfc_1349378_1.jpg	https://mile.by/catalog/stroitelnye-feny/promyshlennyi-fen-wortex-hg-6120-nabor-sopl-hg6120tk0811--product/	IN_STOCK	1349378
318	Промышленный фен Makita HG551VK + набор сопл HG551VK	0	\N	_thumb_180x140xin_upload_iblock_633_1368231_1.jpg	https://mile.by/catalog/stroitelnye-feny/promyshlennyi-fen-makita-hg551vk-nabor-sopl-hg551vk-product/	OUT_OF_STOCK	1368231
319	Термофен Furno 300 WAGNER	74	\N	_thumb_180x140xin_upload_iblock_9da_1370979_1.jpg	https://mile.by/catalog/stroitelnye-feny/promyshlennyi-fen-wagner-furno-300-2359348--product/	IN_STOCK	1370979
320	Термофен Furno 750 WAGNER	197	\N	_thumb_180x140xin_upload_iblock_19b_1370980_1.jpg	https://mile.by/catalog/stroitelnye-feny/promyshlennyi-fen-wagner-furno-750-2359358--product/	IN_STOCK	1370980
321	Шлифмашина вибр. бытовая Bosch PSS 200 AC	167	\N	_thumb_180x140xin_upload_iblock_106_1032092_1.jpg	https://mile.by/catalog/vibratsionnye-shlifovalnye-mashiny/vibratcionnaia-shlifmashina-bosch-pss-200-ac-0603340120--product/	IN_STOCK	1032092
322	Виброшлифмашина Bosch  PSS 250AE	255	\N	_thumb_180x140xin_upload_iblock_d19_1118990_1.jpg	https://mile.by/catalog/vibratsionnye-shlifovalnye-mashiny/vibratcionnaia-shlifmashina-bosch-pss-250-ae-0603340220--product/	IN_STOCK	1118990
323	Вибрационная  шлифмашина Makita BO3711	219	\N	_thumb_180x140xin_upload_iblock_b8f_1104057_1.jpg	https://mile.by/catalog/vibratsionnye-shlifovalnye-mashiny/vibratcionnaia-shlifmashina-makita-bo3711-product/	IN_STOCK	1104057
324	Машина ручная электрическая плоскошлиф ДИОЛД МПШ-1	83	\N	_thumb_180x140xin_upload_iblock_978_1343606_1.jpg	https://mile.by/catalog/vibratsionnye-shlifovalnye-mashiny/vibratcionnaia-shlifmashina-diold-mpsh-1-10045050--product/	IN_STOCK	1343606
325	Виброшлифмашина GSS 23 A 601070400	207	\N	_thumb_180x140xin_upload_iblock_b80_1304512_1.jpg	https://mile.by/catalog/vibratsionnye-shlifovalnye-mashiny/vibratcionnaia-shlifmashina-bosch-gss-23-a-professional-0601070400--product/	IN_STOCK	1304512
326	Машина многофункцион. аккум. UniversalMulti 12 0.603.103.020 (без акк. )	291	\N	_thumb_180x140xin_upload_iblock_5cc_1391628_1.jpg	https://mile.by/catalog/multifunktsionalnaye-shlifovalnye-mashiny/multifunktcionalnaia-shlifmashina-bosch-universalmulti-12-bez-akkumuliatora-0603103020--product/	IN_STOCK	1391628
327	Машина ручная электрическая вибрационная, МЭВ-0,34МФ кор 340Вт, 50Гц, 15000-21000 кол/мин	151	\N	_thumb_180x140xin_upload_iblock_e82_1341640_1.jpg	https://mile.by/catalog/multifunktsionalnaye-shlifovalnye-mashiny/multifunktcionalnaia-shlifmashina-diold-mev-0-34-mf-product/	IN_STOCK	1341640
328	Универсальный резак GOP 30-28 0.601.237.001	493	\N	_thumb_180x140xin_upload_iblock_303_1359182_1.jpg	https://mile.by/catalog/multifunktsionalnaye-shlifovalnye-mashiny/multifunktcionalnaia-shlifmashina-bosch-gop-30-28-professional-0601237001--product/	IN_STOCK	1359182
329	Акк. универсальный резак 12 В GOP 12V-28 0.601.8B5.001 (без акк. )	425	\N	_thumb_180x140xin_upload_iblock_221_1394065_1.jpg	https://mile.by/catalog/multifunktsionalnaye-shlifovalnye-mashiny/multifunktcionalnaia-shlifmashina-bosch-gop-12v-28-professional-bez-akkumuliatora-06018b5001--product/	IN_STOCK	1394065
330	Шлифмашина эксцентр бытовая BOSCH PEX 220А 220Вт 125мм 0603378020	202	\N	_thumb_180x140xin_upload_iblock_3d5_1036930_1.jpg	https://mile.by/catalog/ekstsentrikovye-shlifovalnye-mashiny/ekstcentrikovaia-orbitalnaia-shlifmashina-bosch-pex-220-a-0603378020--product/	IN_STOCK	1036930
331	Эксцентриковая (орбитальная) шлифмашина Makita BO5030	261	\N	_thumb_180x140xin_upload_iblock_16f_1266982_1.jpg	https://mile.by/catalog/ekstsentrikovye-shlifovalnye-mashiny/ekstcentrikovaia-orbitalnaia-shlifmashina-makita-bo5030-product/	IN_STOCK	1266982
332	Шлифмашина эксцентриковая TC-RS 38 E 4462165 (125мм 380Вт+лист К80)	125	\N	_thumb_180x140xin_upload_iblock_d05_1371192_1.jpg	https://mile.by/catalog/ekstsentrikovye-shlifovalnye-mashiny/ekstcentrikovaia-orbitalnaia-shlifmashina-einhell-tc-rs-38-e-4462165--product/	IN_STOCK	1371192
333	Машинка шлифовальная эксцентриковая Watt WES-150 4.430.150.00	147	\N	_thumb_180x140xin_upload_iblock_624_1076616_1.jpg	https://mile.by/catalog/ekstsentrikovye-shlifovalnye-mashiny/ekstcentrikovaia-orbitalnaia-shlifmashina-watt-wes-150-443015000--product/	IN_STOCK	1076616
334	Эксцентриковая (орбитальная) шлифмашина AEG EX 125 ES (4935416100)	270	\N	_thumb_180x140xin_upload_iblock_722_1242965_1.jpg	https://mile.by/catalog/ekstsentrikovye-shlifovalnye-mashiny/ekstcentrikovaia-orbitalnaia-shlifmashina-aeg-ex-125-es-4935416100--product/	IN_STOCK	1242965
335	Эксцентриковая (орбитальная) шлифмашина Ryobi ROS 300 (5133001144)	174	\N	_thumb_180x140xin_upload_iblock_8f8_1263290_1.jpg	https://mile.by/catalog/ekstsentrikovye-shlifovalnye-mashiny/ekstcentrikovaia-orbitalnaia-shlifmashina-ryobi-ros-300-5133001144--product/	IN_STOCK	1263290
336	Эксцентриковая (орбитальная) шлифмашина Wortex  RS 1250 AE	127	\N	_thumb_180x140xin_upload_iblock_c88_1349382_1.jpg	https://mile.by/catalog/ekstsentrikovye-shlifovalnye-mashiny/ekstcentrikovaia-orbitalnaia-shlifmashina-wortex-rs-1250-ae-product/	IN_STOCK	1349382
337	Машина эксцентриковая шлифовальная (ЭШМ) PATRIOT OS 125	129	\N	_thumb_180x140xin_upload_iblock_55d_1388151_1.jpg	https://mile.by/catalog/ekstsentrikovye-shlifovalnye-mashiny/ekstcentrikovaia-orbitalnaia-shlifmashina-patriot-os-125-110301520--product/	IN_STOCK	1388151
338	Эксцентриковая шлифмашина BOSCH GEX 125-1 AE в кор., арт.0601387500	283	\N	_thumb_180x140xin_upload_iblock_1d9_1355582_1.jpg	https://mile.by/catalog/ekstsentrikovye-shlifovalnye-mashiny/ekstcentrikovaia-orbitalnaia-shlifmashina-bosch-gex-125-1-ae-professional-0601387500--product/	IN_STOCK	1355582
339	Эксцентриковая шлифмашина BOSCH GEX 150 AC в кор., арт.0601372768	716	\N	_thumb_180x140xin_upload_iblock_45a_1355583_1.jpg	https://mile.by/catalog/ekstsentrikovye-shlifovalnye-mashiny/ekstcentrikovaia-orbitalnaia-shlifmashina-bosch-gex-150-ac-professional-0601372768--product/	IN_STOCK	1355583
340	Эксцентриковая (орбитальная) шлифмашина DeWalt DWE6423	266	\N	_thumb_180x140xin_upload_iblock_147_1377152_1.jpg	https://mile.by/catalog/ekstsentrikovye-shlifovalnye-mashiny/ekstcentrikovaia-orbitalnaia-shlifmashina-dewalt-dwe6423-product/	IN_STOCK	1377152
341	Эксцентриковая шлифмашина GEX 125 AC, 340Вт, 125мм 0601372565	638	\N	_thumb_180x140xin_upload_iblock_8aa_1295988_1.jpg	https://mile.by/catalog/ekstsentrikovye-shlifovalnye-mashiny/ekstcentrikovaia-orbitalnaia-shlifmashina-bosch-gex-125-ac-professional-0601372565--product/	IN_STOCK	1295988
342	Ленточная шлифмашина Bosch  PBS 75 AЕ	423	\N	_thumb_180x140xin_upload_iblock_2ee_1244566_1.jpg	https://mile.by/catalog/lentochnye-shlifovalnye-mashiny/lentochnaia-shlifmashina-bosch-pbs-75-ae-06032a1120--product/	IN_STOCK	1244566
343	Ленточная шлифмашина Bosch  PBS 75 A	324	\N	_thumb_180x140xin_upload_iblock_960_1244778_1.jpg	https://mile.by/catalog/lentochnye-shlifovalnye-mashiny/lentochnaia-shlifmashina-bosch-pbs-75-a-06032a1020--product/	IN_STOCK	1244778
344	Ленточная шлифмашина Wortex  SB 7575 AE  (SB7575AE01310)	166	\N	_thumb_180x140xin_upload_iblock_dec_1349359_1.jpg	https://mile.by/catalog/lentochnye-shlifovalnye-mashiny/lentochnaia-shlifmashina-wortex-sb-7575-ae-sb7575ae01310--product/	IN_STOCK	1349359
345	Ленточная шлифмашина Makita 9910	346	\N	_thumb_180x140xin_upload_iblock_d97_1087947_1.jpg	https://mile.by/catalog/lentochnye-shlifovalnye-mashiny/lentochnaia-shlifmashina-makita-9910-product/	IN_STOCK	1087947
346	Ленточная шлифмашина Makita 9903	690	\N	_thumb_180x140xin_upload_iblock_194_1368220_1.jpg	https://mile.by/catalog/lentochnye-shlifovalnye-mashiny/lentochnaia-shlifmashina-makita-9903-product/	IN_STOCK	1368220
347	Ленточная шлифмашина МШЛ-1У 1000Вт,120-380 м/мин, 76х533мм	210	\N	_thumb_180x140xin_upload_iblock_92a_1341657_1.jpg	https://mile.by/catalog/lentochnye-shlifovalnye-mashiny/lentochnaia-shlifmashina-interskol-mshl-1u--product/	IN_STOCK	1341657
348	Ленточная шлифмашина Ryobi EBS 800 (5133001148)	274	\N	_thumb_180x140xin_upload_iblock_adc_1263292_1.jpg	https://mile.by/catalog/lentochnye-shlifovalnye-mashiny/lentochnaia-shlifmashina-ryobi-ebs-800-5133001148--product/	IN_STOCK	1263292
349	Ленточная шлифмашина GBS 75 AE   0601274708	873	\N	_thumb_180x140xin_upload_iblock_683_1089061_1.jpg	https://mile.by/catalog/lentochnye-shlifovalnye-mashiny/lentochnaia-shlifmashina-bosch-gbs-75-ae-professional-0601274708--product/	IN_STOCK	1089061
350	Ножовка столярная Bosch  PSA 700E	279	\N	_thumb_180x140xin_upload_iblock_490_1244776_1.jpg	https://mile.by/catalog/elektronozhovki/sabelnaia-pila-bosch-psa-700-e-06033a7020--product/	IN_STOCK	1244776
351	Ножовка столярная Bosch  PSA 900E	407	\N	_thumb_180x140xin_upload_iblock_c1a_1248966_1.jpg	https://mile.by/catalog/elektronozhovki/sabelnaia-pila-bosch-psa-900-e-06033a6000--product/	IN_STOCK	1248966
352	Мини-цепная пила аккумуляторная EasyCut 12   0.603.3C9.020	419	\N	_thumb_180x140xin_upload_iblock_15b_1393679_1.jpg	https://mile.by/catalog/elektronozhovki/sabelnaia-pila-bosch-easycut-12-06033c9020-s-akumuliatorom-product/	IN_STOCK	1393679
353	Мини-цепная пила аккумуляторн. EasyCut 12 0.603.3C9.001 (без акк. )	287	\N	_thumb_180x140xin_upload_iblock_d28_1394048_1.jpg	https://mile.by/catalog/elektronozhovki/sabelnaia-pila-bosch-easycut-12-06033c9001--product/	IN_STOCK	1394048
354	Акк. пилы сабельные 12 В GSA 12V-14 0.601.64L.902 (без акк. )	381	\N	_thumb_180x140xin_upload_iblock_0a5_1394063_1.jpg	https://mile.by/catalog/elektronozhovki/sabelnaia-pila-bosch-gsa-12v-14-professional-060164l972--product/	IN_STOCK	1394063
355	Дрель-миксер Фиолент МД1-11Э без насадки	238	\N	_thumb_180x140xin_upload_iblock_6f5_1095090_1.jpg	https://mile.by/catalog/miksery-stroitelnye/drel-mikser-fiolent-md1-11e-bez-nasadki-product/	IN_STOCK	1095090
356	Фрезер Bosch  POF 1200 AE 1200Вт	292	\N	_thumb_180x140xin_upload_iblock_967_1087942_1.jpg	https://mile.by/catalog/frezery/frezer-bosch-pof-1200-ae-060326a100--product/	IN_STOCK	1087942
357	Фрезер Bosch POF 1400 ACE	445	\N	_thumb_180x140xin_upload_iblock_dbb_1104056_1.jpg	https://mile.by/catalog/frezery/bosch-pof-1400-ace-060326c820-product/	IN_STOCK	1104056
358	Фрезер эл. МЭФ-1,25	0	\N	_thumb_180x140xin_upload_iblock_af2_1036724_1.jpg	https://mile.by/catalog/frezery/frezer-diold-mef-1-25-product/	OUT_OF_STOCK	1036724
359	Машина фрезерная электрическая 1100Вт МЭФ-1,1	165	\N	_thumb_180x140xin_upload_iblock_804_1054393_1.jpg	https://mile.by/catalog/frezery/frezer-diold-mef-1-1-product/	IN_STOCK	1054393
360	Фрезер Ryobi RRT1600-K (5133002421)	421	\N	_thumb_180x140xin_upload_iblock_081_1308816_1.jpg	https://mile.by/catalog/frezery/frezer-ryobi-rrt1600-k-5133002421--product/	IN_STOCK	1308816
361	Фрезер Wortex  MM 5519 E + аксессуары  MM5519E00019	284	\N	_thumb_180x140xin_upload_iblock_29e_1385066_1.jpg	https://mile.by/catalog/frezery/frezer-wortex-mm-5519-e-aksessuary-mm5519e00019-product/	IN_STOCK	1385066
362	Фрезер Wortex  MM 5013 E	189	\N	_thumb_180x140xin_upload_iblock_57c_1327057_1.jpg	https://mile.by/catalog/frezery/frezer-wortex-mm-5013-e-product/	IN_STOCK	1327057
363	Молоток отбойный эл, Интерскол М-25/1500, 1500 Вт	0	\N	_thumb_180x140xin_upload_iblock_d1a_1267016_1.jpg	https://mile.by/catalog/otboynye-molotki_/otboinyi-molotok-interskol-m-25-1500-product/	OUT_OF_STOCK	1267016
364	Отбойный молоток SDS-MAX Stanley STHM10K-RU	743	\N	_thumb_180x140xin_upload_iblock_89f_1367731_1.jpg	https://mile.by/catalog/otboynye-molotki_/otboinyi-molotok-stanley-sthm10k-product/	IN_STOCK	1367731
365	Отбойный молоток SDS-MAX Stanley STHM5KS-RU	500	\N	_thumb_180x140xin_upload_iblock_fa1_1367732_1.jpg	https://mile.by/catalog/otboynye-molotki_/otboinyi-molotok-stanley-sthm5ks-product/	IN_STOCK	1367732
366	Молоток отбойный   GSH 5 CE     0611321000	1598	\N	_thumb_180x140xin_upload_iblock_e86_1233148_1.jpg	https://mile.by/catalog/otboynye-molotki_/otboinyi-molotok-bosch-gsh-5-ce-professional-0611321000--product/	IN_STOCK	1233148
367	Отбойный молоток GSH 11 Е    0611316708	2064	\N	_thumb_180x140xin_upload_iblock_9a0_1295980_1.jpg	https://mile.by/catalog/otboynye-molotki_/otboinyi-molotok-bosch-gsh-11-e-professional-0611316708--product/	IN_STOCK	1295980
368	Штроборез PATRIOT AG 100	375	\N	_thumb_180x140xin_upload_iblock_27b_1388139_1.jpg	https://mile.by/catalog/shtroborezy_/shtroborez-patriot-ag-100-1700-vt-product/	IN_STOCK	1388139
369	Гайковерт ударный аккумуляторный GDR 120-LI    0.601.9F0.000	168	\N	_thumb_180x140xin_upload_iblock_c68_1394060_1-1.jpg	https://mile.by/catalog/elektrootvertki-shurupoverty-i-gaykoverty/udarnyi-gaikovert-bosch-gdr-120-li-professional-06019f0000--product/	IN_STOCK	1394060
370	Акк.шуруповерт GTB 12V-11      0.601.9E4.002	355	\N	_thumb_180x140xin_upload_iblock_798_1394058_1.jpg	https://mile.by/catalog/elektrootvertki-shurupoverty-i-gaykoverty/shurupovert-bosch-gtb-12v-11-professional-bez-akkumuliatora--product/	IN_STOCK	1394058
371	Ударный гайковерт Ryobi R18IW3-0	336	\N	_thumb_180x140xin_upload_iblock_3f8_1390233_1.jpg	https://mile.by/catalog/elektrootvertki-shurupoverty-i-gaykoverty/udarnyi-gaikovert-ryobi-r18iw3-0-product/	IN_STOCK	1390233
372	Отвертка эл. аккум. Интерскол ОА-3,6Ф	81	\N	_thumb_180x140xin_upload_iblock_bef_1384392_1.jpg	https://mile.by/catalog/elektrootvertki-shurupoverty-i-gaykoverty/elektrootvertka-interskol-oa-3-6f-product/	IN_STOCK	1384392
373	Шуруповерт  Makita TD0101	267	\N	_thumb_180x140xin_upload_iblock_6d9_1368237_1.jpg	https://mile.by/catalog/elektrootvertki-shurupoverty-i-gaykoverty/shurupovert-makita-td0101-product/	IN_STOCK	1368237
374	Ударный гайковерт Makita TW0350	767	\N	_thumb_180x140xin_upload_iblock_39b_1368216_1.jpg	https://mile.by/catalog/elektrootvertki-shurupoverty-i-gaykoverty/udarnyi-gaikovert-makita-tw0350-product/	IN_STOCK	1368216
375	Шуруповерт аккум бытовой Bosch IXO full 0.603.9A8.022	187	\N	_thumb_180x140xin_upload_iblock_c92_1310119_1.jpg	https://mile.by/catalog/elektrootvertki-shurupoverty-i-gaykoverty/shurupovert-bosch-ixo-v-full-06039a8022--product/	IN_STOCK	1310119
376	Шуруповерт аккум бытовой Bosch IXO medium 0.603.9A8.021	164	\N	_thumb_180x140xin_upload_iblock_d40_1310118_1.jpg	https://mile.by/catalog/elektrootvertki-shurupoverty-i-gaykoverty/shurupovert-bosch-ixo-v-medium-06039a8021--product/	IN_STOCK	1310118
377	Шуруповерт аккум бытовой Bosch IXO basic 0.603.9A8.020	138	\N	_thumb_180x140xin_upload_iblock_9c2_1310117_1.jpg	https://mile.by/catalog/elektrootvertki-shurupoverty-i-gaykoverty/shurupovert-bosch-ixo-v-basic-06039a8020--product/	IN_STOCK	1310117
378	Шуруповерт STANLEY STDR5206-B9	0	\N	_thumb_180x140xin_upload_iblock_5c0_1389534_1.jpg	https://mile.by/catalog/elektrootvertki-shurupoverty-i-gaykoverty/shurupovert-stanley-stdr5206-product/	OUT_OF_STOCK	1389534
379	Отвертка Black & Decker CS3652LC-XK	114	\N	_thumb_180x140xin_upload_iblock_e86_1367720_1.jpg	https://mile.by/catalog/elektrootvertki-shurupoverty-i-gaykoverty/elektrootvertka-black-decker-cs3652lc-xk-product/	IN_STOCK	1367720
380	Отвертка аккумуляторная Black & Decker CS3651LC-XK	85	\N	_thumb_180x140xin_upload_iblock_418_1367719_1.jpg	https://mile.by/catalog/elektrootvertki-shurupoverty-i-gaykoverty/elektrootvertka-black-decker-cs3651lc-xk-product/	IN_STOCK	1367719
381	Безударная дрель AEG BE 750 R (4935449160)	238	\N	_thumb_180x140xin_upload_iblock_64f_1366778_1.jpg	https://mile.by/catalog/dreli-bezudarnye/bezudarnaia-drel-aeg-be-750-r-4935449160--product/	IN_STOCK	1366778
382	Дрель электр GBM 6 RE   0601472600	165	\N	_thumb_180x140xin_upload_iblock_87c_1099769_1.jpg	https://mile.by/catalog/dreli-bezudarnye/bezudarnaia-drel-bosch-gbm-6-re-professional-0601472600--product/	IN_STOCK	1099769
383	Дрель электр GBM 10 RE 0.601.473.600	230	\N	_thumb_180x140xin_upload_iblock_683_1122127_1.jpg	https://mile.by/catalog/dreli-bezudarnye/bezudarnaia-drel-bosch-gbm-10-re-professional-0601473600--product/	IN_STOCK	1122127
384	Безударная дрель Makita 6413	160	\N	_thumb_180x140xin_upload_iblock_23b_1104058_1.jpg	https://mile.by/catalog/dreli-bezudarnye/bezudarnaia-drel-makita-6413-product/	IN_STOCK	1104058
385	Дрель Stanley STDR5510-RU	110	\N	_thumb_180x140xin_upload_iblock_05c_1367727_1.jpg	https://mile.by/catalog/dreli-bezudarnye/bezudarnaia-drel-stanley-stdr5510-ru-product/	IN_STOCK	1367727
386	Машина ручная электрическая сверлильная,550 Вт,220 В,50 Гц,0-2500 об/мин МЭС-5-01 СЗП Россия	82	\N	_thumb_180x140xin_upload_iblock_cf9_1281385_1.jpg	https://mile.by/catalog/dreli-bezudarnye/bezudarnaia-drel-diold-mes-5-01-szp-product/	IN_STOCK	1281385
387	Дрель электр. МЭС-5-01 550 Вт	73	\N	_thumb_180x140xin_upload_iblock_fd3_1289344_1.jpg	https://mile.by/catalog/dreli-bezudarnye/bezudarnaia-drel-diold-mes-5-01-product/	IN_STOCK	1289344
388	Пила торцовочная Einhell TH-SM 2534 Dual 4300825	757	\N	_thumb_180x140xin_upload_iblock_034_1263558_1.jpg	https://mile.by/catalog/tortsovochnye-pily/tortcovochnaia-pila-einhell-tc-sm-2534-dual-4300825--product/	IN_STOCK	1263558
389	Торцовочная пила Metabo KGS 254 M (602540000)	1200	\N	_thumb_180x140xin_upload_iblock_201_1295205_1.jpg	https://mile.by/catalog/tortsovochnye-pily/tortcovochnaia-pila-metabo-kgs-254-m-602540000--product/	IN_STOCK	1295205
390	Торцовочная пила Metabo KS 216 M Lasercut (619216000)	507	\N	_thumb_180x140xin_upload_iblock_1db_1326933_1.jpg	https://mile.by/catalog/tortsovochnye-pily/tortcovochnaia-pila-metabo-ks-216-m-lasercut-619216000--product/	IN_STOCK	1326933
391	Торцовочная пила WORTEX MS 2520 в кор., арт.MS2520000203	422	\N	_thumb_180x140xin_upload_iblock_19c_1388322_1.jpg	https://mile.by/catalog/tortsovochnye-pily/tortcovochnaia-pila-wortex-ms-2520-ms2520000203--product/	IN_STOCK	1388322
392	Торцовочная пила Wortex MS 2116 L (MS2116L0203)	314	\N	_thumb_180x140xin_upload_iblock_d4e_1376168-1.jpg	https://mile.by/catalog/tortsovochnye-pily/tortcovochnaia-pila-wortex-ms-2116-l-ms2116l0203--product/	IN_STOCK	1376168
393	Торцовочная пила Wortex MS 2116 LM	512	\N	_thumb_180x140xin_upload_iblock_715_1327056_1.jpg	https://mile.by/catalog/tortsovochnye-pily/tortcovochnaia-pila-wortex-ms-2116-lm-product/	IN_STOCK	1327056
394	Торцовочная пила Wortex MS 2520 LMO (MS2520LMO0203)	605	\N	_thumb_180x140xin_upload_iblock_618_1349380_1.jpg	https://mile.by/catalog/tortsovochnye-pily/tortcovochnaia-pila-wortex-ms-2520-lmo-ms2520lmo0203--product/	IN_STOCK	1349380
395	Угловая шлифовальная машина WWS-1200 NEW (4.012.125.00)	108	\N	_thumb_180x140xin_upload_iblock_537_1394771_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-wws-wws-1200-new-product/	IN_STOCK	1394771
396	Угловая шлифмашина Wortex PM 1813 SE	243	\N	_thumb_180x140xin_upload_iblock_389_1318283_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-wortex-pm-1813-se-product/	IN_STOCK	1318283
397	Угловая шлифмашина Stanley STGS9125-RU	114	\N	_thumb_180x140xin_upload_iblock_b76_1367730_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-stanley-stgs9125-ru-product/	IN_STOCK	1367730
398	Углошлифовальная машина Black & Decker KG8215-RU	96	\N	_thumb_180x140xin_upload_iblock_b6b_1367721_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-black-decker-kg8215-ru-product/	IN_STOCK	1367721
399	Угловая шлифмашина сетевая STANLEY SGS105	135	\N	_thumb_180x140xin_upload_iblock_ed7_1384684_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-stanley-sgs105-product/	IN_STOCK	1384684
400	Углошлифовальная машина Black & Decker KG1202	135	\N	_thumb_180x140xin_upload_iblock_266_1384680_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-black-decker-kg1202-product/	IN_STOCK	1384680
401	Строительный фен Black&Decker KX2200K	139	\N	_thumb_180x140xin_upload_iblock_e14_1384683_1.jpg	https://mile.by/catalog/stroitelnye-feny/promyshlennyi-fen-black-decker-kx2200k-product/	IN_STOCK	1384683
402	Пистолет горячего воздуха Stanley STXH2000-RU	87	\N	_thumb_180x140xin_upload_iblock_e92_1367736_1.jpg	https://mile.by/catalog/stroitelnye-feny/promyshlennyi-fen-stanley-stxh2000-ru-product/	IN_STOCK	1367736
403	Электролобзик Makita MAKITA 4350 FCT	496	\N	_thumb_180x140xin_upload_iblock_a66_1368221_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/elektrolobzik-makita-makita-4350-fct-product/	IN_STOCK	1368221
404	Лобзик WPS-800 3.800.080.00	98	\N	_thumb_180x140xin_upload_iblock_756_1394761_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/elektrolobzik-watt-wps-800-product/	IN_STOCK	1394761
405	Электролобзик Ryobi RJS 850 K	211	\N	_thumb_180x140xin_upload_iblock_0dc_1287826_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/elektrolobzik-ryobi-rjs-850-k-product/	IN_STOCK	1287826
406	Электролобзик Ryobi RJS 1050 K	241	\N	_thumb_180x140xin_upload_iblock_16c_1278581_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/elektrolobzik-ryobi-rjs-1050-k-product/	IN_STOCK	1278581
407	Лобзик PATRIOT LS 601 The One	109	\N	_thumb_180x140xin_upload_iblock_f28_1378447_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/elektrolobzik-patriot-ls-601-the-one-product/	IN_STOCK	1378447
408	Фрезер WORTEX MM 5013-1 E	202	\N	_thumb_180x140xin_upload_iblock_9fc_1351221_1.jpg	https://mile.by/catalog/frezery/frezer-wortex-mm-5013-1-e-product/	IN_STOCK	1351221
409	Пила циркулярная (дисковая) Black & Decker CS1004	193	\N	_thumb_180x140xin_upload_iblock_064_1371157_1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/pila-tcirkuliarnaia-diskovaia-black-decker-cs1004-product/	IN_STOCK	1371157
410	Пила циркулярная (дисковая) Dremel F.013.SM2.0JE	421	\N	_thumb_180x140xin_upload_iblock_c07_1310298_1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/pila-tcirkuliarnaia-diskovaia-dremel-f-013-sm2-0je-product/	IN_STOCK	1310298
411	Ленточная шлифмашина Einhell TC-ВS 8038 4466260	222	\N	_thumb_180x140xin_upload_iblock_48d_1311903_1.jpg	https://mile.by/catalog/lentochnye-shlifovalnye-mashiny/lentochnaia-shlifmashina-einhell-tc-vs-8038-4466260--product/	IN_STOCK	1311903
412	Дрель-шуруповерт WATT WAS-18 Li-2 (101803112)	184	\N	_thumb_180x140xin_upload_iblock_215_1394770_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumuliatornaia-watt-was-18li-2-1-018-031-12--product/	IN_STOCK	1394770
413	1.014.029.12 Дрель-шуруповерт аккумуляторная WAS-14Li-2 NEW  (2*2.0 А/ч Li-Ion 2 ск 29 Нм) кейс	166	\N	_thumb_180x140xin_upload_iblock_229_1394769_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumuliatornaia-watt-was-14li-2-101402912--product/	IN_STOCK	1394769
414	Дрель-шуруповерт сетевая DWT DWT BM-280T	121	\N	_thumb_180x140xin_upload_iblock_cec_1394783_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-setevaia-dwt-dwt-bm-280t-product/	IN_STOCK	1394783
415	Дрель-шуруповерт аккумуляторная Metabo POWER MAXX BS BASIC (600080500)	306	\N	_thumb_180x140xin_upload_iblock_e3e_1289938_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumuliatornaia-metabo-power-maxx-bs-basic-600080500--product/	IN_STOCK	1289938
416	Перфоратор WBH-1100 NEW 3 реж  кейс+набор сверел и зубил 5.011.028.00	195	\N	_thumb_180x140xin_upload_iblock_f0a_1375521_1.jpg	https://mile.by/catalog/perforatory_/perforator-watt-wbh-1100-new-3-product/	IN_STOCK	1375521
417	Мини дрель электр. 150Вт МЭД-2 МФ	101	\N	_thumb_180x140xin_upload_iblock_99f_1335641_1.jpg	https://mile.by/catalog/gravery/graver-diold-med-2-mf-product/	IN_STOCK	1335641
418	Краскораспыл электр быт Bosch PFS 3000-2 0.603.207.100	320	\N	_thumb_180x140xin_upload_iblock_cb6_1296588_1.jpg	https://mile.by/catalog/kraskopulty-elektricheskie/kraskoraspylitel-bosch-pfs-3000-2-0603207100--product/	IN_STOCK	1296588
419	Краскораспыл электр быт Bosch PFS 2000 0.603.207.300	231	\N	_thumb_180x140xin_upload_iblock_a21_1296589_1.jpg	https://mile.by/catalog/kraskopulty-elektricheskie/kraskoraspylitel-bosch-pfs-2000-0603207300--product/	IN_STOCK	1296589
420	Краскораспыл электр быт Bosch PFS 5000E 0.603.207.200	457	\N	_thumb_180x140xin_upload_iblock_6d1_1302835_1.jpg	https://mile.by/catalog/kraskopulty-elektricheskie/kraskoraspylitel-bosch-pfs-5000e-0603207200--product/	IN_STOCK	1302835
421	Краскораспылитель ECO ESG-550	0	\N	_thumb_180x140xin_upload_iblock_430_1303719_1.jpg	https://mile.by/catalog/kraskopulty-elektricheskie/kraskoraspylitel-eco-esg-550-product/	OUT_OF_STOCK	1303719
422	Краскораспылитель W100 (W550) WAGNER	215	\N	_thumb_180x140xin_upload_iblock_46a_1370977_1.jpg	https://mile.by/catalog/kraskopulty-elektricheskie/kraskoraspylitel-wagner-wagner-w-100-2361507--product/	IN_STOCK	1370977
423	Краскораспылитель W590 Flexio WAGNER	429	\N	_thumb_180x140xin_upload_iblock_c09_1370978_1.jpg	https://mile.by/catalog/kraskopulty-elektricheskie/kraskoraspylitel-wagner-w-590-flexio-2361538--product/	IN_STOCK	1370978
424	Краскораспылитель электрический WORTEX PS 1165 в кор. PS116502811	171	\N	_thumb_180x140xin_upload_iblock_408_1342264_1.jpg	https://mile.by/catalog/kraskopulty-elektricheskie/kraskoraspylitel-wortex-gg-ps116502811-product/	IN_STOCK	1342264
425	Краскораспылитель WORTEX GG PS084502911	134	\N	_thumb_180x140xin_upload_iblock_5ad_1342263_1.jpg	https://mile.by/catalog/kraskopulty-elektricheskie/kraskoraspylitel-wortex-gg-ps084502911-product/	IN_STOCK	1342263
426	Пила сабельная Stanley SPT900	264	\N	_thumb_180x140xin_upload_iblock_269_1384685_1.jpg	https://mile.by/catalog/elektronozhovki/sabelnaia-pila-stanley-spt900-product/	IN_STOCK	1384685
427	Машина мультишлиф. электр. PSM Primo 0.603.3B8.020	145	\N	_thumb_180x140xin_upload_iblock_f8a_1289364_1.jpg	https://mile.by/catalog/deltashlifovalnye-mashiny/deltashlifmashina-bosch-psm-primo-06033b8020--product/	IN_STOCK	1289364
428	Машина мультишлиф. электр. PSM 100 A 0.603.3B7.020	180	\N	_thumb_180x140xin_upload_iblock_b15_1289365_1.jpg	https://mile.by/catalog/deltashlifovalnye-mashiny/deltashlifmashina-bosch-psm-100-a-06033b7020--product/	IN_STOCK	1289365
429	Машина мультишлиф. электр. PSM 200 AES 0.603.3B6.020	284	\N	_thumb_180x140xin_upload_iblock_316_1289366_1.jpg	https://mile.by/catalog/deltashlifovalnye-mashiny/deltashlifmashina-bosch-psm-200-aes-06033b6020--product/	IN_STOCK	1289366
430	Виброшлифмашина TE-OS (RT-OS) 1320 4460560	109	\N	_thumb_180x140xin_upload_iblock_41a_1282688_1.jpg	https://mile.by/catalog/deltashlifovalnye-mashiny/deltashlifmashina-einhell-te-os-1320-4460560--product/	IN_STOCK	1282688
431	Машина многофункцион. аккум. UniversalMulti 12  0.603.103.021	425	\N	_thumb_180x140xin_upload_iblock_6a0_1378213_1.jpg	https://mile.by/catalog/multifunktsionalnaye-shlifovalnye-mashiny/bosch-41-boulevard-marcel-sembat-69200-v-nissieux-france-universalmulti-12-s-akkumuliatorom-0603103021--product/	IN_STOCK	1378213
432	Дельташлифмашина универс. Bosch PMF PMF 350 CES 0.603.102.220	566	\N	_thumb_180x140xin_upload_iblock_b2c_1334196_1.jpg	https://mile.by/catalog/multifunktsionalnaye-shlifovalnye-mashiny/bosch-41-boulevard-marcel-sembat-69200-v-nissieux-france-pmf-350-ces-0603102220--product/	IN_STOCK	1334196
433	Дельташлифмашина универс. Bosch PMF 250 CES 0.603.102.120	335	\N	_thumb_180x140xin_upload_iblock_c15_1334195_1.jpg	https://mile.by/catalog/multifunktsionalnaye-shlifovalnye-mashiny/bosch-41-boulevard-marcel-sembat-69200-v-nissieux-france-pmf-250-ces-0603102120--product/	IN_STOCK	1334195
434	Дельташлифмашина универс. Bosch PMF 220 CE  0.603.102.020	276	\N	_thumb_180x140xin_upload_iblock_9c7_1334194-1.jpg	https://mile.by/catalog/multifunktsionalnaye-shlifovalnye-mashiny/bosch-41-boulevard-marcel-sembat-69200-v-nissieux-france-pmf-220-ce-0603102020--product/	IN_STOCK	1334194
435	Лобзик WPS-850 3.850.100.00	122	\N	_thumb_180x140xin_upload_iblock_278_1394762_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/elektrolobzik-watt-wps-850-3-850-100-00--product/	IN_STOCK	1394762
436	Машина углошлифовальная  PATRIOT THE ONE AG126E	119	\N	_thumb_180x140xin_upload_iblock_8ab_1404170_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-patriot-the-one-ag126e-product/	IN_STOCK	1404170
437	Машина углошлифовальная  PATRIOT  AG124	99	\N	_thumb_180x140xin_upload_iblock_398_1406839_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-patriot-ag-124-product/	IN_STOCK	1406839
438	Дрель-шуруповерт аккумуляторная Ryobi R18DD3 (5133002889)	162	\N	_thumb_180x140xin_upload_iblock_e7e_1395377_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumuliatornaia-ryobi-r18dd3-5133002889--product/	IN_STOCK	1395377
439	Промышленный фен Molot MHG 5120 (MHG5120K0022)	56	\N	_thumb_180x140xin_upload_iblock_0b2_1413788_1.jpg	https://mile.by/catalog/stroitelnye-feny/molot-mhg-5120-mhg5120k0022--product/	IN_STOCK	1413788
440	4.420.230.00 Плоскошлифовальная машина WSS-420	90	\N	_thumb_180x140xin_upload_iblock_173_1394845_1.jpg	https://mile.by/catalog/vibratsionnye-shlifovalnye-mashiny/watt-wss-420-4-420-230-00--product/	IN_STOCK	1394845
441	Лобзик электрический Molot MJS 6506 E (MJS6506E0019)	94	\N	_thumb_180x140xin_upload_iblock_66f_1408919_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/lobzik-elektricheskii-molot-mjs-6506-e-mjs6506e0019--product/	IN_STOCK	1408919
442	Промышленный фен WHP-2040 (7.020.004.00) Watt	70	\N	_thumb_180x140xin_upload_iblock_793_1401545_1.jpg	https://mile.by/catalog/stroitelnye-feny/fen-promyshlennyi-watt-whp-2040--product/	IN_STOCK	1401545
443	Фен промышленный Bort BHG-2005N-K	0	\N	_thumb_180x140xin_upload_iblock_40e_1409310_1.jpg	https://mile.by/catalog/stroitelnye-feny/fen-promyshlennyi-bort-bhg-2005n-k--product/	OUT_OF_STOCK	1409310
444	Ленточная шлифмашина WBS-900 (4.900.457.00)	147	\N	_thumb_180x140xin_upload_iblock_d1c_1399474-1.jpg	https://mile.by/catalog/lentochnye-shlifovalnye-mashiny/lentochnaia-shlifovalnaia-mashina-watt-wbs-900-4-900-457-00--product/	IN_STOCK	1399474
445	Гравер Dremel Stylo+ 2050-15 F0132050JD	204	\N	_thumb_180x140xin_upload_iblock_f64_1396416_1.jpg	https://mile.by/catalog/gravery/dremel-stylo-2050-15-f0132050jd-product/	IN_STOCK	1396416
446	Гравер Dremel 3000-5 F0133000JX	187	\N	_thumb_180x140xin_upload_iblock_e7f_1340277_1.jpg	https://mile.by/catalog/gravery/dremel-3000-5-f0133000jx-product/	IN_STOCK	1402956
447	2.500.010.00 Дрель-шуруповерт WSM-500 NEW	76	\N	_thumb_180x140xin_upload_iblock_ffe_1394767_1.jpg	https://mile.by/catalog/dreli-shurupoverty/watt-wsm-500-new-2-500-010-00--product/	IN_STOCK	1394767
448	3.140.110.00 Рубанок WEH-950	260	\N	_thumb_180x140xin_upload_iblock_70a_1394764-1.jpg	https://mile.by/catalog/elektrorubanki/watt-weh-950-314011000--product/	IN_STOCK	1394764
449	Циркулярная пила PATRIOT CS 162	189	\N	_thumb_180x140xin_upload_iblock_0be_1411534_1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/pila-pogruzhnaya-patriot-cs-162-product/	IN_STOCK	1411534
450	Циркулярная пила PATRIOT CS141	151	\N	_thumb_180x140xin_upload_iblock_127_1388149_1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/pila-tsirkulyarnaya-patriot-cs141-product/	IN_STOCK	1388149
451	Угловая шлифмашина WORTEX AG 1211-1 E (AG12111E0018)	159	\N	_thumb_180x140xin_upload_iblock_7bb_1397957_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/odnoruchnaya-ugloshlifmashina-wortex-ag-1211-1-e-v-kor-art-ag12111e0018-product/	IN_STOCK	1397957
452	Ленточная шлифмашина WATT WBS-1100 (4.100.533.00)	211	\N	_thumb_180x140xin_upload_iblock_cd5_1394758_1.jpg	https://mile.by/catalog/lentochnye-shlifovalnye-mashiny/4-100-533-00-lentochnaya-shlifovalnaya-mashina-wbs-1100-product/	IN_STOCK	1394758
453	Машина углошлифовальная PATRIOT THE ONE AG128	114	\N	_thumb_180x140xin_upload_iblock_4bc_1421478_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/patriot-the-one-ag128-product/	IN_STOCK	1421478
454	Ленточная шлифмашина WBS-1010 (4.010.457.00)	170	\N	_thumb_180x140xin_upload_iblock_09c_1394759-1.jpg	https://mile.by/catalog/lentochnye-shlifovalnye-mashiny/4-010-457-00-lentochnaya-shlifovalnaya-mashina-wbs-1010-product/	IN_STOCK	1394759
455	Рубанок WORTEX PL 3515-1 (PL3515100021)	324	\N	_thumb_180x140xin_upload_iblock_0ce_1397991_1.jpg	https://mile.by/catalog/elektrorubanki/rubanok-elektricheskiy-wortex-pl-3515-1-v-kor-aksessuary-art-pl3515100021-product/	IN_STOCK	1397991
456	Угловая шлифмашина Black & Decker G720	100	\N	_thumb_180x140xin_upload_iblock_b65_1395444_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/shlifmashina-uglovaya-bolgarka-g720-1200-vt-product/	IN_STOCK	1395444
457	Рубанок Watt WEH-910 (3.910.082.00)	144	\N	_thumb_180x140xin_upload_iblock_5a8_1394763_1.jpg	https://mile.by/catalog/elektrorubanki/3-910-082-00-rubanok-weh-910-product/	IN_STOCK	1394763
458	Эксцентриковая шлифмашина Watt WES-125 4.550.125.00	109	\N	_thumb_180x140xin_upload_iblock_997_1394765_1.jpg	https://mile.by/catalog/ekstsentrikovye-shlifovalnye-mashiny/4-550-125-00-ekstsentrikovaya-shlifovalnaya-mashina-wes-125--product/	IN_STOCK	1394765
459	Виброшлифмашина WATT WSS-280 (4.280.187.00)	64	\N	_thumb_180x140xin_upload_iblock_50b_1394766_1.jpg	https://mile.by/catalog/vibratsionnye-shlifovalnye-mashiny/4-280-187-00-ploskoshlifovalnaya-mashina-wss-280-product/	IN_STOCK	1394766
460	Дрель-шуруповерт Black&Decker LD12SP-RU	132	\N	_thumb_180x140xin_upload_iblock_8f7_1405363_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-blackamp-decker-ld12sp-ru-product/	IN_STOCK	1405363
461	Угловая шлифмашина Black & Decker G650-RU	76	\N	_thumb_180x140xin_upload_iblock_84b_1410065_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/ugloshlifovalnaya-mashina-black-amp-decker-g650-ru-product/	IN_STOCK	1410065
462	Лобзик WPS-550 3.550.055.00	81	\N	_thumb_180x140xin_upload_iblock_703_1394760_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/watt-wps-550-3-550-055-00--product/	IN_STOCK	1394760
463	Дрель-шуруповерт Instar ЭДР 72700	0	\N	_thumb_180x140xin_upload_iblock_8b3_1422782_1.jpg	https://mile.by/catalog/dreli-shurupoverty/instar-edr-72700-product/	OUT_OF_STOCK	1422782
464	Перфоратор Makita HR 2470 FT	512	\N	_thumb_180x140xin_upload_iblock_420_1288183_1.jpg	https://mile.by/catalog/perforatory_/perforator-makita-hr-2470-780w-ft-product/	IN_STOCK	1288183
465	Пила сабельная Bosch GSA 1100 E Professional (060164C800)	512	\N	_thumb_180x140xin_upload_iblock_db4_1316387_1.jpg	https://mile.by/catalog/elektronozhovki/nozhovka-sabelnaya-gsa-1100-e-060164s800-product/	IN_STOCK	1316387
466	Рубанок Einhell TC-PL 750 (4345310)	165	\N	_thumb_180x140xin_upload_iblock_35a_1358786_1.jpg	https://mile.by/catalog/elektrorubanki/elektrorubanok-einhell-tc-pl-750-4345310--product/	IN_STOCK	1358786
467	Электролобзик Black & Decker KS701E-QS	110	\N	_thumb_180x140xin_upload_iblock_ce3_1367723_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/lobzik-black-amp-decker-ks701e-qs-product/	IN_STOCK	1367723
468	Насадка WAGNER EXTRA Стандартная 800 мл	66	\N	_thumb_180x140xin_upload_iblock_8b5_1370981_1.jpg	https://mile.by/catalog/kraskopulty-elektricheskie/nasadka-extra-standartnaya-800-ml-wagner-product/	IN_STOCK	1370981
469	Насадка WAGNER EXTRA Brilliant 600 мл	63	\N	_thumb_180x140xin_upload_iblock_e76_1370983_1.jpg	https://mile.by/catalog/kraskopulty-elektricheskie/nasadka-extra-brilliant-600-ml-wagner-product/	IN_STOCK	1370983
470	Насадка WAGNER EXTRA Удлинитель HVLP 60 см	77	\N	_thumb_180x140xin_upload_iblock_f5d_1370984_1.jpg	https://mile.by/catalog/kraskopulty-elektricheskie/nasadka-extra-udlinitel-hvlp-60-sm-wagner-product/	IN_STOCK	1370984
471	Электролобзик Black & Decker JS20-RU	100	\N	_thumb_180x140xin_upload_iblock_5dc_1384679_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/lobzik-blackamp-decker-js20-ru-product/	IN_STOCK	1384679
472	Фрезер Black & Decker KW1200EKA-QS	0	\N	_thumb_180x140xin_upload_iblock_b27_1384682_1.jpg	https://mile.by/catalog/frezery/frezer-black-amp-decker-kw1200eka-qs-product/	OUT_OF_STOCK	1384682
473	Промышленный фен Black & Decker KX1650-XK	78	\N	_thumb_180x140xin_upload_iblock_8bb_1395447_1.jpg	https://mile.by/catalog/stroitelnye-feny/promyshlennyy-fen-black-amp-decker-kx1650-xk-product/	IN_STOCK	1395447
474	Угловая шлифмашина Bosch GWS 12V-76 (0.601.9F2.000)	405	\N	_thumb_180x140xin_upload_iblock_fe0_1394064_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/akk-ugloshlifovalnaya-mashina-12-v-gws-12v-76-0-601-9f2-000-bez-akk--product/	IN_STOCK	1394064
475	Циркулярная пила DeWalt DWE560B	403	\N	_thumb_180x140xin_upload_iblock_5cf_1397992_1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/dwe560b-pila-diskovaya-product/	IN_STOCK	1397992
476	Перфоратор Makita DHR 202 RF	500	\N	_thumb_180x140xin_upload_iblock_7f4_1396414_1.jpg	https://mile.by/catalog/perforatory_/akkum-perforator-makita-dhr-202-rf-v-chem-art-dhr202rf-product/	IN_STOCK	1396414
477	Отбойный молоток Bosch GSH 501 (0.611.337.020)	1129	\N	_thumb_180x140xin_upload_iblock_cea_1399680_1.jpg	https://mile.by/catalog/otboynye-molotki_/otboynyy-molotok-gsh-501-0-611-337-020-product/	IN_STOCK	1399680
478	Торцовочная пила Bosch GCM 800 SJ (0.601.B19.000)	1262	\N	_thumb_180x140xin_upload_iblock_c82_1399684_1.jpg	https://mile.by/catalog/tortsovochnye-pily/tortsovochnaya-pila-gcm-800-sj-0-601-b19-000-product/	IN_STOCK	1399684
479	Перфоратор Bosch GBH 5-40 D Professional (0611269020)	1447	\N	_thumb_180x140xin_upload_iblock_6db_1399681_1.jpg	https://mile.by/catalog/perforatory_/perforator-sds-max-gbh-5-40-d-0-611-269-020-product/	IN_STOCK	1399681
480	Дрель-шуруповерт DeWalt аккумуляторная (DCD 771 D2-KS)	439	\N	_thumb_180x140xin_upload_iblock_c1e_1402697_1.jpg	https://mile.by/catalog/dreli-shurupoverty/akkumulyatornaya-drel-shurupovert-dewalt-dcd-771-d2-ks-product/	IN_STOCK	1402697
481	Дрель-шуруповерт Black&Decker BL186KB-QW	400	\N	_thumb_180x140xin_upload_iblock_720_1405364_1.jpg	https://mile.by/catalog/dreli-shurupoverty/besshchetochnaya-drel-shurupovert-blackamp-decker-bl186kb-qw-product/	IN_STOCK	1405364
482	Дрель-шуруповерт DeWalt DCD716D2-KS	0	\N	_thumb_180x140xin_upload_iblock_37c_1405370_1.jpg	https://mile.by/catalog/dreli-udarnye/udarnaya-drel-shurupovert-dewalt-dcd716d2-ks-product/	OUT_OF_STOCK	1405370
483	Вибратор глубинный PATRIOT CV 100	195	\N	_thumb_180x140xin_upload_iblock_ce7_1411536_1.jpg	https://mile.by/catalog/glubinnye-vibratory-dlya-betona/vibrator-dlya-betona-glubinnyy-patriot-cv-100-nasadka-product/	IN_STOCK	1411536
484	Дрель-шуруповерт Makita аккумуляторная в чемодане (DF333DWYE)	292	\N	_thumb_180x140xin_upload_iblock_adb_1418486_1.jpg	https://mile.by/catalog/dreli-shurupoverty/akkum-drel-shurupovert-makita-df-333-dwye-v-chem-art-df333dwye-product/	IN_STOCK	1418486
485	Перфоратор Makita HR2630	423	\N	_thumb_180x140xin_upload_iblock_c48_1418488_1.jpg	https://mile.by/catalog/perforatory_/perforator-makita-hr-2630-v-chem-art-hr2630-product/	IN_STOCK	1418488
486	Винтоверт Makita TD0101F	269	\N	_thumb_180x140xin_upload_iblock_8e5_1418492_1.jpg	https://mile.by/catalog/elektrootvertki-shurupoverty-i-gaykoverty/shurupovert-udarnyy-makita-td-0101-f-v-kor-art-td0101f-product/	IN_STOCK	1418492
487	Эксцентриковая шлифмашина Makita BO 5031	284	\N	_thumb_180x140xin_upload_iblock_b09_3d5_mileby_im_tovar.jpg	https://mile.by/catalog/ekstsentrikovye-shlifovalnye-mashiny/ekstsentrikovaya-shlifmashina-makita-bo-5031-v-kor-art-bo5031-product/	IN_STOCK	1418493
488	Фрезер Bosch Bosch GKF 600 (0.601.60A.100)	600	\N	_thumb_180x140xin_upload_iblock_62c_1390261_1.jpg	https://mile.by/catalog/frezery/frezer-gkf-600-0-601-60a-100-product/	IN_STOCK	1390261
518	Угловая шлифмашина WATT WWS-1000 4.010.125.10	98	\N	_thumb_180x140xin_upload_iblock_cf2_1438563_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/ugloshlifmashina-watt-wws-1000-4-010-125-10-product/	IN_STOCK	1438563
489	Винтоверт Bosch GSR 12V-15 FC Professional 0.601.9F6.001 (с 2-мя АКБ, кейс)	452	\N	_thumb_180x140xin_upload_iblock_874_1422669_1.jpg	https://mile.by/catalog/dreli-shurupoverty/akk-drel-shurupovert-gsr-12v-15-fc-0-601-9f6-001-product/	IN_STOCK	1422669
490	Электрорубанок Bosch GHO 12V-20 (0.601.5A7.000) (без АКБ)	568	\N	_thumb_180x140xin_upload_iblock_cb2_1415736_1.jpg	https://mile.by/catalog/elektrorubanki/akk-rubanok-12-v-gho-12v-20-0-601-5a7-000-bez-akk--product/	IN_STOCK	1415736
491	Фрезер Bosch GKF 12V-8 (0.601.6B0.002)	444	\N	_thumb_180x140xin_upload_iblock_468_1415737_1.jpg	https://mile.by/catalog/frezery/akk-frezer-12-v-gkf-12v-8-0-601-6b0-002-bez-akk--product/	IN_STOCK	1415737
492	Промышленный фен Bosch GHG 23-66 (0.601.2A6.301)	370	\N	_thumb_180x140xin_upload_iblock_af7_1415739_1.jpg	https://mile.by/catalog/stroitelnye-feny/tekhnicheskie-feny-ghg-23-66-0-601-2a6-301-product/	IN_STOCK	1415739
493	Угловая шлифмашина Bosch GWX 9-125 S (0.601.7B2.000)	314	\N	_thumb_180x140xin_upload_iblock_7b4_1423349_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/ugloshlifmashina-gwx-9-125-s-0-601-7b2-000-product/	IN_STOCK	1423349
494	Угловая шлифмашина Bosch GWX 10-125 (0.601.7B3.000)	359	\N	_thumb_180x140xin_upload_iblock_56d_1423350_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/ugloshlifmashina-gwx-10-125-0-601-7b3-000-product/	IN_STOCK	1423350
495	Угловая шлифмашина Bosch GWX 14-125 (0.601.7B7.000)	418	\N	_thumb_180x140xin_upload_iblock_d8b_1423351_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/ugloshlifmashina-gwx-14-125-0-601-7b7-000-product/	IN_STOCK	1423351
496	Угловая шлифмашина Bosch GWX 13-125 S (0.601.7B6.002)	413	\N	_thumb_180x140xin_upload_iblock_f7e_1423352_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/ugloshlifmashina-gwx-13-125-s-0-601-7b6-002-product/	IN_STOCK	1423352
497	Угловая шлифмашина Bosch GWX 17-125 S (0.601.7C4.002)	461	\N	_thumb_180x140xin_upload_iblock_37f_1423353_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/ugloshlifmashina-gwx-17-125-s-0-601-7c4-002-product/	IN_STOCK	1423353
498	Дрель-шуруповерт Bosch GSR 180-LI Professional 0.601.9F8.109 (с 2-мя АКБ, кейс)	381	\N	_thumb_180x140xin_upload_iblock_df1_1426099_1.jpg	https://mile.by/catalog/dreli-shurupoverty/akk-shurupovert-gsr-180-li-0-601-9f8-109-product/	IN_STOCK	1426099
499	Дрель-шуруповерт Bosch GSB 180-LI Professional 0.601.9F8.307 (с 2-мя АКБ, кейс)	437	\N	_thumb_180x140xin_upload_iblock_638_1426100_1.jpg	https://mile.by/catalog/dreli-shurupoverty/akk-shurupovert-gsb-180-li-0-601-9f8-307-product/	IN_STOCK	1426100
500	Машина углошлифовальная (УШМ) PATRIOT AG 126	117	\N	_thumb_180x140xin_upload_iblock_543_1426355_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-patriot-ag126-product/	IN_STOCK	1426355
501	Угловая шлифмашина Watt WWS-1100 (4.011.125.10)	103	\N	_thumb_180x140xin_upload_iblock_49b_1426157_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-watt-wws-1100-4-011-125-10--product/	IN_STOCK	1426157
502	Угловая шлифмашина Stanley SGM146-RU	171	\N	_thumb_180x140xin_upload_iblock_f98_1407563_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaya-shlifmashina-stanley-sgm146-ru-product/	IN_STOCK	1407563
503	Электролобзик Black & Decker JS10-RU	78	\N	_thumb_180x140xin_upload_iblock_562_1416019_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/lobzik-400vt-glubina-propila-65-mm-js10-ru-product/	IN_STOCK	1416019
504	Угловая шлифмашина Stanley SL209-RU	239	\N	_thumb_180x140xin_upload_iblock_7d7_1416027_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaya-shlifmashina-2000-vt-230-mm-6500-ob-min-4-9-kg-sl209-ru-product/	IN_STOCK	1416027
505	Ударная дрель DS 1307 (DS130700025) Wortex	120	\N	_thumb_180x140xin_upload_iblock_1ae_1421050_1.jpg	https://mile.by/catalog/dreli-udarnye/drel-udarnaya-wortex-ds-1307-v-kor-art-ds130700025-product/	IN_STOCK	1421050
506	Дрель-шуруповерт WORTEX BD 1215 Dli (BD1215DLi10029)	204	\N	_thumb_180x140xin_upload_iblock_002_1425455_1.jpg	https://mile.by/catalog/dreli-shurupoverty/akkum-drel-shurupovert-wortex-bd-1215-dli-v-chem-art-bd1215dli10029-product/	IN_STOCK	1425455
507	Угловая шлифмашина MAG 1209-1 (MAG120910013) Molot	95	\N	_thumb_180x140xin_upload_iblock_9d2_1426352_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/odnoruchnaya-ugloshlifmashina-molot-mag-1209-1-v-kor-art-mag120910013-product/	IN_STOCK	1426352
508	Перфоратор WBH-800 (5.800.026.10) Watt	163	\N	_thumb_180x140xin_upload_iblock_6e1_1428971_1.jpg	https://mile.by/catalog/perforatory_/perforator-wbh-800-5-800-026-10-watt-product/	IN_STOCK	1428971
509	Дрель-шуруповерт DeWalt DCD710C2-KS	340	\N	_thumb_180x140xin_upload_iblock_a27_1399696_1.jpg	https://mile.by/catalog/dreli-shurupoverty/akkumulyatornaya-drel-shurupovert-dewalt-dcd710c2-ks-product/	IN_STOCK	1399696
510	Рубанок Black & Decker KW 712-XK	143	\N	_thumb_180x140xin_upload_iblock_21d_1405366_1.jpg	https://mile.by/catalog/elektrorubanki/elektricheskiy-rubanok-black-decker-kw-712-xk-product/	IN_STOCK	1405366
511	Фрезер DeWALT DW 621-QS	0	\N	_thumb_180x140xin_upload_iblock_ee0_1410069_1.jpg	https://mile.by/catalog/frezery/frezer-dewalt-dw-621-qs-product/	OUT_OF_STOCK	1410069
512	Дрель-шуруповерт WORTEX BD1213Li03129	124	\N	_thumb_180x140xin_upload_iblock_3c2_1425955_1.jpg	https://mile.by/catalog/dreli-shurupoverty/akkum-drel-shurupovert-wortex-bd-1213-li-v-kor-art-bd1213li03129-product/	IN_STOCK	1425955
513	Дрель-шуруповерт Molot MBD 1213-1 Li (MBD12131Li0029)	98	\N	_thumb_180x140xin_upload_iblock_3f4_1426351_1.jpg	https://mile.by/catalog/dreli-shurupoverty/akkum-drel-shurupovert-molot-mbd-1213-1-li-v-kor-art-mbd12131li0029-product/	IN_STOCK	1426351
514	Дрель-шуруповерт Patriot BR 111ES 180201411	175	\N	_thumb_180x140xin_upload_iblock_c19_1429947_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumulyatornaya-patriot-br-111es-product/	IN_STOCK	1429947
515	Перфоратор DeWalt D25144K-KS	567	\N	_thumb_180x140xin_upload_iblock_0a9_1377141_1.jpg	https://mile.by/catalog/perforatory_/perforator-sds-plus-900vt-dewalt-d25144k-ks-product/	IN_STOCK	1377141
516	Ударная дрель Stanley SDH600C-RU	128	\N	_thumb_180x140xin_upload_iblock_23b_1416026_1.jpg	https://mile.by/catalog/dreli-udarnye/udarnaya-drel-600-vt-sdh600c-ru-product/	IN_STOCK	1416026
517	Угловая шлифмашина Molot MAG 1210 (MAG121000027)	100	\N	_thumb_180x140xin_upload_iblock_86d_1437662_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/odnoruchnaya-ugloshlifmashina-molot-mag-1210-v-kor-art-mag121000027-product/	IN_STOCK	1437662
519	Аккум. дрель-шуруповерт MOLOT MBD 1215 DLi в чем., арт.MBD1215DLi0013	134	\N	_thumb_180x140xin_upload_iblock_2f9_1408917_1.jpg	https://mile.by/catalog/dreli-shurupoverty/akkum-drel-shurupovert-molot-mbd-1215-dli-v-chem-art-mbd1215dli0013-product/	IN_STOCK	1408917
520	Одноручная углошлифмашина WORTEX AG 1213 в кор., арт.AG121300018	164	\N	_thumb_180x140xin_upload_iblock_222_1421059_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/odnoruchnaya-ugloshlifmashina-wortex-ag-1213-v-kor-art-ag121300018-product/	IN_STOCK	1421059
521	Дрель-шуруповерт аккумуляторная PATRIOT BR 187UES	184	\N	_thumb_180x140xin_upload_iblock_cad_1449494_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumulyatornaya-patriot-br-187ues-product/	IN_STOCK	1449494
522	Дрель-шуруповерт DeWalt DCD710D2-KS	389	\N	_thumb_180x140xin_upload_iblock_8af_1377136_1.jpg	https://mile.by/catalog/dreli-shurupoverty/10-8v-xr-kompaktnaya-drel-shurupovert-dewalt-dcd710d2-ks-product/	IN_STOCK	1377136
523	Ударная дрель Black & Decker HD555-RU	93	\N	_thumb_180x140xin_upload_iblock_9e4_1410067.jpg	https://mile.by/catalog/dreli-udarnye/udarnaya-drel-black-decker-hd555-ru-product/	IN_STOCK	1410067
524	Фрезер DeWALT DW625E-QS	1158	\N	_thumb_180x140xin_upload_iblock_502_1410070_1.jpg	https://mile.by/catalog/frezery/frezer-dewalt-dw625e-qs-product/	IN_STOCK	1410070
525	Фрезер DeWALT DW615-QS	928	\N	_thumb_180x140xin_upload_iblock_923_1416014_1.jpg	https://mile.by/catalog/frezery/frezer-dvuruchnyy-900-vt-dw615-qs-product/	IN_STOCK	1416014
526	Угловая шлифмашина DeWalt DWE4051-KS	199	\N	_thumb_180x140xin_upload_iblock_11f_1416016_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaya-shlifmashina-125-mm-800-vt-11800-ob-min-dwe4051-ks-product/	IN_STOCK	1416016
527	Дрель-шуруповерт Stanley SCD121S2K-RU	207	\N	_thumb_180x140xin_upload_iblock_a36_1416024_1.jpg	https://mile.by/catalog/dreli-shurupoverty/12-v-drel-shurupovert-26-nm-0-400-1500-ob-min-2-bat-li-ion-1-5-ach-keys-1-0-kg-scd121s2k-ru-product/	IN_STOCK	1416024
528	Угловая шлифмашина Wortex AG 2326 (AG232600019)	268	\N	_thumb_180x140xin_upload_iblock_40f_1421049_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/dvuruchnaya-ugloshlifmashina-wortex-ag-2326-v-kor-art-ag232600019-product/	IN_STOCK	1421049
529	Угловая шлифмашина Wortex AG 1207-3 (AG1207300019)	115	\N	_thumb_180x140xin_upload_iblock_192_1421056-1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/odnoruchnaya-ugloshlifmashina-wortex-ag-1207-3-v-kor-art-ag1207300019-product/	IN_STOCK	1421056
530	Угловая шлифмашина Wortex AG 1213-3 E (AG12133E00013)	175	\N	_thumb_180x140xin_upload_iblock_93e_1421060_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/odnoruchnaya-ugloshlifmashina-wortex-ag-1213-3-e-v-kor-art-ag12133e00013-product/	IN_STOCK	1421060
531	Шуруповерт Metabo PowerMaxx BS BASIC (в коробке) 600984000	293	\N	_thumb_180x140xin_upload_iblock_6b4_1452055_1.jpg	https://mile.by/catalog/dreli-shurupoverty/shurupovert-metabo-powermaxx-bs-basic-v-korobke-600984000-product/	IN_STOCK	1452055
532	Дрель-шуруповерт Patriot BR 201UES (180201201)	219	\N	_thumb_180x140xin_upload_iblock_09b_1435668_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumulyatornaya-patriot-br-201ues-180201201-product/	IN_STOCK	1435668
533	Угловая шлифмашина Molot MAG 1208 E (MAG1208E0027)	114	\N	_thumb_180x140xin_upload_iblock_b55_1443260_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/odnoruchnaya-ugloshlifmashina-molot-mag-1208-e-v-kor-art-mag1208e0027-product/	IN_STOCK	1443260
534	Перфоратор Wortex RH 2629 RH262901129	244	\N	_thumb_180x140xin_upload_iblock_401_1455069_1.jpg	https://mile.by/catalog/perforatory_/perforator-wortex-rh-2629-v-chem-2-zubila-3-sverla-art-rh262901129-product/	IN_STOCK	1455069
535	Угловая шлифмашина Wortex AG 1209 (арт. AG120900018)	135	\N	_thumb_180x140xin_upload_iblock_53c_1397956_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/odnoruchnaya-ugloshlifmashina-wortex-ag-1209-v-kor-art-ag120900018-product/	IN_STOCK	1397956
536	Ударная дрель Watt WSM-560 2.560.013.00	61	\N	_thumb_180x140xin_upload_iblock_028_1456436_1.jpg	https://mile.by/catalog/dreli-udarnye/drel-watt-wsm-560-2-560-013-00-product/	IN_STOCK	1456436
537	Дрель-шуруповерт Patriot BR 201UES-h (180201205)	235	\N	_thumb_180x140xin_upload_iblock_aeb_1435669-1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumulyatornaya-patriot-br-201ues-h-udarnyy-180201205-product/	IN_STOCK	1435669
538	Шуруповерт WORTEX BS 4536-1 (BS45361Li0823)	59	\N	_thumb_180x140xin_upload_iblock_9cb_1421043_1.jpg	https://mile.by/catalog/elektrootvertki-shurupoverty-i-gaykoverty/akkum-shurupovert-wortex-bs-4536-1-li-v-blistere-nabor-bit-art-bs45361li0823-product/	IN_STOCK	1421043
539	Дрель-миксер Wortex MX 1416 D (MX1416D0330)	270	\N	_thumb_180x140xin_upload_iblock_331_1432400_1.jpg	https://mile.by/catalog/miksery-stroitelnye/mikser-stroitelnyy-wortex-mx-1416-d-art-mx1416d0330-product/	IN_STOCK	1432400
540	Перфоратор DeWalt D25134K-KS	528	\N	_thumb_180x140xin_upload_iblock_b76_1415977_1.jpg	https://mile.by/catalog/perforatory_/perforator-sds-plus-800-vt-chemodan-tstak-d25134k-ks-product/	IN_STOCK	1415977
541	Перфоратор DeWalt D25143K-KS	493	\N	_thumb_180x140xin_upload_iblock_ab7_1415978_1.jpg	https://mile.by/catalog/perforatory_/perforator-sds-plus-900-vt-chemodan-tstak-d25143k-ks-product/	IN_STOCK	1415978
542	Ударная дрель WATT WSM-800 (280001300)	83	\N	_thumb_180x140xin_upload_iblock_1f1_1457347_1.jpg	https://mile.by/catalog/dreli-udarnye/udarnaya-drel-watt-wsm-800-280001300-product/	IN_STOCK	1457347
543	Отбойный молоток MAKITA HM 1203 C	1581	\N	_thumb_180x140xin_upload_iblock_b8f_1399453_1.jpg	https://mile.by/catalog/otboynye-molotki_/otboynyy-molotok-makita-hm-1203-c-art-hm1203c-product/	IN_STOCK	1399453
544	Ударная дрель Wortex DS 1609-1 (DS160910025)	136	\N	_thumb_180x140xin_upload_iblock_3a3_1421051_1.jpg	https://mile.by/catalog/dreli-udarnye/drel-udarnaya-wortex-ds-1609-1-v-kor-art-ds160910025-product/	IN_STOCK	1421051
545	Фрезер Black & Decker KW1200E-QS	228	\N	_thumb_180x140xin_upload_iblock_2c1_1421742_1.jpg	https://mile.by/catalog/frezery/kw1200e-qs-frezer-1200vt-reg-skor-product/	IN_STOCK	1421742
546	Дрель-шуруповерт Bosch UniversalDrill 18 0.603.9C8.005 (с 2-мя АКБ, кейс)	298	\N	_thumb_180x140xin_upload_iblock_020_1430199_1.jpg	https://mile.by/catalog/dreli-shurupoverty/shurupovert-akkumulyatornyy-universaldrill18-2-akk-0-603-9c8-005-product/	IN_STOCK	1430199
547	Ударная дрель-шуруповерт Bosch EasyImpact 12 0.603.9B6.101 (с 2-мя АКБ, кейс)	429	\N	_thumb_180x140xin_upload_iblock_a81_1430200_1.jpg	https://mile.by/catalog/dreli-shurupoverty/shurupovert-akkum-easyimpact-12-2akk-0-603-9b6-101-product/	IN_STOCK	1430200
548	Ударная дрель-шуруповерт Bosch AdvancedImpact 18 0.603.9B5.101 (с 2-мя АКБ, кейс)	582	\N	_thumb_180x140xin_upload_iblock_261_1430201_1.jpg	https://mile.by/catalog/dreli-shurupoverty/shurupovert-akkum-advancedimpact-18-2-bat-0-603-9b5-101-product/	IN_STOCK	1430201
549	Импульсный шуруповерт Stanley SCI121S2K	303	\N	_thumb_180x140xin_upload_iblock_667_1428518_1.jpg	https://mile.by/catalog/elektrootvertki-shurupoverty-i-gaykoverty/impulsnyy-shurupovert-stanley-sci121s2k-ru-product/	IN_STOCK	1428518
550	Краскораспылитель Wagner W450 (2361524)	281	\N	_thumb_180x140xin_upload_iblock_e4b_1423405_1.jpg	https://mile.by/catalog/kraskopulty-elektricheskie/kraskoraspylitel-elektricheskiy-wagner-w450-2361524-product/	IN_STOCK	1423405
551	Угловая шлифмашина Metabo W 850-125 (603608010)	205	\N	_thumb_180x140xin_upload_iblock_542_1443246_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/ugloshlifmashina-metabo-w-850-125-603608010-product/	IN_STOCK	1443246
552	Дрель-шуруповерт Wortex BD 1215-1 Dli (BLD12151DLi0029)	248	\N	_thumb_180x140xin_upload_iblock_3d4_1443264_1.jpg	https://mile.by/catalog/dreli-shurupoverty/akkum-drel-shurupovert-wortex-bd-1215-1-dli-v-chem-art-bld12151dli0029-product/	IN_STOCK	1443264
553	Перфоратор WORTEX RH 2829 (RH282901129)	313	\N	_thumb_180x140xin_upload_iblock_142_1443270_1.jpg	https://mile.by/catalog/perforatory_/perforator-wortex-rh-2829-v-chem-2-zubila-3-sverla-art-rh282901129-product/	IN_STOCK	1443270
554	Угловая шлифмашина Watt WWS-800 (арт. 4.800.125.10)	81	\N	_thumb_180x140xin_upload_iblock_6eb_1438562_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/ugloshlifmashina-watt-wws-800-4-800-125-10-product/	IN_STOCK	1438562
555	Циркулярная пила Wortex CS 2170-1 (CS2170100029)	234	\N	_thumb_180x140xin_upload_iblock_d07_1443279-1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/tsirkulyarnaya-pila-wortex-cs-2170-1-v-kor-art-cs2170100029-product/	IN_STOCK	1443279
556	Электроотвертка Bosch Go Professional 0.601.9H2.100 (с кейсом)	144	\N	_thumb_180x140xin_upload_iblock_290_1441017-1.jpg	https://mile.by/catalog/elektrootvertki-shurupoverty-i-gaykoverty/akk-shurupovert-li-ion-3-6-vbosch-go-2-00-601-9h2-100-product/	IN_STOCK	1441017
557	Дрель-шуруповерт Bosch GSB 12V-30 Professional (0.601.9G9.102)	252	\N	_thumb_180x140xin_upload_iblock_001_1441018_1.jpg	https://mile.by/catalog/dreli-shurupoverty/akk-udarn-drel-shurupovert-li-ion-12-v-gsb-12v-30-0-601-9g9-102-product/	IN_STOCK	1441018
558	Дрель-шуруповерт Bosch GSR 18V-50 Professional 0.601.9H5.000 (с 2-мя АКБ, кейс)	536	\N	_thumb_180x140xin_upload_iblock_0f6_1441019_1.jpg	https://mile.by/catalog/dreli-shurupoverty/akk-shurupovert-li-ion-18-v-gsr-18v-50-0-601-9h5-000-product/	IN_STOCK	1441019
559	Дрель-шуруповерт Bosch UniversalImpact 18 (0.603.9C8.101)	342	\N	_thumb_180x140xin_upload_iblock_c5c_1441023_1.jpg	https://mile.by/catalog/dreli-udarnye/drel-udar-shurupovert-akkum-universalimpact-18-2-akk-0-603-9c8-101-product/	IN_STOCK	1441023
560	Дрель-шуруповерт Patriot BR 181UES (180201481)	219	\N	_thumb_180x140xin_upload_iblock_6f2_1435667_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumulyatornaya-patriot-br-181ues-180201481-product/	IN_STOCK	1435667
561	Дрель-шуруповерт Patriot BR 241ES (180201241)	249	\N	_thumb_180x140xin_upload_iblock_c92_1435670_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumulyatornaya-patriot-br-241es-180201241-product/	IN_STOCK	1435670
562	Дрель-шуруповерт Patriot BR 241ES-h (180201246)	265	\N	_thumb_180x140xin_upload_iblock_8d6_1435671_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumulyatornaya-patriot-br-241es-h-udarnyy-180201246-product/	IN_STOCK	1435671
563	Электрорубанок Patriot PL822 (150301105)	214	\N	_thumb_180x140xin_upload_iblock_abd_1436156_1.jpg	https://mile.by/catalog/elektrorubanki/rubanok-elektricheskiy-patriot-pl822-150301105-product/	IN_STOCK	1436156
564	Торцовочная пила PATRIOT MS 215 (190301865)	535	\N	_thumb_180x140xin_upload_iblock_4a2_1436157_1.jpg	https://mile.by/catalog/tortsovochnye-pily/pila-tortsovochnaya-patriot-ms-215-190301865-product/	IN_STOCK	1436157
565	Угловая шлифмашина DeWalt DWE4119-KS	220	\N	_thumb_180x140xin_upload_iblock_dc9_1441713_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaya-shlifmashina-dwe4119-ks-950vt-125-mm-product/	IN_STOCK	1441713
566	Циркулярная пила Patriot CS 195	275	\N	_thumb_180x140xin_upload_iblock_c7a_1436159_1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/pila-tsirkulyarnaya-patriot-cs-195-product/	IN_STOCK	1436159
567	Пила сабельная Patriot RS 808	195	\N	_thumb_180x140xin_upload_iblock_83a_1436161_1.jpg	https://mile.by/catalog/elektronozhovki/pila-sabelnaya-setevaya-patriot-rs-808-product/	IN_STOCK	1436161
568	Ударная дрель-шуруповерт Bosch GSB 12V-30 Professional 0.601.9G9.100 (с 2-мя АКБ, кейс)	345	\N	_thumb_180x140xin_upload_iblock_abc_1445846_1.jpg	https://mile.by/catalog/dreli-shurupoverty/akk-udarn-drel-shurupovert-li-ion-12-v-gsb-12v-30-0-601-9g9-100-product/	IN_STOCK	1445846
569	Дрель-шуруповерт Bosch EasyDrill 1200 0.603.9D3.001 (с 1-им АКБ, кейс)	239	\N	_thumb_180x140xin_upload_iblock_b81_1445850_1.jpg	https://mile.by/catalog/dreli-shurupoverty/shurupovert-akkumulyatornyy-easydrill-1200-0-603-9d3-001-product/	IN_STOCK	1445850
570	Торцовочная пила Watt WMS-2114 (20.014.210.00)	260	\N	_thumb_180x140xin_upload_iblock_722_1449495_1.jpg	https://mile.by/catalog/tortsovochnye-pily/tortsovochnaya-pila-watt-wms-2114-20-014-210-00-product/	IN_STOCK	1449495
571	Торцовочная пила WATT WMS-2114SL (20.014.210.10)	436	\N	_thumb_180x140xin_upload_iblock_4eb_1449496_1.jpg	https://mile.by/catalog/tortsovochnye-pily/tortsovochnaya-pila-watt-wms-2114sl-20-014-210-10-product/	IN_STOCK	1449496
572	Ударная дрель Daewoo DAD 850	127	\N	_thumb_180x140xin_upload_iblock_720_1449927_1.jpg	https://mile.by/catalog/dreli-udarnye/drel-udarnaya-daewoo-dad-850-dad-850-product/	IN_STOCK	1449927
573	Перфоратор Daewoo DAH 920	244	\N	_thumb_180x140xin_upload_iblock_396_1449931_1.jpg	https://mile.by/catalog/perforatory_/perforator-daewoo-dah-920-dah-920-product/	IN_STOCK	1449931
574	Промышленный фен Daewoo DAF 2200	121	\N	_thumb_180x140xin_upload_iblock_442_1449935_1.jpg	https://mile.by/catalog/stroitelnye-feny/fen-stroitelnyy-termovozdukhoduvka-daewoo-daf-2200-daf-2200-product/	IN_STOCK	1449935
575	Угловая шлифмашина Daewoo DAG 1250-125	161	\N	_thumb_180x140xin_upload_iblock_41f_1449937_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/ugloshlifmashina-daewoo-dag-1250-125-dag-1250-125-product/	IN_STOCK	1449937
604	Безударная дрель Watt WSM-1050 (2.105.013.00)	168	\N	_thumb_180x140xin_upload_iblock_e80_1475569_1.jpg	https://mile.by/catalog/dreli-bezudarnye/drel-watt-wsm-1050-2-105-013-00-product/	IN_STOCK	1475569
576	Угловая шлифмашина Daewoo DAG 850-125	123	\N	_thumb_180x140xin_upload_iblock_5be_1449938_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/ugloshlifmashina-daewoo-dag-850-125-dag-850-125-product/	IN_STOCK	1449938
577	Дрель-шуруповерт Daewoo DAA 1620Li	193	\N	_thumb_180x140xin_upload_iblock_bb8_1449942_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumulyatornaya-daewoo-daa-1620li-daa-1620li-product/	IN_STOCK	1449942
578	Дрель-шуруповерт Daewoo DAA 2120Li	232	\N	_thumb_180x140xin_upload_iblock_762_1449943_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumulyatornaya-daewoo-daa-2120li-daa-2120li-product/	IN_STOCK	1449943
579	Перфоратор Bosch GBH 180-LI Professional (0.611.911.122)	576	\N	_thumb_180x140xin_upload_iblock_7b2_1456179_1.jpg	https://mile.by/catalog/perforatory_/perforator-akkumulyatornyy-gbh-180-li-0-611-911-122-product/	IN_STOCK	1456179
580	Ударная дрель WORTEX DS 1611 (DS161100029)	147	\N	_thumb_180x140xin_upload_iblock_7f2_1456735_1.jpg	https://mile.by/catalog/dreli-udarnye/drel-udarnaya-wortex-ds-1611-v-kor-art-ds161100029-product/	IN_STOCK	1456735
581	Ножницы Wortex NB 1660 (NB1660M0018)	322	\N	_thumb_180x140xin_upload_iblock_2e7_1456736_1.jpg	https://mile.by/catalog/elektronozhovki/nozhnitsy-vysechnye-wortex-nb-1660-v-chem-art-nb1660m0018-product/	IN_STOCK	1456736
582	Перфоратор WORTEX RH 3231-1 (RH323111129)	311	\N	_thumb_180x140xin_upload_iblock_5a6_1456738_1.jpg	https://mile.by/catalog/perforatory_/perforator-wortex-rh-3231-1-v-chem-2-zubila-3-sverla-art-rh323111129-product/	IN_STOCK	1456738
583	Перфоратор WORTEX RH 3239 F (RH3239F1129)	389	\N	_thumb_180x140xin_upload_iblock_29d_1456739_1.jpg	https://mile.by/catalog/perforatory_/perforator-wortex-rh-3239-f-v-chem-2-zubila-3-sverla-art-rh3239f1129-product/	IN_STOCK	1456739
584	Дрель-шуруповерт Wortex DR 1025 (DR102500011)	117	\N	_thumb_180x140xin_upload_iblock_f3d_1456741_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-wortex-dr-1025-v-kor-art-dr102500011-product/	IN_STOCK	1456741
585	Угловая шлифмашина Wortex AG 1512 E (AG1512E0029)	183	\N	_thumb_180x140xin_upload_iblock_765_1456742_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/odnoruchnaya-ugloshlifmashina-wortex-ag-1512-e-v-kor-art-ag1512e0029-product/	IN_STOCK	1456742
586	Промышленный фен WORTEX HG 6020 (HG602000011)	84	\N	_thumb_180x140xin_upload_iblock_80b_1456744_1.jpg	https://mile.by/catalog/stroitelnye-feny/termovozdukhoduvka-wortex-hg-6020-v-kor-nabor-sopl-art-hg602000011-product/	IN_STOCK	1456744
587	Гравер Wortex MG 3214 E (MG3214E0011)	113	\N	_thumb_180x140xin_upload_iblock_d05_1457380_1.jpg	https://mile.by/catalog/gravery/graver-elektricheskiy-wortex-mg-3214-e-v-chem-aksessuary-art-mg3214e0011-product/	IN_STOCK	1457380
588	Электрорубанок Molot MPL 1506 (MPL150600029)	116	\N	_thumb_180x140xin_upload_iblock_57d_1457386_1.jpg	https://mile.by/catalog/elektrorubanki/rubanok-elektricheskiy-molot-mpl-1506-v-kor-art-mpl150600029-product/	IN_STOCK	1457386
589	Термовоздуходувка MOLOT MHG 6020 MHG602000011	78	\N	_thumb_180x140xin_upload_iblock_778_1457387-1.jpg	https://mile.by/catalog/stroitelnye-feny/termovozdukhoduvka-molot-mhg-6020-v-kor-nabor-sopl-art-mhg602000011-product/	IN_STOCK	1457387
590	Эксцентриковая шлифмашина Molot MRS 1225 (MRS122500011)	104	\N	_thumb_180x140xin_upload_iblock_893_1457389-1.jpg	https://mile.by/catalog/ekstsentrikovye-shlifovalnye-mashiny/ekstsentrikovaya-shlifmashina-molot-mrs-1225-v-kor-art-mrs122500011-product/	IN_STOCK	1457389
591	Дрель-шуруповерт Wortex BD 1815 Dli (BLD1815DLi00029)	275	\N	_thumb_180x140xin_upload_iblock_266_1454805_1.jpg	https://mile.by/catalog/dreli-shurupoverty/akkum-drel-shurupovert-wortex-bd-1815-dli-v-chem-art-bld1815dli00029-product/	IN_STOCK	1454805
592	Дрель-шуруповерт Patriot BR 101ES	145	\N	_thumb_180x140xin_upload_iblock_848_1460140_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumulyatornaya-patriot-br-101es-180201301-product/	IN_STOCK	1460140
593	Дрель-шуруповерт Patriot FS 306	130	\N	_thumb_180x140xin_upload_iblock_d50_1460141_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-setevaya-patriot-fs-306-120301402-product/	IN_STOCK	1460141
594	Угловая шлифмашина, 125 мм, 1010 Вт, 11000 об./мин., DWE4205-KS	0	\N	_thumb_180x140xin_image_nopic.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaya-shlifmashina-125-mm-1010-vt-11000-ob-min-dwe4205-ks-product/	OUT_OF_STOCK	1416017
595	Эксцентриковая шлифмашина Wortex RS 1235 E (RS1235E01319)	0	\N	_thumb_180x140xin_upload_iblock_0ef_1461163_1.jpg	https://mile.by/catalog/ekstsentrikovye-shlifovalnye-mashiny/ekstsentrikovaya-shlifmashina-wortex-rs-1235-e-v-kor-art-rs1235e01319-product/	OUT_OF_STOCK	1461163
596	Дрель-шуруповерт PATRIOT BR 117Li (180301117)	144	\N	_thumb_180x140xin_upload_iblock_420_1466054_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumulyatornaya-patriot-br-117li-dve-batarei-li-ion-12v-2-0-ach-180301117-product/	IN_STOCK	1466054
597	Рубанок электрический Wortex PL 2007 (PL200700022)	167	\N	_thumb_180x140xin_upload_iblock_9dc_1401315_1.jpg	https://mile.by/catalog/elektrorubanki/rubanok-elektricheskiy-wortex-pl-2007-v-kor-art-pl200700022-product/	IN_STOCK	1401315
598	Сабельная пила Wortex SR 1508 E (арт. SR1508E0025)	175	\N	_thumb_180x140xin_upload_iblock_8bc_1451897_1.jpg	https://mile.by/catalog/elektronozhovki/sabelnaya-pila-wortex-sr-1508-e-v-kor-1-pilnoe-polotno-po-derevu-art-sr1508e0025-product/	IN_STOCK	1451897
599	Электролобзик LS 550	109	\N	_thumb_180x140xin_upload_iblock_18d_1469452_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/lobzik-patriot-ls-550-190301790-product/	IN_STOCK	1469452
600	Ударная дрель Wortex DS 1306-2 (DS130620019)	99	\N	_thumb_180x140xin_upload_iblock_aed_1461159_1.jpg	https://mile.by/catalog/dreli-udarnye/drel-udarnaya-wortex-ds-1306-2-v-kor-art-ds130620019-product/	IN_STOCK	1461159
601	Угловая шлифмашина DWT WS13-180 T	201	\N	_thumb_180x140xin_upload_iblock_d9c_1472344_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/shlifmashina-uglovaya-ws13-180-t-product/	IN_STOCK	1472344
602	Торцовочная пила Wortex MS 2520-1 LMO (MS25201LMO029)	635	\N	_thumb_180x140xin_upload_iblock_5f1_1473846_1.jpg	https://mile.by/catalog/tortsovochnye-pily/tortsovochnaya-pila-wortex-ms-2520-1-lmo-v-kor-art-ms25201lmo029-product/	IN_STOCK	1473846
603	Дрель-шуруповерт Patriot BR 119Li (180301119)	157	\N	_thumb_180x140xin_upload_iblock_603_1475440_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumulyatornaya-patriot-br-119li-180301119-product/	IN_STOCK	1475440
605	Дрель-шуруповерт Edon CF-1201	0	\N	_thumb_180x140xin_upload_iblock_b50_1475573_1.jpg	https://mile.by/catalog/dreli-shurupoverty/akk-drel-edon-cf-1201-nabor-product/	OUT_OF_STOCK	1475573
606	Дрель-шуруповерт Edon AD-14C	164	\N	_thumb_180x140xin_upload_iblock_8ef_1475575_1.jpg	https://mile.by/catalog/dreli-shurupoverty/akk-drel-edon-ad-14c-product/	IN_STOCK	1475575
607	Угловая шлифмашина Edon AG-125/800	79	\N	_thumb_180x140xin_upload_iblock_cf4_1475577_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/mashina-shlifovalnaya-uglovaya-edonag-125-800-product/	IN_STOCK	1475577
608	Дрель-шуруповерт Spec DF347PRO-1	126	\N	_thumb_180x140xin_upload_iblock_b81_1475639_1.jpg	https://mile.by/catalog/dreli-shurupoverty/akkumulyatornaya-drel-shurupovert-spec-df347pro-1-product/	IN_STOCK	1475639
609	Мультифункциональная шлифмашина Wortex SM 2830 E (SM2830E002018)	129	\N	_thumb_180x140xin_upload_iblock_d01_1476994_1.jpg	https://mile.by/catalog/multifunktsionalnaye-shlifovalnye-mashiny/mnogofunktsionalnyy-instrument-renovator-wortex-sm-2830-e-v-kor-nabor-osnastki-art-sm2830e002018-product/	IN_STOCK	1476994
610	Промышленный фен Watt WHP-2050 (7.020.005.00)	98	\N	_thumb_180x140xin_upload_iblock_ab3_1473996_1.jpg	https://mile.by/catalog/stroitelnye-feny/fen-promyshlennyy-watt-whp-2050-7-020-005-00-product/	IN_STOCK	1473996
611	Угловая шлифмашина DeWalt DWE4257-KS	0	\N	_thumb_180x140xin_upload_iblock_ede_1402236_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaya-shlifmashina-dewalt-dwe4257-ks-product/	OUT_OF_STOCK	1402236
612	Дрель-шуруповерт Wortex BD 1825-1 Dli (1BBD001A29)	225	\N	_thumb_180x140xin_upload_iblock_85a_1461161-1.jpg	https://mile.by/catalog/dreli-shurupoverty/akkum-drel-shurupovert-wortex-bd-1825-1-dli-v-kor-all1-art-1bbd001a29-product/	IN_STOCK	1461161
613	Виброшлифмашина Wortex SS 1920 (SS19200019)	145	\N	_thumb_180x140xin_upload_iblock_b12_1479083-1.jpg	https://mile.by/catalog/vibratsionnye-shlifovalnye-mashiny/vibroshlifmashina-wortex-ss-1920-v-kor-nabor-nasadok-art-ss19200019-product/	IN_STOCK	1479083
614	Дрель-шуруповерт Bort BSM-250X (91272584)	0	\N	_thumb_180x140xin_upload_iblock_a07_1481996-1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-bort-bsm-250x-91272584-product/	OUT_OF_STOCK	1481996
615	Циркулярная пила Wortex CS 1612 (CS161200019)	189	\N	_thumb_180x140xin_upload_iblock_d2d_1471902_1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/tsirkulyarnaya-pila-wortex-cs-1612-v-kor-art-cs161200019-product/	IN_STOCK	1471902
616	Перфоратор Molot MRH 2428 (MRH242800027)	189	\N	_thumb_180x140xin_upload_iblock_45f_1469835_1.jpg	https://mile.by/catalog/perforatory_/perforator-molot-mrh-2428-v-chem-2-zubila-3-sverla-art-mrh242800027-product/	IN_STOCK	1469835
617	Лобзик электрический Wortex JS 6507 (JS650700025)	133	\N	_thumb_180x140xin_upload_iblock_f63_1476582_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/lobzik-elektricheskiy-wortex-js-6507-v-kor-art-js650700025-product/	IN_STOCK	1476582
618	Дрель-миксер Wortex DM 1311 (арт.DM131100019)	189	\N	_thumb_180x140xin_upload_iblock_469_1483846_1.jpg	https://mile.by/catalog/miksery-stroitelnye/mikser-drel-wortex-dm-1311-art-dm131100019-product/	IN_STOCK	1483846
619	Промышленный фен WATT WHP-2060 7.020.006.00	128	\N	_thumb_180x140xin_upload_iblock_81a_1473997_1.jpg	https://mile.by/catalog/stroitelnye-feny/fen-promyshlennyy-watt-whp-2060-7-020-006-00-product/	IN_STOCK	1473997
620	Дрель-шуруповерт Wortex BD 1220-1 DLi BD12201DLi1029	245	\N	_thumb_180x140xin_upload_iblock_912_1469830_1.jpg	https://mile.by/catalog/dreli-shurupoverty/akkum-drel-shurupovert-wortex-bd-1220-1-dli-v-chem-art-bd12201dli1029-product/	IN_STOCK	1469830
621	Электролобзик DWT STS05-55 DV	137	\N	_thumb_180x140xin_upload_iblock_473_1456147-1.jpg	https://mile.by/catalog/lobziki-elektricheskie/elektrolobzik-sts05-55-dv-product/	IN_STOCK	1456147
622	Дрель-шуруповерт DWT ABS-12 L-2 BMC	177	\N	_thumb_180x140xin_upload_iblock_1df_1472339_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-akkumulyatornaya-abs-12-l-2-bmc-product/	IN_STOCK	1472339
623	Краскопульт электрический DWT ESP05-200 T	187	\N	_thumb_180x140xin_upload_iblock_762_1483884_1.jpg	https://mile.by/catalog/kraskopulty-elektricheskie/kraskopult-elektricheskiy-esp05-200-t-dwt-product/	IN_STOCK	1483884
624	Торцовочная пила Wortex MS 2520-2 LMO (MS25202LMO0203)	799	\N	_thumb_180x140xin_upload_iblock_982_1485324_1.jpg	https://mile.by/catalog/tortsovochnye-pily/tortsovochnaya-pila-wortex-ms-2520-2-lmo-ms25202lmo0203-product/	IN_STOCK	1485324
625	Дрель-шуруповерт Molot MDR 1024 (MDR102400025)	84	\N	_thumb_180x140xin_upload_iblock_554_1469836-1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-molot-mdr-1024-v-kor-art-mdr102400025-product/	IN_STOCK	1469836
626	Набор инструмента Makita DLX2278 (перфоратор DHR171Z, ударная дрель-шуруповерт DHP484Z)	426	\N	_thumb_180x140xin_upload_iblock_2cd_1486481-1.jpg	https://mile.by/catalog/dreli-udarnye/nabor-instrumenta-makita-dlx2278-perforator-dhr171z-udarnaya-drel-shurupovert-dhp484z-product/	IN_STOCK	1486481
627	Угловая шлифмашина Makita MT M9508	119	\N	_thumb_180x140xin_upload_iblock_e29_1486480-1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaya-shlifmashina-makita-mt-m9508-product/	IN_STOCK	1486480
628	Электроотвертка Watt WAS-3.6 Li (1.036.019.00)	59	\N	_thumb_180x140xin_upload_iblock_def_1451887-1.jpg	https://mile.by/catalog/elektrootvertki-shurupoverty-i-gaykoverty/otvertka-akkumulyatornaya-watt-was-3-6-li-1-036-019-00-product/	IN_STOCK	1451887
629	Дрель-шуруповерт Wortex BD 2025 Dli (BD2025DLi1029)	299	\N	_thumb_180x140xin_upload_iblock_bc5_1469831_1.jpg	https://mile.by/catalog/dreli-shurupoverty/akkum-drel-shurupovert-wortex-bd-2025-dli-v-chem-art-bd2025dli1029-product/	IN_STOCK	1469831
630	Циркулярная пила Makita MT M5802	277	\N	_thumb_180x140xin_upload_iblock_b20_1487720_1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/pila-tsirkulyarnaya-m5802-m-5802-makita-mt-product/	IN_STOCK	1487720
631	Шуруповерт Metabo PowerMaxx BS Basic 600984500	303	\N	_thumb_180x140xin_upload_iblock_88c_1477493_1.jpg	https://mile.by/catalog/dreli-shurupoverty/shurupovert-metabo-powermaxx-bs-basic-600984500-product/	IN_STOCK	1477493
632	Дрель-шуруповерт Победа ДА-12П/1 LI	64	\N	_thumb_180x140xin_upload_iblock_58e_1489784-1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumulyatornaya-pobeda-da-12p-1-li-product/	IN_STOCK	1489784
633	Дрель-шуруповерт Patriot THE ONE BR 115Li (180201115)	159	\N	_thumb_180x140xin_upload_iblock_e8e_1469446_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-patriot-the-one-br-115li-180201115-product/	IN_STOCK	1469446
634	Дрель-шуруповерт Black & Decker BCD003C2K-QW	279	\N	_thumb_180x140xin_upload_iblock_821_1480439_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-black-decker-bcd003c2k-qw-product/	IN_STOCK	1480439
635	Двуручная углошлифмашина Wortex AG 2326-2 (AG2326200029)	245	\N	_thumb_180x140xin_upload_iblock_43c_1477192_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/dvuruchnaya-ugloshlifmashina-wortex-ag-2326-2-ag2326200029-product/	IN_STOCK	1477192
636	Электролобзик Einhell TC-JS 80 (4321116)	151	\N	_thumb_180x140xin_upload_iblock_8ad_1311904_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/elektrolobzik-einhell-tc-js-80-4321116-product/	IN_STOCK	1311904
637	Краскораспылитель Wagner Control pro 250M HEA (2371053)	1276	\N	_thumb_180x140xin_upload_iblock_c43_1423408_1.jpg	https://mile.by/catalog/kraskopulty-elektricheskie/kraskoraspylitel-elektricheskiy-control-pro-250m-hea-2371053--product/	IN_STOCK	1423408
638	Отбойный молоток Bosch GSH 500 (0.611.338.720)	766	\N	_thumb_180x140xin_upload_iblock_de2_1464978_1.jpg	https://mile.by/catalog/otboynye-molotki_/otboynyy-molotok-gsh-500-0-611-338-720-product/	IN_STOCK	1464978
639	Фрезер Molot MMM 5012 (MMM501200019)	151	\N	_thumb_180x140xin_upload_iblock_659_1469834_1.jpg	https://mile.by/catalog/frezery/frezer-molot-mmm-5012-v-kor-art-mmm501200019-product/	IN_STOCK	1469834
640	Электрорубанок Patriot PL 850 (150301106)	183	\N	_thumb_180x140xin_upload_iblock_6f9_1469443_1.jpg	https://mile.by/catalog/elektrorubanki/rubanok-elektricheskiy-patriot-pl-850-150301106-product/	IN_STOCK	1469443
641	Перфоратор Patriot RH 231 (140301231)	152	\N	_thumb_180x140xin_upload_iblock_d7b_1469445_1.jpg	https://mile.by/catalog/perforatory_/perforator-patriot-rh-231-140301231-product/	IN_STOCK	1469445
642	Угловая шлифмашина Patriot AG130 (110301130)	169	\N	_thumb_180x140xin_upload_iblock_e2e_1469449_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/mashina-ugloshlifovalnaya-patriot-ag130-110301130-product/	IN_STOCK	1469449
643	Лобзик Patriot LS 900 (190301790)	159	\N	_thumb_180x140xin_upload_iblock_5e2_1469453_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/lobzik-patriot-ls-900-190301790-product/	IN_STOCK	1469453
644	Торцовочная пила Stanley SM18-RU	793	\N	_thumb_180x140xin_upload_iblock_e8d_1478298_1.jpg	https://mile.by/catalog/tortsovochnye-pily/tortsovochnaya-pila-s-protyazhkoy-stanley-sm18-ru-product/	IN_STOCK	1478298
645	Перфоратор Bosch GBH 18V-26 (0.615.990.M3N)	1286	\N	_thumb_180x140xin_upload_iblock_53d_1483342_1.jpg	https://mile.by/catalog/perforatory_/perforator-akkum-gbh-18v-26-0-615-990-m3n-product/	IN_STOCK	1483342
646	Торцовочная пила Einhell TC-SM 2131/1 Dual (4300390)	596	\N	_thumb_180x140xin_upload_iblock_3b0_1484037_1.jpg	https://mile.by/catalog/tortsovochnye-pily/tortsovochnaya-pila-einhell-tc-sm-2131-1-dual-4300390-product/	IN_STOCK	1484037
647	Торцовочная пила Einhell TC-SM 2534/1 Dual (4300395)	862	\N	_thumb_180x140xin_upload_iblock_4e3_1481857_1.jpg	https://mile.by/catalog/tortsovochnye-pily/tortsovochnaya-pila-einhell-tc-sm-2534-1-dual-4300395-product/	IN_STOCK	1481857
648	Перфоратор Makita M8701	274	\N	_thumb_180x140xin_upload_iblock_540_1487999-1.jpg	https://mile.by/catalog/perforatory_/perforator-makita-m8701-sds-product/	IN_STOCK	1487999
649	Пила сабельная Makita M4501	267	\N	_thumb_180x140xin_upload_iblock_d22_1488000-1.jpg	https://mile.by/catalog/elektronozhovki/pila-sabelnaya-makita-m4501-product/	IN_STOCK	1488000
650	Лобзик Makita M4301	142	\N	_thumb_180x140xin_upload_iblock_1c4_1490785-1.jpg	https://mile.by/catalog/lobziki-elektricheskie/lobzik-makita-m4301-product/	IN_STOCK	1490785
651	Дрель ударная Makita M0801	120	\N	_thumb_180x140xin_upload_iblock_a86_1490786-1.jpg	https://mile.by/catalog/dreli-udarnye/drel-udarnaya-makita-m0801-product/	IN_STOCK	1490786
652	Фрезер Makita M3601	256	\N	_thumb_180x140xin_upload_iblock_e30_1490787-1.jpg	https://mile.by/catalog/frezery/frezer-makita-m3601-product/	IN_STOCK	1490787
653	Углошлифмашина Makita M9003	239	\N	_thumb_180x140xin_upload_iblock_c7d_1490788-1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/ugloshlifmashina-makita-m9003-product/	IN_STOCK	1490788
654	Набор инструментов Makita DLX2271 (перфоратор DHR171, шуруповерт DDF484)	426	\N	_thumb_180x140xin_upload_iblock_644_1490790-1.jpg	https://mile.by/catalog/perforatory_/nabor-instrumentov-makita-dlx2271-perforator-dhr171-shurupovert-ddf484-b-akkum-product/	IN_STOCK	1490790
655	Дрель ударная Makita M8100	139	\N	_thumb_180x140xin_upload_iblock_2be_1491067-1.jpg	https://mile.by/catalog/dreli-udarnye/drel-udarnaya-710vt-zvp-13mm-makita-m8100-product/	IN_STOCK	1491067
656	Дрель ударная Makita M0801K	144	\N	_thumb_180x140xin_upload_iblock_ea6_1491071-1.jpg	https://mile.by/catalog/dreli-udarnye/drel-udarnaya-500vt-zvp-13mm-makita-m0801k-product/	IN_STOCK	1491071
657	Циркулярная пила Makita M5802	289	\N	_thumb_180x140xin_upload_iblock_27d_1491075-1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/tsirkulyarnaya-pila-1050vt-185mm-190mm-makita-m5802-product/	IN_STOCK	1491075
658	Фрезер Makita M3700	181	\N	_thumb_180x140xin_upload_iblock_1b0_1491076-1.jpg	https://mile.by/catalog/frezery/frezer-kromoch-530vt-35000ob-m-makita-m3700-product/	IN_STOCK	1491076
659	Пила монтажная Makita M2400	406	\N	_thumb_180x140xin_upload_iblock_cf9_1491078-1.jpg	https://mile.by/catalog/otreznye-pily-/pila-montazhnaya-2000vt-3800ob-m-makita-m2400-product/	IN_STOCK	1491078
660	Углошлифмашина Makita M0921	244	\N	_thumb_180x140xin_upload_iblock_559_1491080-1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/ugloshlifmashina-230mm-2200vt-korobka-makita-m0921-product/	IN_STOCK	1491080
661	Дрель ударная Makita M8101	177	\N	_thumb_180x140xin_upload_iblock_a4d_1491180-1.jpg	https://mile.by/catalog/dreli-udarnye/drel-udarnaya-710vt-zvp-13mm-makita-m8101-product/	IN_STOCK	1491180
662	Фен технический Patriot HG210 The One (170301313)	75	\N	_thumb_180x140xin_upload_iblock_ec5_1436160_1.jpg	https://mile.by/catalog/stroitelnye-feny/fen-tekhnicheskiy-patriot-hg210-the-one-170301313-product/	IN_STOCK	1436160
663	Фен строительный Daewoo DAF 2000	67	\N	_thumb_180x140xin_upload_iblock_9f2_1478098_1.jpg	https://mile.by/catalog/stroitelnye-feny/fen-stroitelnyy-termovozdukhoduvka-daewoo-daf-2000-product/	IN_STOCK	1478098
664	Эксцентриковая шлифмашина ДИОЛД МП-0,42	143	\N	_thumb_180x140xin_upload_iblock_0db_1054400_1.jpg	https://mile.by/catalog/ekstsentrikovye-shlifovalnye-mashiny/mashina-polirovalnaya-elektricheskaya-420vt-mp-0-42-product/	IN_STOCK	1054400
665	Эксцентриковая шлифмашина Интерскол ЭШМ-125/270Э	179	\N	_thumb_180x140xin_upload_iblock_997_1253801_1.jpg	https://mile.by/catalog/ekstsentrikovye-shlifovalnye-mashiny/shlifmashina-ekstsentrikovaya-eshm-125-270e-product/	IN_STOCK	1253801
666	Дрель-шуруповерт Интерскол ДШ-10/260Э	0	\N	_thumb_180x140xin_upload_iblock_62b_1253799_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-dsh-10-260e-product/	OUT_OF_STOCK	1253799
667	Гравер Dremel 8200-1/35 (F.013.820.0JG)	309	\N	_thumb_180x140xin_upload_iblock_72c_1310288_1.jpg	https://mile.by/catalog/gravery/graver-dremel-8200-1-35-f-013-820-0jg--product/	IN_STOCK	1310288
668	Торцовочная пила RYOBI RTMS 1800 (5133002152)	836	\N	_thumb_180x140xin_upload_iblock_fb8_1308359_1.jpg	https://mile.by/catalog/tortsovochnye-pily/pila-tortsovochnaya-ryobi-rtms-1800-5133002152--product/	IN_STOCK	1308359
669	Сабельная пила Makita JR3050T	0	\N	_thumb_180x140xin_upload_iblock_971_1368229_1.jpg	https://mile.by/catalog/elektronozhovki/sabelnaya-pila-makita-jr-3050-t-v-chem-2-pilnykh-polotna-jr3050t-product/	OUT_OF_STOCK	1368229
670	Фрезер MAKITA RP0900	396	\N	_thumb_180x140xin_upload_iblock_534_1368234_1.jpg	https://mile.by/catalog/frezery/frezer-makita-rp0900-900vt-rp0900-product/	IN_STOCK	1368234
671	Электролобзик Black & Decker KS501-XK	0	\N	_thumb_180x140xin_upload_iblock_3d3_1367722_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/lobzik-black-amp-decker-ks501-xk-product/	OUT_OF_STOCK	1367722
672	Дрель-шуруповерт Black&Decker ASD18KB-QW	428	\N	_thumb_180x140xin_upload_iblock_e55_1384677_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-black-decker-asd18kb-qw-product/	IN_STOCK	1384677
673	Циркулярная пила MAKITA 5008MG	497	\N	_thumb_180x140xin_upload_iblock_e07_1418491_1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/tsirkulyarnaya-pila-makita-5008-mg-v-kor-art-5008mg-product/	IN_STOCK	1418491
674	Перфоратор DeWalt D25133K-KS	0	\N	_thumb_180x140xin_upload_iblock_a66_1399693_2.jpg	https://mile.by/catalog/perforatory_/perforator-dewalt-d25133k-ks-product/	OUT_OF_STOCK	1399693
675	Станок деревообрабатывающий лобзиковый TC-SS 405 E NEW рез 57мм вылет 406мм, угол 45 4309040	356	\N	_thumb_180x140xin_upload_iblock_58d_1371709_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/elektrolobzik-einhell-tc-ss-405-e-product/	IN_STOCK	1371709
676	Шлифмашина эксцентр бытовая BOSCH PEX 300 AE	253	\N	_thumb_180x140xin_upload_iblock_f2e_1231153_1.jpg	https://mile.by/catalog/ekstsentrikovye-shlifovalnye-mashiny/ekstcentrikovaia-orbitalnaia-shlifmashina-bosch-pex-300-ae-06033a3001--product/	IN_STOCK	1231153
677	Машина плоскошлифовальная (ПШМ) PATRIOT OS 100	69	\N	_thumb_180x140xin_upload_iblock_5df_678_mileby_im_tovar.jpg	https://mile.by/catalog/vibratsionnye-shlifovalnye-mashiny/mashina-ploskoshlifovalnaya-pshm-patriot-os-100-product/	IN_STOCK	1411537
678	Машина плоскошлифовальная (ПШМ) PATRIOT OS 105	89	\N	_thumb_180x140xin_upload_iblock_38c_a9c_mileby_im_tovar.jpg	https://mile.by/catalog/vibratsionnye-shlifovalnye-mashiny/mashina-ploskoshlifovalnaya-pshm-patriot-os-105-product/	IN_STOCK	1411538
679	Ленточная шлифмашина WORTEX SB 7590 AE в кор., арт.SB7590AE01321	181	\N	_thumb_180x140xin_upload_iblock_80d_4d9_mileby_im_tovar.jpg	https://mile.by/catalog/lentochnye-shlifovalnye-mashiny/lentochnaya-shlifmashina-wortex-sb-7590-ae-v-kor-art-sb7590ae01321-product/	IN_STOCK	1397988
680	Ленточная шлифмашина TE-BS (RT-BS) 8540 E Einhell 4466230	291	\N	_thumb_180x140xin_upload_iblock_673_c87_mileby_im_tovar.jpg	https://mile.by/catalog/lentochnye-shlifovalnye-mashiny/lentochnaya-shlifmashina-te-bs-rt-bs-8540-e-einhell-4466230-product/	IN_STOCK	1087343
681	Дрель-миксер Stanley SDR1400	353	\N	_thumb_180x140xin_upload_iblock_ac5_1373792_1.jpg	https://mile.by/catalog/miksery-stroitelnye/drel-mikser-stanley-sdr1400-product/	IN_STOCK	1373792
682	Фен технический Bosch Universal Heat 600 (0.603.2A6.120)	131	\N	_thumb_180x140xin_upload_iblock_c6f_1400876_1.jpg	https://mile.by/catalog/stroitelnye-feny/fen-tekhnicheskiy-elektr-universalheat-600-0-603-2a6-120-product/	IN_STOCK	1400876
683	Лобзик Bosch GST 700 (0.601.2A7.020)	207	\N	_thumb_180x140xin_upload_iblock_86f_1399683_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/pila-lobzikovaya-gst-700-0-601-2a7-020-product/	IN_STOCK	1399683
684	Фен технический Bosch EasyHeat 500 (0.603.2A6.020)	99	\N	_thumb_180x140xin_upload_iblock_74d_1399686_1.jpg	https://mile.by/catalog/stroitelnye-feny/fen-tekhnicheskiy-elektr-easyheat-500-0-603-2a6-020-product/	IN_STOCK	1399686
685	4460642 Плоскошлифовальная машина Einhell TC-OS 1520/1	99	\N	_thumb_180x140xin_upload_iblock_9f1_95c_mileby_im_tovar.jpg	https://mile.by/catalog/vibratsionnye-shlifovalnye-mashiny/4460642-ploskoshlifovalnaya-mashina-einhell-tc-os-1520-1-product/	IN_STOCK	1402678
686	Плоскошлифовальная машина Black+Decker KA300-XK	78	\N	_thumb_180x140xin_upload_iblock_db9_eca_mileby_im_tovar.jpg	https://mile.by/catalog/vibratsionnye-shlifovalnye-mashiny/ploskoshlifovalnaya-mashina-black-decker-ka300-xk-product/	IN_STOCK	1405365
687	Вибрационная шлифмашина Stanley  SS28-RU	125	\N	_thumb_180x140xin_upload_iblock_9c1_a39_mileby_im_tovar.jpg	https://mile.by/catalog/vibratsionnye-shlifovalnye-mashiny/vibratsionnaya-shlifmashina-stanley-ss28-ru-product/	IN_STOCK	1405373
688	Шуруповерт аккумуляторный GSR 120 LI  0.601.9G8.000	226	\N	_thumb_180x140xin_upload_iblock_327_1426743_1.jpg	https://mile.by/catalog/dreli-shurupoverty/akk-shurupovert-gsr-120-li-0-601-9g8-000-product/	IN_STOCK	1426743
689	Циркулярная (дисковая) пила Black & Decker CS1550-QS	225	\N	_thumb_180x140xin_upload_iblock_a59_1415976_1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/diskovaya-pila-1500-vt-cs1550-qs-product/	IN_STOCK	1415976
690	Эксцентриковая шлифмашина Black & Decker KA198-QS	110	\N	_thumb_180x140xin_upload_iblock_5c8_1416020_1.jpg	https://mile.by/catalog/ekstsentrikovye-shlifovalnye-mashiny/ekstsentrikovaya-shlifmashina-260vt-125-mm-ka198-qs-product/	IN_STOCK	1416020
691	Ленточная шлифмашина, 600 Вт, шлиф. лента 75х533 мм, шлиф. поверхность 75х195 мм 210 м/мин, автом. регулировка ленты  KA86-QS	178	\N	_thumb_180x140xin_upload_iblock_735_e48_mileby_im_tovar.jpg	https://mile.by/catalog/lentochnye-shlifovalnye-mashiny/lentochnaya-shlifmashina-600-vt-shlif-lenta-75kh533-mm-shlif-poverkhnost-75kh195-mm-210-m-min-avtom--product/	IN_STOCK	1416021
692	Циркулярная (дисковая) пила Stanley SC16-RU	239	\N	_thumb_180x140xin_upload_iblock_942_1416023_1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/diskovaya-pila-1600vt-5500-ob-min-disk-o190-mm-posadka-20-ili-30-mm-maks-propila-65-mm-disk-3-9-kg-s-product/	IN_STOCK	1416023
693	Циркулярная (дисковая) пила Wortex HS 2865 (HS286501126)	306	\N	_thumb_180x140xin_upload_iblock_018_1421064_1.jpg	https://mile.by/catalog/tsirkulyarnye-pily/tsirkulyarnaya-pila-wortex-hs-2865-v-kor-3-pilnykh-diska-art-hs286501126-product/	IN_STOCK	1421064
694	Термофен Furno 500 WAGNER 2359352	131	\N	_thumb_180x140xin_upload_iblock_5e4_1429545_1.jpg	https://mile.by/catalog/kraskopulty-elektricheskie/termofen-furno-500-wagner-2359352-product/	IN_STOCK	1429545
695	Ударная дрель Black amp; Decker BEH710-QS	128	\N	_thumb_180x140xin_upload_iblock_541_1425936_1.jpg	https://mile.by/catalog/dreli-udarnye/udarnaya-drel-black-amp-decker-beh710-qs-product/	IN_STOCK	1425936
696	Электролобзик Einhell TC-JS 60/1 4321135	121	\N	_thumb_180x140xin_upload_iblock_d34_1443251_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/elektrolobzik-einhell-tc-js-60-1-4321135-product/	IN_STOCK	1443251
697	Эл. ударная дрель, BEH200-QS  500 Вт, 13 мм, БЗП	96	\N	_thumb_180x140xin_upload_iblock_87f_1441673_1.jpg	https://mile.by/catalog/dreli-udarnye/el-udarnaya-drel-beh200-qs-500-vt-13-mm-bzp-product/	IN_STOCK	1441673
698	Угловая шлифмашина, G850-RU  850 Вт, 125 мм	110	\N	_thumb_180x140xin_upload_iblock_91d_1441714_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaya-shlifmashina-g850-ru-850-vt-125-mm-product/	IN_STOCK	1441714
699	Брашировальная машина Patriot BS 909	320	\N	_thumb_180x140xin_upload_iblock_26a_1436162_1.jpg	https://mile.by/catalog/ekstsentrikovye-shlifovalnye-mashiny/brashirovalnaya-mashina-patriot-bs-909-product/	IN_STOCK	1436162
700	Лобзик Wortex JS 9008 LE (JS9008LE025)	135	\N	_thumb_180x140xin_upload_iblock_93b_1456743_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/lobzik-elektricheskiy-wortex-js-9008-le-v-kor-art-js9008le025-product/	IN_STOCK	1456743
701	Термовоздуходувка Wortex HG 6222 (HG622200011)	110	\N	_thumb_180x140xin_upload_iblock_21c_1456745_1.jpg	https://mile.by/catalog/stroitelnye-feny/termovozdukhoduvka-wortex-hg-6222-v-kor-nabor-sopl-art-hg622200011-product/	IN_STOCK	1456745
702	Дрель-шуруповерт Wortex BD 1815-1 DLi (BD18151DLi0029)	249	\N	_thumb_180x140xin_upload_iblock_ecf_1483845_1.jpg	https://mile.by/catalog/dreli-shurupoverty/akkum-drel-shurupovert-wortex-bd-1815-1-dli-v-kor-all1-art-bd18151dli0029-product/	IN_STOCK	1483845
703	Электролобзик Фиолент ПМ 4-700Э	0	\N	_thumb_180x140xin_upload_iblock_ee2_1294119_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/elektrolobzik-fiolent-pm-4-700e-product/	OUT_OF_STOCK	1294119
704	Дрель-шуруповерт Skil 2017LB (F0152017LB)	0	\N	_thumb_180x140xin_upload_iblock_cdc_1337034_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-akkumuliatornaia-skil-2017lb-f0152017lb--product/	OUT_OF_STOCK	1337034
705	Угловая шлифмашина Wortex AG 1208-1 (AG1208100019)	119	\N	_thumb_180x140xin_upload_iblock_b33_1421057_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/odnoruchnaya-ugloshlifmashina-wortex-ag-1208-1-v-kor-art-ag1208100019-product/	IN_STOCK	1421057
706	Перфоратор WORTEX RH 2427 (RH242700025)	210	\N	_thumb_180x140xin_upload_iblock_e6a_1421061_1.jpg	https://mile.by/catalog/perforatory_/perforator-wortex-rh-2427-v-kor-nabor-burov-art-rh242700025-product/	IN_STOCK	1421061
707	Дрель-шуруповерт ДИОЛД ЭШ-0.45	85	\N	_thumb_180x140xin_upload_iblock_7ba_1425383_1.jpg	https://mile.by/catalog/dreli-shurupoverty/elektricheskiy-shurupovert-diold-esh-0-45-product/	IN_STOCK	1425383
708	Угловая шлифовальная машина  "Yato", YT-82101 125мм  (1100Вт, 3000-12000 об/мин)	157	\N	_thumb_180x140xin_upload_iblock_181_1458141_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaya-shlifovalnaya-mashina-yato-yt-82101-125mm-1100vt-3000-12000-ob-min-product/	IN_STOCK	1458141
709	Шлифмашина угловая УШМ-125/900 900вт	130	\N	_thumb_180x140xin_upload_iblock_629_1058792_1.jpg	https://mile.by/catalog/ugloshlifovalnye-mashiny-bolgarki/uglovaia-shlifmashina-interskol-ushm-125-900-product/	IN_STOCK	1058792
710	Ударная дрель AEG SBE 750 RZ (4935442840)	0	\N	_thumb_180x140xin_upload_iblock_64a_1310238_1.jpg	https://mile.by/catalog/dreli-udarnye/udarnaia-drel-aeg-sbe-750-rz-4935442840--product/	OUT_OF_STOCK	1310238
711	Промышленный фен Bort BHG-1600-P (91271051)	56	\N	_thumb_180x140xin_upload_iblock_efd_1401551_1.jpg	https://mile.by/catalog/stroitelnye-feny/promyshlennyy-fen-bort-bhg-1600-p-91271051-product/	IN_STOCK	1401551
712	Дрель-шуруповерт Bort BAB-10.8X (91272560)	96	\N	_thumb_180x140xin_upload_iblock_193_1442083_1.jpg	https://mile.by/catalog/dreli-shurupoverty/drel-shurupovert-bort-bab-10-8x-91272560-product/	IN_STOCK	1442083
713	Ударная дрель WATT WSM-750 (2.750.013.10)	71	\N	_thumb_180x140xin_upload_iblock_12f_1460102_1.jpg	https://mile.by/catalog/dreli-udarnye/udarnaya-drel-watt-wsm-750-2-750-013-10-product/	IN_STOCK	1460102
714	Набор инструмента Makita DK0120 (перфоратор HR 2470, углошлифмашина MAKITA GA 5030)	404	\N	_thumb_180x140xin_upload_iblock_80d_1465086_1.jpg	https://mile.by/catalog/perforatory_/nabor-instrumenta-makita-dk-0120-perforator-makita-hr-2470-ugloshlifmashina-makita-ga-5030-art-dk012-product/	IN_STOCK	1465086
715	Электролобзик Bort BPS-710U-QL (93728045)	125	\N	_thumb_180x140xin_upload_iblock_437_1473848_1.jpg	https://mile.by/catalog/lobziki-elektricheskie/elektrolobzik-bort-bps-710u-ql-93728045-product/	IN_STOCK	1473848
\.


--
-- Data for Name: shop_purchase; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.shop_purchase (id, count, product_id, user_id, created_at) FROM stdin;
1	1	1	2	2022-02-23 21:17:11.456477+03
2	1	1	3	2022-02-23 21:17:11.456477+03
3	1	2	1	2022-02-23 21:17:11.456477+03
4	1	2	3	2022-02-23 21:17:11.456477+03
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 53, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 6, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 59, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 30, true);


--
-- Name: homework_message_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.homework_message_id_seq', 1, false);


--
-- Name: posts_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.posts_post_id_seq', 22, true);


--
-- Name: posts_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.posts_tags_id_seq', 1, false);


--
-- Name: posts_tags_posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.posts_tags_posts_id_seq', 1, false);


--
-- Name: shop_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.shop_product_id_seq', 715, true);


--
-- Name: shop_purchase_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.shop_purchase_id_seq', 4, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: authtoken_token authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- Name: authtoken_token authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: homework_message homework_message_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.homework_message
    ADD CONSTRAINT homework_message_pkey PRIMARY KEY (id);


--
-- Name: posts_post posts_post_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.posts_post
    ADD CONSTRAINT posts_post_pkey PRIMARY KEY (id);


--
-- Name: posts_tags posts_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.posts_tags
    ADD CONSTRAINT posts_tags_pkey PRIMARY KEY (id);


--
-- Name: posts_tags_posts posts_tags_posts_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.posts_tags_posts
    ADD CONSTRAINT posts_tags_posts_pkey PRIMARY KEY (id);


--
-- Name: posts_tags_posts posts_tags_posts_tags_id_post_id_d87812b5_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.posts_tags_posts
    ADD CONSTRAINT posts_tags_posts_tags_id_post_id_d87812b5_uniq UNIQUE (tags_id, post_id);


--
-- Name: shop_product shop_product_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.shop_product
    ADD CONSTRAINT shop_product_pkey PRIMARY KEY (id);


--
-- Name: shop_purchase shop_purchase_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.shop_purchase
    ADD CONSTRAINT shop_purchase_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: homework_message_author_id_719646d9; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX homework_message_author_id_719646d9 ON public.homework_message USING btree (author_id);


--
-- Name: homework_message_created_at_3170493d; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX homework_message_created_at_3170493d ON public.homework_message USING btree (created_at);


--
-- Name: posts_post_author_id_fe5487bf; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX posts_post_author_id_fe5487bf ON public.posts_post USING btree (author_id);


--
-- Name: posts_post_created_at_9fadc33a; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX posts_post_created_at_9fadc33a ON public.posts_post USING btree (created_at);


--
-- Name: posts_post_slug_6e9097e5; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX posts_post_slug_6e9097e5 ON public.posts_post USING btree (slug);


--
-- Name: posts_post_slug_6e9097e5_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX posts_post_slug_6e9097e5_like ON public.posts_post USING btree (slug varchar_pattern_ops);


--
-- Name: posts_tags_posts_post_id_641c2094; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX posts_tags_posts_post_id_641c2094 ON public.posts_tags_posts USING btree (post_id);


--
-- Name: posts_tags_posts_tags_id_cbd7c008; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX posts_tags_posts_tags_id_cbd7c008 ON public.posts_tags_posts USING btree (tags_id);


--
-- Name: shop_purchase_created_at_39fd6bb7; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX shop_purchase_created_at_39fd6bb7 ON public.shop_purchase USING btree (created_at);


--
-- Name: shop_purchase_product_id_c3b3d50e; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX shop_purchase_product_id_c3b3d50e ON public.shop_purchase USING btree (product_id);


--
-- Name: shop_purchase_user_id_8b481109; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX shop_purchase_user_id_8b481109 ON public.shop_purchase USING btree (user_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authtoken_token authtoken_token_user_id_35299eff_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: homework_message homework_message_author_id_719646d9_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.homework_message
    ADD CONSTRAINT homework_message_author_id_719646d9_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: posts_post posts_post_author_id_fe5487bf_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.posts_post
    ADD CONSTRAINT posts_post_author_id_fe5487bf_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: posts_tags_posts posts_tags_posts_post_id_641c2094_fk_posts_post_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.posts_tags_posts
    ADD CONSTRAINT posts_tags_posts_post_id_641c2094_fk_posts_post_id FOREIGN KEY (post_id) REFERENCES public.posts_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: posts_tags_posts posts_tags_posts_tags_id_cbd7c008_fk_posts_tags_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.posts_tags_posts
    ADD CONSTRAINT posts_tags_posts_tags_id_cbd7c008_fk_posts_tags_id FOREIGN KEY (tags_id) REFERENCES public.posts_tags(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shop_purchase shop_purchase_product_id_c3b3d50e_fk_shop_product_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.shop_purchase
    ADD CONSTRAINT shop_purchase_product_id_c3b3d50e_fk_shop_product_id FOREIGN KEY (product_id) REFERENCES public.shop_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shop_purchase shop_purchase_user_id_8b481109_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.shop_purchase
    ADD CONSTRAINT shop_purchase_user_id_8b481109_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

