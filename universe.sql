--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    description text,
    distance_from_earth numeric,
    age_in_millions_of_years integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    description text,
    distance_from_earth numeric,
    planet_id integer NOT NULL,
    age_in_millions_of_years integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    description text,
    distance_from_earth numeric,
    star_id integer NOT NULL,
    age_in_millions_of_years integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    has_life boolean,
    is_spherical boolean,
    description text,
    distance_from_earth numeric,
    age_in_millions_of_years integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: table_relations; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.table_relations (
    star_id integer,
    galaxy_id integer,
    planet_id integer,
    moon_id integer,
    name character varying(30) NOT NULL,
    table_relations_id integer NOT NULL
);


ALTER TABLE public.table_relations OWNER TO freecodecamp;

--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'earth galaxy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'galaxy_2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'galaxy_3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'galaxy_4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'galaxy_5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'galaxy_6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'galaxy_7', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'galaxy_8', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'galaxy_9', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (10, 'galaxy_10', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (11, 'galaxy_11', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (12, 'galaxy_12', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'e_moon', NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (2, 'm_moon', NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (3, 'l_moon', NULL, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.moon VALUES (4, 'toad_moon', NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (5, 'g_moon', NULL, NULL, NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (6, 'b_moon', NULL, NULL, NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (7, 'tom_moon', NULL, NULL, NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (8, 'je_moon', NULL, NULL, NULL, NULL, 8, NULL);
INSERT INTO public.moon VALUES (9, 'dex_moon', NULL, NULL, NULL, NULL, 9, NULL);
INSERT INTO public.moon VALUES (10, 'dee_moon', NULL, NULL, NULL, NULL, 10, NULL);
INSERT INTO public.moon VALUES (11, 'mo_moon', NULL, NULL, NULL, NULL, 11, NULL);
INSERT INTO public.moon VALUES (12, 'jo_moon', NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO public.moon VALUES (13, 'z_moon', NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO public.moon VALUES (14, 'y_moon', NULL, NULL, NULL, NULL, 14, NULL);
INSERT INTO public.moon VALUES (15, 'x_moon', NULL, NULL, NULL, NULL, 15, NULL);
INSERT INTO public.moon VALUES (16, 'w_moon', NULL, NULL, NULL, NULL, 16, NULL);
INSERT INTO public.moon VALUES (17, 'v_moon', NULL, NULL, NULL, NULL, 17, NULL);
INSERT INTO public.moon VALUES (18, 'u_moon', NULL, NULL, NULL, NULL, 18, NULL);
INSERT INTO public.moon VALUES (19, 't_moon', NULL, NULL, NULL, NULL, 19, NULL);
INSERT INTO public.moon VALUES (20, 's_moon', NULL, NULL, NULL, NULL, 20, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO public.planet VALUES (2, 'Mario_planet', NULL, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.planet VALUES (3, 'Luigi_planet', NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.planet VALUES (4, 'Toad_planet', NULL, NULL, NULL, NULL, 5, NULL);
INSERT INTO public.planet VALUES (5, 'Gator_planet', NULL, NULL, NULL, NULL, 6, NULL);
INSERT INTO public.planet VALUES (6, 'Bower_planet', NULL, NULL, NULL, NULL, 7, NULL);
INSERT INTO public.planet VALUES (7, 'Tom_planet', NULL, NULL, NULL, NULL, 8, NULL);
INSERT INTO public.planet VALUES (8, 'Jerry_planet', NULL, NULL, NULL, NULL, 9, NULL);
INSERT INTO public.planet VALUES (9, 'Dexter_planet', NULL, NULL, NULL, NULL, 10, NULL);
INSERT INTO public.planet VALUES (10, 'Deedee_planet', NULL, NULL, NULL, NULL, 11, NULL);
INSERT INTO public.planet VALUES (11, 'Mojo_planet', NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO public.planet VALUES (12, 'Johny_planet', NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO public.planet VALUES (13, 'Z_planet', NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO public.planet VALUES (14, 'Y_planet', NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO public.planet VALUES (15, 'X_planet', NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO public.planet VALUES (16, 'W_planet', NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO public.planet VALUES (17, 'V_planet', NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO public.planet VALUES (18, 'U_planet', NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO public.planet VALUES (19, 'T_planet', NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO public.planet VALUES (20, 'S_planet', NULL, NULL, NULL, NULL, 13, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Earth', 1, true, true, 'where humans live!', NULL, NULL);
INSERT INTO public.star VALUES (3, 'Mario_star', 2, true, false, 'where Mario''s team lives!', NULL, NULL);
INSERT INTO public.star VALUES (4, 'Luigi_star', 3, true, true, 'where Luigi''s team lives!', NULL, NULL);
INSERT INTO public.star VALUES (5, 'Toad_star', 4, true, true, 'where Toad''s team lives!', NULL, NULL);
INSERT INTO public.star VALUES (6, 'Gator_star', 5, true, false, 'where Gator''s team lives!', NULL, NULL);
INSERT INTO public.star VALUES (7, 'Bower_star', 6, true, false, 'where Bower''s team lives!', NULL, NULL);
INSERT INTO public.star VALUES (8, 'Tom_star', 7, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (9, 'Jerry_star', 8, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (10, 'Dexter_star', 9, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (11, 'Deedee_star', 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (12, 'Mojo_star', 11, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (13, 'Johny_star', 12, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: table_relations; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.table_relations VALUES (2, 1, NULL, NULL, 'Earth', 1);
INSERT INTO public.table_relations VALUES (3, 2, NULL, NULL, 'Mario_star', 2);
INSERT INTO public.table_relations VALUES (4, 3, NULL, NULL, 'Luigi_star', 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_name_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_constraint UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_constraint UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_constraint UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_constraint UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: table_relations table_relations_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_relations
    ADD CONSTRAINT table_relations_name UNIQUE (name);


--
-- Name: table_relations table_relations_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_relations
    ADD CONSTRAINT table_relations_pkey PRIMARY KEY (table_relations_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

