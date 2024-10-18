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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    username character varying(22),
    games_played integer,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('user_1729218350743', 2, 271);
INSERT INTO public.users VALUES ('user_1729218350744', 5, 39);
INSERT INTO public.users VALUES ('user_1729218786278', 2, 45);
INSERT INTO public.users VALUES ('user_1729218786279', 5, 121);
INSERT INTO public.users VALUES ('Me', 2, 3);
INSERT INTO public.users VALUES ('user_1729218909453', 2, 411);
INSERT INTO public.users VALUES ('user_1729218909454', 5, 113);
INSERT INTO public.users VALUES ('user_1729218971394', 2, 162);
INSERT INTO public.users VALUES ('user_1729218971395', 5, 139);
INSERT INTO public.users VALUES ('user_1729219690060', 2, 80);
INSERT INTO public.users VALUES ('user_1729219690061', 5, 65);
INSERT INTO public.users VALUES ('user_1729219934376', 2, 60);
INSERT INTO public.users VALUES ('user_1729219934377', 5, 59);
INSERT INTO public.users VALUES ('user_1729220256487', 2, 354);
INSERT INTO public.users VALUES ('user_1729220256488', 5, 358);
INSERT INTO public.users VALUES ('user_1729220303542', 2, 442);
INSERT INTO public.users VALUES ('user_1729220303543', 5, 17);


--
-- PostgreSQL database dump complete
--

