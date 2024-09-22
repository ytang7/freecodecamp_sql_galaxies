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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter numeric
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    num_stars numeric,
    distance_from_earth numeric,
    size_light_years numeric
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
    name character varying(30),
    diameter integer,
    planet_id integer NOT NULL,
    gravity numeric
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
    name character varying(30),
    diameter integer,
    gravity numeric,
    description text,
    life boolean,
    star_id integer NOT NULL
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
    name character varying(30),
    dying boolean,
    galaxy_id integer NOT NULL,
    num_planets numeric
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Aasd', NULL);
INSERT INTO public.asteroid VALUES (2, 'Monkas', NULL);
INSERT INTO public.asteroid VALUES (3, 'WaitWhat', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Cartwheel', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Cigar', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Sunflower', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon1', NULL, 1, NULL);
INSERT INTO public.moon VALUES (2, 'Moon2', NULL, 1, NULL);
INSERT INTO public.moon VALUES (3, 'Moon3', NULL, 1, NULL);
INSERT INTO public.moon VALUES (4, 'Moon4', NULL, 1, NULL);
INSERT INTO public.moon VALUES (5, 'Moon5', NULL, 1, NULL);
INSERT INTO public.moon VALUES (6, 'Moon6', NULL, 1, NULL);
INSERT INTO public.moon VALUES (7, 'Moon7', NULL, 1, NULL);
INSERT INTO public.moon VALUES (8, 'Moon8', NULL, 2, NULL);
INSERT INTO public.moon VALUES (9, 'Moon9', NULL, 2, NULL);
INSERT INTO public.moon VALUES (10, 'Moon10', NULL, 2, NULL);
INSERT INTO public.moon VALUES (11, 'Moon11', NULL, 3, NULL);
INSERT INTO public.moon VALUES (12, 'Moon12', NULL, 3, NULL);
INSERT INTO public.moon VALUES (13, 'Moon13', NULL, 3, NULL);
INSERT INTO public.moon VALUES (14, 'Moon14', NULL, 3, NULL);
INSERT INTO public.moon VALUES (15, 'Moon15', NULL, 3, NULL);
INSERT INTO public.moon VALUES (16, 'Moon16', NULL, 3, NULL);
INSERT INTO public.moon VALUES (17, 'Moon17', NULL, 3, NULL);
INSERT INTO public.moon VALUES (18, 'Moon18', NULL, 3, NULL);
INSERT INTO public.moon VALUES (19, 'Moon19', NULL, 3, NULL);
INSERT INTO public.moon VALUES (20, 'Moon20', NULL, 3, NULL);
INSERT INTO public.moon VALUES (21, 'Moon21', NULL, 3, NULL);
INSERT INTO public.moon VALUES (22, 'Moon22', NULL, 3, NULL);
INSERT INTO public.moon VALUES (23, 'Moon23', NULL, 3, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Mercury', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, 'Jupituer', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Senna', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (9, 'Lucian', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (10, 'Thomas', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (11, 'Shaco', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (12, 'Garen', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (13, 'Moon1', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (14, 'Moon2', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (15, 'Moon3', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (16, 'Moon4', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (17, 'Moon5', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (18, 'Moon6', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (19, 'Moon7', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (20, 'Moon8', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (21, 'Moon9', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (22, 'Moon10', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (23, 'Moon11', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (24, 'Moon12', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (25, 'Moon13', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (26, 'Moon14', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (27, 'Moon15', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (28, 'Moon16', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (29, 'Moon17', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (30, 'Moon18', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (31, 'Moon19', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (32, 'Moon20', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (33, 'Moon21', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (34, 'Moon22', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (35, 'Moon23', NULL, NULL, NULL, NULL, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', false, 1, NULL);
INSERT INTO public.star VALUES (2, 'Antares', false, 1, NULL);
INSERT INTO public.star VALUES (3, 'Canis Major', false, 1, NULL);
INSERT INTO public.star VALUES (7, 'Kappa', NULL, 1, NULL);
INSERT INTO public.star VALUES (8, 'DansGame', NULL, 1, NULL);
INSERT INTO public.star VALUES (9, 'OMEGALUL', NULL, 1, NULL);
INSERT INTO public.star VALUES (10, 'Kekbuko', NULL, 1, NULL);
INSERT INTO public.star VALUES (11, 'EndlessBitching', NULL, 1, NULL);


--
-- Name: asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 23, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 35, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 11, true);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy id_const; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT id_const UNIQUE (galaxy_id);


--
-- Name: asteroid id_const_ast; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT id_const_ast UNIQUE (asteroid_id);


--
-- Name: moon id_const_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT id_const_moon UNIQUE (moon_id);


--
-- Name: planet id_const_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT id_const_planet UNIQUE (planet_id);


--
-- Name: star id_const_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT id_const_star UNIQUE (star_id);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

