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
    age integer NOT NULL,
    distance integer,
    weight numeric(10,2),
    description text,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_uni_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_uni_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_uni_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_uni_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_uni_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    distance integer,
    weight numeric(10,2),
    description text,
    has_life boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_uni_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_uni_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_uni_id_seq OWNER TO freecodecamp;

--
-- Name: moon_uni_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_uni_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance integer,
    weight numeric(10,2),
    description text,
    has_life boolean,
    age integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_uni_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_uni_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_uni_id_seq OWNER TO freecodecamp;

--
-- Name: planet_uni_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_uni_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    distance integer,
    weight numeric(10,2),
    description text,
    has_life boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_uni_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_uni_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_uni_id_seq OWNER TO freecodecamp;

--
-- Name: star_uni_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_uni_id_seq OWNED BY public.star.star_id;


--
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    name character varying(30),
    age integer NOT NULL,
    distance integer NOT NULL,
    sun_id integer NOT NULL
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_uni_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_uni_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_uni_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_uni_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'one', 10022, 1232, 345.83, 'first one', false);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 10000, 26000, 1000.50, 'Our home galaxy.', true);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 11000, 22000, 1200.75, 'Closest spiral galaxy.', false);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 12000, 30000, 800.00, 'A small spiral galaxy.', false);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 13000, 23000, 1100.25, 'Has a beautiful spiral structure.', false);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 14000, 27000, 950.40, 'Bright central bulge.', false);
INSERT INTO public.galaxy VALUES (7, 'Cartwheel', 15000, 29000, 1050.60, 'Ring galaxy.', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Luna', 16000, 1, 5.97, 'Earth''s moon', false);
INSERT INTO public.moon VALUES (3, 'Phobos', 16001, 1, 0.65, 'Mars moon', false);
INSERT INTO public.moon VALUES (4, 'Deimos', 16002, 2, 0.65, 'Another Mars moon', false);
INSERT INTO public.moon VALUES (5, 'A1 Moon 1', 16003, 2, 3.21, 'First A1 moon', false);
INSERT INTO public.moon VALUES (6, 'A2 Moon 1', 16004, 3, 3.30, 'A2 orbit moon', false);
INSERT INTO public.moon VALUES (7, 'B1 Moon 1', 16005, 4, 2.85, 'Gas giant moon', false);
INSERT INTO public.moon VALUES (8, 'B2 Moon 1', 16006, 5, 2.91, 'B2 rocky moon', false);
INSERT INTO public.moon VALUES (9, 'C1 Moon 1', 16007, 6, 4.22, 'Vega system moon', false);
INSERT INTO public.moon VALUES (10, 'C2 Moon 1', 16008, 7, 4.31, 'Second C2 moon', false);
INSERT INTO public.moon VALUES (11, 'D1 Moon 1', 16009, 8, 1.95, 'Icy moon D1', false);
INSERT INTO public.moon VALUES (12, 'D2 Moon 1', 16010, 9, 2.11, 'Toxic moon D2', false);
INSERT INTO public.moon VALUES (13, 'E1 Moon 1', 16011, 10, 3.00, 'Dusty storm moon', false);
INSERT INTO public.moon VALUES (14, 'Extra 1', 16012, 11, 0.65, 'Extra moon for Mars', false);
INSERT INTO public.moon VALUES (15, 'Extra 2', 16013, 12, 2.91, 'Additional rocky moon', false);
INSERT INTO public.moon VALUES (16, 'Extra 3', 16014, 13, 1.95, 'Backup icy moon', false);
INSERT INTO public.moon VALUES (17, 'Extra 4', 16015, 14, 3.21, 'Alt A1 orbit', false);
INSERT INTO public.moon VALUES (18, 'Extra 5', 16016, 15, 4.88, 'Venus-based moon', false);
INSERT INTO public.moon VALUES (19, 'Extra 6', 16017, 16, 4.31, 'Second C2 moon alt', false);
INSERT INTO public.moon VALUES (20, 'Extra 7', 16018, 17, 3.00, 'More E1 moons', false);
INSERT INTO public.moon VALUES (21, 'Extra 8', 16019, 18, 2.85, 'Random gas moon', false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (7, 'Earth', 1, 5.97, 'Blue planet.', true, 10000);
INSERT INTO public.planet VALUES (8, 'Mars', 2, 0.65, 'Red planet.', false, 10000);
INSERT INTO public.planet VALUES (9, 'Venus', 1, 4.88, 'Hottest planet.', false, 10000);
INSERT INTO public.planet VALUES (10, 'Planet A1', 5, 3.21, 'Alien planet.', false, 11000);
INSERT INTO public.planet VALUES (11, 'Planet A2', 6, 3.30, 'Second in the system.', false, 11000);
INSERT INTO public.planet VALUES (12, 'Planet B1', 4, 2.85, 'Gas planet.', false, 12000);
INSERT INTO public.planet VALUES (13, 'Planet B2', 5, 2.91, 'Rocky type.', false, 12000);
INSERT INTO public.planet VALUES (14, 'Planet C1', 3, 4.22, 'Orbiting Vega.', false, 13000);
INSERT INTO public.planet VALUES (15, 'Planet C2', 4, 4.31, '2nd in orbit.', false, 13000);
INSERT INTO public.planet VALUES (16, 'Planet D1', 6, 1.95, 'Frozen surface.', false, 14000);
INSERT INTO public.planet VALUES (17, 'Planet D2', 7, 2.11, 'Thick atmosphere.', false, 14000);
INSERT INTO public.planet VALUES (18, 'Planet E1', 8, 3.00, 'Stormy planet.', false, 15000);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 10000, 0, 1.00, 'Our star.', true);
INSERT INTO public.star VALUES (2, 'Sirius', 11000, 8, 2.02, 'Brightest star.', false);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 12000, 642, 20.00, 'Red supergiant.', false);
INSERT INTO public.star VALUES (4, 'Vega', 13000, 25, 2.14, 'Bright star in Lyra.', false);
INSERT INTO public.star VALUES (5, 'Procyon', 14000, 11, 1.50, 'Binary system.', false);
INSERT INTO public.star VALUES (6, 'Altair', 15000, 17, 1.80, 'Fast rotating star.', false);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES ('Sol', 20000, 0, 1);
INSERT INTO public.sun VALUES ('Alpha Centauri A', 20001, 4, 2);
INSERT INTO public.sun VALUES ('Barnard\s Star', 20002, 6, 3);
INSERT INTO public.sun VALUES ('Sirius A', 20003, 9, 4);


--
-- Name: galaxy_uni_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_uni_id_seq', 7, true);


--
-- Name: moon_uni_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_uni_id_seq', 21, true);


--
-- Name: planet_uni_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_uni_id_seq', 18, true);


--
-- Name: star_uni_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_uni_id_seq', 6, true);


--
-- Name: galaxy galaxy_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_age_key UNIQUE (age);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_age_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_age_unique UNIQUE (age);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_weight_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_weight_unique UNIQUE (weight);


--
-- Name: star star_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_age_key UNIQUE (age);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: sun sun_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_age_key UNIQUE (age);


--
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


--
-- Name: galaxy unique_age; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_age UNIQUE (age);


--
-- Name: moon moon_weight_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_weight_fkey FOREIGN KEY (weight) REFERENCES public.planet(weight);


--
-- Name: planet planet_age_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_age_fkey FOREIGN KEY (age) REFERENCES public.star(age);


--
-- Name: star star_age_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_age_fkey FOREIGN KEY (age) REFERENCES public.galaxy(age);


--
-- PostgreSQL database dump complete
--

