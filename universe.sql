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
-- Name: extra; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extra (
    name character varying(100) NOT NULL,
    opinion text NOT NULL,
    info text,
    sci_name character varying(100) NOT NULL,
    extra_id integer NOT NULL
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
    name character varying(100) NOT NULL,
    type character varying(50) NOT NULL,
    ranking integer,
    observable boolean
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
    planet_id integer,
    name character varying(100) NOT NULL,
    type character varying(50) NOT NULL,
    radius numeric,
    observable boolean,
    ranking integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_moon_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_moon_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_moon_seq OWNER TO freecodecamp;

--
-- Name: moon_id_moon_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_moon_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer,
    name character varying(100) NOT NULL,
    type character varying(50) NOT NULL,
    radius numeric,
    observed_life boolean,
    opinion text,
    ranking integer,
    observable boolean
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
    galaxy_id integer,
    name character varying(100) NOT NULL,
    observable boolean,
    ranking integer
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

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_moon_seq'::regclass);


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

INSERT INTO public.extra VALUES ('Black Hole', 'Fascinating astronomical phenomenon.', 'A black hole is a region of spacetime where gravity is so strong that nothing—no particles or even electromagnetic radiation such as light—can escape from it.', 'Sagittarius A*', 1);
INSERT INTO public.extra VALUES ('Nebula', 'Beautiful cosmic clouds of gas and dust.', 'A nebula is a giant cloud of dust and gas in space. Some nebulae (more than one nebula) come from the gas and dust thrown out by the explosion of a dying star, such as a supernova.', 'Orion Nebula', 2);
INSERT INTO public.extra VALUES ('Supernova', 'Spectacular explosion in space.', 'A supernova is a powerful and luminous stellar explosion. This astronomical event occurs during the last evolutionary stages of a massive star or when a white dwarf is triggered into runaway nuclear fusion.', 'SN 1987A', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 1, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 2, true);
INSERT INTO public.galaxy VALUES (3, 'Messier 87', 'Elliptical', 3, false);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 'Spiral', 4, true);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Spiral', 5, false);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 'Spiral', 6, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'Luna', 'Rocky', 1737.4, true, 1);
INSERT INTO public.moon VALUES (2, 1, 'Phobos', 'Rocky', 11.1, true, 2);
INSERT INTO public.moon VALUES (3, 2, 'Deimos', 'Rocky', 6.2, true, 3);
INSERT INTO public.moon VALUES (4, 2, 'Ganymede', 'Rocky', 2634.1, true, 4);
INSERT INTO public.moon VALUES (5, 3, 'Io', 'Rocky', 1821.6, true, 5);
INSERT INTO public.moon VALUES (6, 3, 'Europa', 'Rocky', 1560.8, true, 6);
INSERT INTO public.moon VALUES (7, 4, 'Callisto', 'Rocky', 2410.3, true, 7);
INSERT INTO public.moon VALUES (8, 4, 'Titan', 'Rocky', 2574.73, true, 8);
INSERT INTO public.moon VALUES (9, 5, 'Enceladus', 'Rocky', 252.1, true, 9);
INSERT INTO public.moon VALUES (10, 5, 'Mimas', 'Rocky', 198.2, true, 10);
INSERT INTO public.moon VALUES (11, 6, 'Miranda', 'Rocky', 235.8, true, 11);
INSERT INTO public.moon VALUES (12, 6, 'Triton', 'Rocky', 1353.4, true, 12);
INSERT INTO public.moon VALUES (13, 7, 'Charon', 'Rocky', 606, true, 13);
INSERT INTO public.moon VALUES (14, 7, 'Titania', 'Rocky', 788.9, true, 14);
INSERT INTO public.moon VALUES (15, 8, 'Rhea', 'Rocky', 764.5, true, 15);
INSERT INTO public.moon VALUES (16, 8, 'Iapetus', 'Rocky', 735.6, true, 16);
INSERT INTO public.moon VALUES (17, 9, 'Dione', 'Rocky', 561.4, true, 17);
INSERT INTO public.moon VALUES (18, 9, 'Umbriel', 'Rocky', 584.7, true, 18);
INSERT INTO public.moon VALUES (19, 10, 'Ariel', 'Rocky', 578.9, true, 19);
INSERT INTO public.moon VALUES (20, 10, 'Proteus', 'Rocky', 210, true, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Mercury', 'Rocky', 2439.7, false, 'No opinion', 1, true);
INSERT INTO public.planet VALUES (2, 1, 'Venus', 'Terrestrial', 6051.8, false, 'No opinion', 2, true);
INSERT INTO public.planet VALUES (3, 2, 'Proxima Centauri b', 'Rocky', 6351, false, 'No opinion', 3, false);
INSERT INTO public.planet VALUES (4, 2, 'Alpha Centauri Bb', 'Rocky', 7625, false, 'No opinion', 4, false);
INSERT INTO public.planet VALUES (5, 3, 'Jupiter', 'Gas Giant', 69911, false, 'No opinion', 5, true);
INSERT INTO public.planet VALUES (6, 3, 'Saturn', 'Gas Giant', 58232, false, 'No opinion', 6, true);
INSERT INTO public.planet VALUES (7, 4, 'Exoplanet A', 'Rocky', 5000, false, 'No opinion', 7, true);
INSERT INTO public.planet VALUES (8, 4, 'Exoplanet B', 'Rocky', 6000, false, 'No opinion', 8, true);
INSERT INTO public.planet VALUES (9, 5, 'Exoplanet C', 'Gas Giant', 80000, false, 'No opinion', 9, true);
INSERT INTO public.planet VALUES (10, 5, 'Exoplanet D', 'Gas Giant', 90000, false, 'No opinion', 10, true);
INSERT INTO public.planet VALUES (11, 6, 'Exoplanet E', 'Ice Giant', 40000, false, 'No opinion', 11, false);
INSERT INTO public.planet VALUES (12, 6, 'Exoplanet F', 'Ice Giant', 45000, false, 'No opinion', 12, false);
INSERT INTO public.planet VALUES (13, 7, 'Exoplanet G', 'Rocky', 7000, false, 'No opinion', 13, true);
INSERT INTO public.planet VALUES (14, 7, 'Exoplanet H', 'Rocky', 8000, false, 'No opinion', 14, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Sun', true, 1);
INSERT INTO public.star VALUES (2, 1, 'Proxima Centauri', true, 2);
INSERT INTO public.star VALUES (3, 2, 'Alpha Centauri A', true, 3);
INSERT INTO public.star VALUES (4, 2, 'Alpha Centauri B', true, 4);
INSERT INTO public.star VALUES (5, 3, 'Messier 87-1', false, 5);
INSERT INTO public.star VALUES (6, 4, 'Messier 31-1', true, 6);
INSERT INTO public.star VALUES (7, 5, 'Sombrero-1', false, 7);
INSERT INTO public.star VALUES (8, 6, 'Whirlpool-1', true, 8);


--
-- Name: extra_extra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.extra_extra_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_id_moon_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_moon_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: extra extra_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_pkey PRIMARY KEY (extra_id);


--
-- Name: extra extra_sci_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_sci_name_key UNIQUE (sci_name);


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

