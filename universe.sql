--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    size integer,
    age integer,
    fifth_row integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    fourth_row integer,
    fifth_row integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    habitable boolean,
    star_id integer,
    fifth_row integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    core_temperature numeric(36,0),
    collapsing boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: universe_sector; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universe_sector (
    universe_sector_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer,
    last_column text
);


ALTER TABLE public.universe_sector OWNER TO freecodecamp;

--
-- Name: universe_sector_iuniverse_sector_d_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.universe_sector_iuniverse_sector_d_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.universe_sector_iuniverse_sector_d_seq OWNER TO freecodecamp;

--
-- Name: universe_sector_iuniverse_sector_d_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.universe_sector_iuniverse_sector_d_seq OWNED BY public.universe_sector.universe_sector_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Name: universe_sector universe_sector_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe_sector ALTER COLUMN universe_sector_id SET DEFAULT nextval('public.universe_sector_iuniverse_sector_d_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1000, 2000, NULL);
INSERT INTO public.galaxy VALUES (2, 'Galaxy 2', 10000, 20000, NULL);
INSERT INTO public.galaxy VALUES (3, 'Galaxy 3', 3444, 9999, NULL);
INSERT INTO public.galaxy VALUES (4, 'Galaxy 4', 7472, 482, NULL);
INSERT INTO public.galaxy VALUES (5, 'Galaxy 5', 43472, 44382, NULL);
INSERT INTO public.galaxy VALUES (6, 'Galaxy 6', 443472, 434382, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Moon 2', 2, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Moon 3', 3, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Moon value', 2, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Moon value', 2, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Moon value', 2, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Moon value', 2, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Moon value', 2, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Moon value', 2, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Moon value', 2, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Moon value', 2, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Moon value', 2, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Moon value', 2, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Moon value', 2, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Moon value', 2, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Moon value', 2, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Moon value', 2, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Moon value', 2, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Moon value', 2, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Moon value', 2, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Moon value', 2, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'Moon value', 2, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'Moon value', 2, NULL, NULL);
INSERT INTO public.moon VALUES (24, 'Moon value', 2, NULL, NULL);
INSERT INTO public.moon VALUES (25, 'Moon value', 2, NULL, NULL);
INSERT INTO public.moon VALUES (26, 'Moon value', 2, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 1, NULL);
INSERT INTO public.planet VALUES (2, 'Planet 2', true, 2, NULL);
INSERT INTO public.planet VALUES (3, 'Planet 3', false, 3, NULL);
INSERT INTO public.planet VALUES (4, 'Planet 4', true, 5, NULL);
INSERT INTO public.planet VALUES (5, 'Planet 5', true, 5, NULL);
INSERT INTO public.planet VALUES (6, 'Planet 6', true, 6, NULL);
INSERT INTO public.planet VALUES (7, 'Planet 7', true, 6, NULL);
INSERT INTO public.planet VALUES (8, 'Planet 8', false, 2, NULL);
INSERT INTO public.planet VALUES (9, 'Planet 9', false, 2, NULL);
INSERT INTO public.planet VALUES (10, 'Planet 10', false, 3, NULL);
INSERT INTO public.planet VALUES (11, 'Venus', false, 1, NULL);
INSERT INTO public.planet VALUES (12, 'Jupiter', false, 1, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 15000000, false);
INSERT INTO public.star VALUES (2, 'Star 2', 2, 400000000, true);
INSERT INTO public.star VALUES (3, 'Star 3', 3, 33393939333, false);
INSERT INTO public.star VALUES (4, 'Star 4', 4, 7383, true);
INSERT INTO public.star VALUES (5, 'Star 5', 5, 734883, true);
INSERT INTO public.star VALUES (6, 'Star 6', 6, 563848934883, true);


--
-- Data for Name: universe_sector; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universe_sector VALUES (1, 'Sector 1', NULL, NULL);
INSERT INTO public.universe_sector VALUES (2, 'Sector 2', NULL, NULL);
INSERT INTO public.universe_sector VALUES (3, 'Sector 3', NULL, NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 26, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: universe_sector_iuniverse_sector_d_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.universe_sector_iuniverse_sector_d_seq', 3, true);


--
-- Name: galaxy galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_key UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_key UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: universe_sector universe_sector_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe_sector
    ADD CONSTRAINT universe_sector_name_key UNIQUE (name);


--
-- Name: universe_sector universe_sector_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe_sector
    ADD CONSTRAINT universe_sector_pkey PRIMARY KEY (universe_sector_id);


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

