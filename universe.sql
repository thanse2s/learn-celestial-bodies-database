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
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    galaxy_type text
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
    age_in_millions_of_years integer,
    distance_from_planet numeric,
    planet_id integer
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
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    planet_types text,
    has_a_moon boolean,
    star_id integer
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
-- Name: satelit; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satelit (
    satelit_id integer NOT NULL,
    name character varying(30) NOT NULL,
    project_name character varying(30)
);


ALTER TABLE public.satelit OWNER TO freecodecamp;

--
-- Name: satelit_satelit_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satelit_satelit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satelit_satelit_id_seq OWNER TO freecodecamp;

--
-- Name: satelit_satelit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satelit_satelit_id_seq OWNED BY public.satelit.satelit_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    is_a_sun boolean,
    galaxy_id integer
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
-- Name: satelit satelit_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelit ALTER COLUMN satelit_id SET DEFAULT nextval('public.satelit_satelit_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Michlstrasse', 800, 0, 'small');
INSERT INTO public.galaxy VALUES (2, 'Andromedar', 800, 5000, 'medium');
INSERT INTO public.galaxy VALUES (3, 'Nebel', 1200, 15000, 'medium');
INSERT INTO public.galaxy VALUES (4, 'X-012', 1200, 15000, 'large');
INSERT INTO public.galaxy VALUES (5, 'X-013', 1200, 15000, 'large');
INSERT INTO public.galaxy VALUES (6, 'X-018', 1200, 15000, 'large');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Mond', 800, 20, 4);
INSERT INTO public.moon VALUES (2, 'IO', 800, 20, 7);
INSERT INTO public.moon VALUES (3, 'Europa', 800, 20, 7);
INSERT INTO public.moon VALUES (4, 'ILO', 800, 20, 7);
INSERT INTO public.moon VALUES (5, 'Atlas', 800, 20, 6);
INSERT INTO public.moon VALUES (6, 'Titan', 800, 20, 6);
INSERT INTO public.moon VALUES (7, 'Cerberus', 800, 20, 6);
INSERT INTO public.moon VALUES (8, 'Fluffy', 800, 20, 6);
INSERT INTO public.moon VALUES (9, 'Ares', 800, 20, 5);
INSERT INTO public.moon VALUES (10, 'Milo', 800, 20, 5);
INSERT INTO public.moon VALUES (11, 'Falcon', 800, 20, 5);
INSERT INTO public.moon VALUES (12, 'Griffen', 800, 20, 5);
INSERT INTO public.moon VALUES (13, 'Tarnos', 800, 20, 5);
INSERT INTO public.moon VALUES (14, 'Thor', 800, 20, 5);
INSERT INTO public.moon VALUES (15, 'Groot', 800, 20, 5);
INSERT INTO public.moon VALUES (16, 'Igor', 800, 20, 2);
INSERT INTO public.moon VALUES (17, 'Marno', 800, 20, 3);
INSERT INTO public.moon VALUES (18, 'Marna', 800, 20, 3);
INSERT INTO public.moon VALUES (19, 'Larna', 800, 20, 3);
INSERT INTO public.moon VALUES (20, 'Karna', 800, 20, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Merkur', 800, 100, 'gas', false, 2);
INSERT INTO public.planet VALUES (2, 'Venus', 800, 50, 'gas', false, 3);
INSERT INTO public.planet VALUES (3, 'Erde', 800, 0, 'earth', true, 4);
INSERT INTO public.planet VALUES (4, 'Mars', 800, 50, 'planet', true, 5);
INSERT INTO public.planet VALUES (5, 'Juptier', 800, 100, 'planet', true, 6);
INSERT INTO public.planet VALUES (6, 'Saturn', 800, 150, 'giant_planet', true, 7);
INSERT INTO public.planet VALUES (7, 'Uranus', 800, 250, 'giant_gas', true, 8);
INSERT INTO public.planet VALUES (8, 'Neptun', 800, 300, 'giant_gas', true, 9);
INSERT INTO public.planet VALUES (9, 'Pluto', 800, 400, 'drawn_planet', false, 1);
INSERT INTO public.planet VALUES (10, 'Cerse', 800, 400, 'drawn_planet', false, 1);
INSERT INTO public.planet VALUES (11, 'X-9210', 800, 400, 'drawn_planet', false, 1);
INSERT INTO public.planet VALUES (12, 'X-9215', 800, 400, 'drawn_planet', false, 1);


--
-- Data for Name: satelit; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satelit VALUES (1, 'ISS', 'ISS');
INSERT INTO public.satelit VALUES (2, 'Monares', 'Mars');
INSERT INTO public.satelit VALUES (3, 'DaVinci', 'Neptun');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sonne', 800, true, 1);
INSERT INTO public.star VALUES (2, 'Merkur', 800, false, 1);
INSERT INTO public.star VALUES (3, 'Venus', 800, false, 1);
INSERT INTO public.star VALUES (4, 'Erde', 800, false, 1);
INSERT INTO public.star VALUES (5, 'Mars', 800, false, 1);
INSERT INTO public.star VALUES (6, 'Juptier', 800, false, 1);
INSERT INTO public.star VALUES (7, 'Saturn', 800, false, 1);
INSERT INTO public.star VALUES (8, 'Uranus', 800, false, 1);
INSERT INTO public.star VALUES (9, 'Neptun', 800, false, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: satelit_satelit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satelit_satelit_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: satelit satelit_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelit
    ADD CONSTRAINT satelit_pkey PRIMARY KEY (satelit_id);


--
-- Name: satelit satelit_project_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelit
    ADD CONSTRAINT satelit_project_name_key UNIQUE (project_name);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

