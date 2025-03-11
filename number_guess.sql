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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    user_id integer,
    secret_number integer,
    number_of_guesses integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    id integer NOT NULL,
    username character varying(50) NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_id_seq OWNER TO freecodecamp;

--
-- Name: players_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_id_seq OWNED BY public.players.id;


--
-- Name: players id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN id SET DEFAULT nextval('public.players_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (3, 94, 3);
INSERT INTO public.games VALUES (4, 31, 32);
INSERT INTO public.games VALUES (4, 953, 954);
INSERT INTO public.games VALUES (5, 426, 427);
INSERT INTO public.games VALUES (5, 568, 569);
INSERT INTO public.games VALUES (4, 401, 404);
INSERT INTO public.games VALUES (4, 62, 64);
INSERT INTO public.games VALUES (4, 950, 951);
INSERT INTO public.games VALUES (6, 938, 939);
INSERT INTO public.games VALUES (6, 15, 16);
INSERT INTO public.games VALUES (7, 720, 721);
INSERT INTO public.games VALUES (7, 327, 328);
INSERT INTO public.games VALUES (6, 271, 274);
INSERT INTO public.games VALUES (6, 556, 558);
INSERT INTO public.games VALUES (6, 814, 815);
INSERT INTO public.games VALUES (8, 117, 118);
INSERT INTO public.games VALUES (8, 165, 166);
INSERT INTO public.games VALUES (9, 670, 671);
INSERT INTO public.games VALUES (9, 688, 689);
INSERT INTO public.games VALUES (8, 201, 204);
INSERT INTO public.games VALUES (8, 503, 505);
INSERT INTO public.games VALUES (8, 218, 219);
INSERT INTO public.games VALUES (10, 108, 109);
INSERT INTO public.games VALUES (10, 986, 987);
INSERT INTO public.games VALUES (11, 571, 572);
INSERT INTO public.games VALUES (11, 881, 882);
INSERT INTO public.games VALUES (10, 218, 221);
INSERT INTO public.games VALUES (10, 913, 915);
INSERT INTO public.games VALUES (10, 461, 462);
INSERT INTO public.games VALUES (3, 730, 4);
INSERT INTO public.games VALUES (12, 255, 256);
INSERT INTO public.games VALUES (12, 579, 580);
INSERT INTO public.games VALUES (13, 423, 424);
INSERT INTO public.games VALUES (13, 203, 204);
INSERT INTO public.games VALUES (12, 23, 26);
INSERT INTO public.games VALUES (12, 654, 656);
INSERT INTO public.games VALUES (12, 2, 3);
INSERT INTO public.games VALUES (14, 613, 614);
INSERT INTO public.games VALUES (14, 483, 484);
INSERT INTO public.games VALUES (15, 743, 744);
INSERT INTO public.games VALUES (15, 99, 100);
INSERT INTO public.games VALUES (14, 571, 574);
INSERT INTO public.games VALUES (14, 200, 202);
INSERT INTO public.games VALUES (14, 721, 722);
INSERT INTO public.games VALUES (16, 231, 232);
INSERT INTO public.games VALUES (16, 564, 565);
INSERT INTO public.games VALUES (17, 32, 33);
INSERT INTO public.games VALUES (17, 139, 140);
INSERT INTO public.games VALUES (16, 93, 96);
INSERT INTO public.games VALUES (16, 474, 476);
INSERT INTO public.games VALUES (16, 50, 51);
INSERT INTO public.games VALUES (3, 421, 11);
INSERT INTO public.games VALUES (18, 882, 883);
INSERT INTO public.games VALUES (18, 321, 322);
INSERT INTO public.games VALUES (19, 270, 271);
INSERT INTO public.games VALUES (19, 972, 973);
INSERT INTO public.games VALUES (18, 395, 398);
INSERT INTO public.games VALUES (18, 966, 968);
INSERT INTO public.games VALUES (18, 893, 894);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (1, 'user_1741690051902');
INSERT INTO public.players VALUES (2, 'user_1741690051901');
INSERT INTO public.players VALUES (3, 'sid');
INSERT INTO public.players VALUES (4, 'user_1741692158813');
INSERT INTO public.players VALUES (5, 'user_1741692158812');
INSERT INTO public.players VALUES (6, 'user_1741692198043');
INSERT INTO public.players VALUES (7, 'user_1741692198042');
INSERT INTO public.players VALUES (8, 'user_1741692216753');
INSERT INTO public.players VALUES (9, 'user_1741692216752');
INSERT INTO public.players VALUES (10, 'user_1741692325421');
INSERT INTO public.players VALUES (11, 'user_1741692325420');
INSERT INTO public.players VALUES (12, 'user_1741692376779');
INSERT INTO public.players VALUES (13, 'user_1741692376778');
INSERT INTO public.players VALUES (14, 'user_1741692418080');
INSERT INTO public.players VALUES (15, 'user_1741692418079');
INSERT INTO public.players VALUES (16, 'user_1741692484676');
INSERT INTO public.players VALUES (17, 'user_1741692484675');
INSERT INTO public.players VALUES (18, 'user_1741692573746');
INSERT INTO public.players VALUES (19, 'user_1741692573745');


--
-- Name: players_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_id_seq', 19, true);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (id);


--
-- Name: players players_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

