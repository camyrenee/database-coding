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
-- Name: constellations; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellations (
    constellations_id integer NOT NULL,
    name character varying(50) NOT NULL,
    myth text
);


ALTER TABLE public.constellations OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    has_life boolean,
    age integer,
    num_planets integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    planet_id integer,
    has_life boolean,
    circumference integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    circumference integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    age numeric(4,1) NOT NULL,
    name character varying(20),
    num_planet integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: constellations; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellations VALUES (1, 'Orion', 'Greek');
INSERT INTO public.constellations VALUES (2, 'Cancer', 'Roman');
INSERT INTO public.constellations VALUES (3, 'Taurus', 'Roman');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, 345, 9);
INSERT INTO public.galaxy VALUES (2, 'Galaxy 2', false, 777, 90);
INSERT INTO public.galaxy VALUES (3, 'Galaxy 3', false, 333, 87);
INSERT INTO public.galaxy VALUES (4, 'Galaxy 4', false, 222, 76);
INSERT INTO public.galaxy VALUES (5, 'Galaxy 5', false, 111, 23);
INSERT INTO public.galaxy VALUES (6, 'Galaxy 6', false, 444, 21);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, false, 444);
INSERT INTO public.moon VALUES (2, 'Moon 1', 5, false, 333);
INSERT INTO public.moon VALUES (3, 'Moon 2', 5, false, 222);
INSERT INTO public.moon VALUES (4, 'Moon 3', 5, false, 222);
INSERT INTO public.moon VALUES (5, 'Moon 4', 5, false, 333);
INSERT INTO public.moon VALUES (6, 'Moon 5', 5, false, 888);
INSERT INTO public.moon VALUES (7, 'Moon 6', 5, false, 888);
INSERT INTO public.moon VALUES (8, 'Moon 7', 7, false, 666);
INSERT INTO public.moon VALUES (9, 'Moon 8', 7, false, 777);
INSERT INTO public.moon VALUES (10, 'Moon 9', 8, false, 333);
INSERT INTO public.moon VALUES (11, 'Moon 10', 4, false, 222);
INSERT INTO public.moon VALUES (12, 'Moon 11', 7, false, 333);
INSERT INTO public.moon VALUES (13, 'Moon 12', 8, false, 999);
INSERT INTO public.moon VALUES (14, 'Moon 13', 7, false, 765);
INSERT INTO public.moon VALUES (15, 'Moon 14', 5, false, 678);
INSERT INTO public.moon VALUES (16, 'Moon 15', 4, false, 777);
INSERT INTO public.moon VALUES (17, 'Moon 16', 6, false, 555);
INSERT INTO public.moon VALUES (18, 'Moon 17', 8, false, 777);
INSERT INTO public.moon VALUES (19, 'Moon 18', 7, false, 444);
INSERT INTO public.moon VALUES (20, 'Moon 19', 5, false, 111);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, 3456, 1);
INSERT INTO public.planet VALUES (2, 'Venus', false, 3333, 1);
INSERT INTO public.planet VALUES (3, 'Earth', true, 2222, 1);
INSERT INTO public.planet VALUES (4, 'Mars', false, 1111, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 22222, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 2222, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 3333, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 1111, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', false, 2999, 1);
INSERT INTO public.planet VALUES (10, 'Planet 10', false, 999, 3);
INSERT INTO public.planet VALUES (11, 'Planet 11', false, 777, 4);
INSERT INTO public.planet VALUES (12, 'Planet 12', false, 4444, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 243.5, 'Sun', 9, 1);
INSERT INTO public.star VALUES (2, 376.4, 'Star 1', 7, 1);
INSERT INTO public.star VALUES (3, 289.0, 'Star 2', 3, 2);
INSERT INTO public.star VALUES (4, 290.7, 'Star 3', 2, 4);
INSERT INTO public.star VALUES (5, 333.8, 'Star 4', 3, 5);
INSERT INTO public.star VALUES (6, 999.8, 'Star 5', 4, 2);


--
-- Name: constellations constellations_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations
    ADD CONSTRAINT constellations_name_key UNIQUE (name);


--
-- Name: constellations constellations_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations
    ADD CONSTRAINT constellations_pkey PRIMARY KEY (constellations_id);


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

