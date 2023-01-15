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
-- Name: extra; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extra (
    extra text,
    more_extra text,
    even_more_extra text,
    extra_id integer NOT NULL,
    name character varying(10) NOT NULL
);


ALTER TABLE public.extra OWNER TO freecodecamp;

--
-- Name: extra_extra_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.extra_extra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extra_extra_id_seq OWNER TO freecodecamp;

--
-- Name: extra_extra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.extra_extra_id_seq OWNED BY public.extra.extra_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_type character varying(20),
    has_life boolean,
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
    planet_id integer,
    distance_from_parent_planet_in_miles numeric,
    mean_radius_in_miles numeric
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
    star_id integer,
    has_life boolean,
    planet_type character varying(20)
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
    age_in_millions_of_years integer,
    galaxy_id integer,
    description text
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
-- Name: extra extra_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra ALTER COLUMN extra_id SET DEFAULT nextval('public.extra_extra_id_seq'::regclass);


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
-- Data for Name: extra; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.extra VALUES ('I', 'do not', 'know', 4, 'row1');
INSERT INTO public.extra VALUES ('what', 'to', 'put', 5, 'row2');
INSERT INTO public.extra VALUES ('in', 'this', 'table.', 6, 'row3');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', true, 13200);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Barred Spiral', false, 4500);
INSERT INTO public.galaxy VALUES (3, 'Cartwheel', 'Ring', false, 300);
INSERT INTO public.galaxy VALUES (4, 'Fireworks', 'Intermediate Spiral', false, 25);
INSERT INTO public.galaxy VALUES (5, 'Circinus', 'Type II Seyfert', false, 800);
INSERT INTO public.galaxy VALUES (6, 'Comet', 'Spiral', false, 200);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 3, 238855, 1077.71);
INSERT INTO public.moon VALUES (2, 'Deimos', 4, 14577.37, 3.85);
INSERT INTO public.moon VALUES (3, 'Phobos', 4, 3728.23, 7);
INSERT INTO public.moon VALUES (4, 'Adrastea', 5, 80156.88, 5.1);
INSERT INTO public.moon VALUES (5, 'Callisto', 5, 1170000, 1497.69);
INSERT INTO public.moon VALUES (6, 'Europa', 5, 416877.93, 969.84);
INSERT INTO public.moon VALUES (7, 'Ganymede', 5, 665115.72, 1636.75);
INSERT INTO public.moon VALUES (8, 'Lo', 5, 262218.64, 1131.89);
INSERT INTO public.moon VALUES (9, 'Atlas', 6, 85544.17, 9.38);
INSERT INTO public.moon VALUES (10, 'Calypso', 6, 183304.5, 6.65);
INSERT INTO public.moon VALUES (11, 'Enceladus', 6, 147886.34, 156.65);
INSERT INTO public.moon VALUES (12, 'Hyperion', 6, 932056.79, 83.89);
INSERT INTO public.moon VALUES (13, 'Pandora', 6, 88234.71, 25.29);
INSERT INTO public.moon VALUES (14, 'Prometheus', 6, 86370.6, 26.78);
INSERT INTO public.moon VALUES (15, 'Titan', 6, 745645.43, 1599.86);
INSERT INTO public.moon VALUES (16, 'Ariel', 7, 118619.76, 359.71);
INSERT INTO public.moon VALUES (17, 'Oberon', 7, 362880.78, 473.11);
INSERT INTO public.moon VALUES (18, 'Puck', 7, 53444.14, 50.33);
INSERT INTO public.moon VALUES (19, 'Titania', 7, 270917.84, 489.89);
INSERT INTO public.moon VALUES (20, 'Umbriel', 7, 165284.74, 363.32);
INSERT INTO public.moon VALUES (21, 'Hippocamp', 8, 65419.82, 10.81);
INSERT INTO public.moon VALUES (22, 'Larissa', 8, 30299.92, 60.27);
INSERT INTO public.moon VALUES (23, 'Proteus', 8, 73102.46, 130.49);
INSERT INTO public.moon VALUES (24, 'Triton', 8, 220500, 840.96);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', 8, false, 'Exoplanet');
INSERT INTO public.planet VALUES (10, 'Proxima Centauri c', 8, false, 'Exoplanet');
INSERT INTO public.planet VALUES (11, 'Kepler-11b', 9, false, 'Exoplanet');
INSERT INTO public.planet VALUES (12, 'Kepler-11c', 9, false, 'Exoplanet');
INSERT INTO public.planet VALUES (13, 'Kepler-11d', 9, false, 'Exoplanet');
INSERT INTO public.planet VALUES (14, 'Kepler-11e', 9, false, 'Exoplanet');
INSERT INTO public.planet VALUES (15, 'Kepler-11f', 9, false, 'Exoplanet');
INSERT INTO public.planet VALUES (16, 'Kepler-11g', 9, false, 'Exoplanet');
INSERT INTO public.planet VALUES (1, 'Mercury', 7, false, 'Terrestrial');
INSERT INTO public.planet VALUES (2, 'Venus', 7, false, 'Terrestrial');
INSERT INTO public.planet VALUES (3, 'Earth', 7, true, 'Terrestrial');
INSERT INTO public.planet VALUES (4, 'Mars', 7, false, 'Terrestrial');
INSERT INTO public.planet VALUES (5, 'Jupiter', 7, false, 'Gas Giant');
INSERT INTO public.planet VALUES (6, 'Saturn', 7, false, 'Gas Giant');
INSERT INTO public.planet VALUES (7, 'Uranus', 7, false, 'Ice Giant');
INSERT INTO public.planet VALUES (8, 'Neptune', 7, false, 'Ice Giant');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Barnard', 9500, 1, 'Red Dwarf');
INSERT INTO public.star VALUES (2, 'Alpheratz', 60, 2, 'Mercury-Manganese');
INSERT INTO public.star VALUES (3, 'VV Cephei', 25, 4, 'Eclipsing Binary');
INSERT INTO public.star VALUES (4, 'Garnet', 10, 4, 'Red Supergiant');
INSERT INTO public.star VALUES (5, 'Alpha Circini', 12, 5, 'Variable');
INSERT INTO public.star VALUES (6, 'Beta Circini', 367000, 5, 'A-Type Main Sequence');
INSERT INTO public.star VALUES (7, 'Sol', 4568, 1, 'G-Type Main Sequence');
INSERT INTO public.star VALUES (8, 'Alpha Centauri', 4600, 1, 'Triple');
INSERT INTO public.star VALUES (9, 'Kepler-11', 8000, 1, 'Sun-like');


--
-- Name: extra_extra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.extra_extra_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: extra extra_even_more_extra_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_even_more_extra_key UNIQUE (even_more_extra);


--
-- Name: extra extra_extra_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_extra_key UNIQUE (extra);


--
-- Name: extra extra_more_extra_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_more_extra_key UNIQUE (more_extra);


--
-- Name: extra extra_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_pkey PRIMARY KEY (extra_id);


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

