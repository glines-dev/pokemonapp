--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: attack1s; Type: TABLE; Schema: public; Owner: bglinesb_glines; Tablespace: 
--

CREATE TABLE attack1s (
    id integer NOT NULL,
    name character varying(255),
    damage integer,
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.attack1s OWNER TO bglinesb_glines;

--
-- Name: attack1s_id_seq; Type: SEQUENCE; Schema: public; Owner: bglinesb_glines
--

CREATE SEQUENCE attack1s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.attack1s_id_seq OWNER TO bglinesb_glines;

--
-- Name: attack1s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bglinesb_glines
--

ALTER SEQUENCE attack1s_id_seq OWNED BY attack1s.id;


--
-- Name: attack2s; Type: TABLE; Schema: public; Owner: bglinesb_glines; Tablespace: 
--

CREATE TABLE attack2s (
    id integer NOT NULL,
    name character varying(255),
    damage integer,
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.attack2s OWNER TO bglinesb_glines;

--
-- Name: attack2s_id_seq; Type: SEQUENCE; Schema: public; Owner: bglinesb_glines
--

CREATE SEQUENCE attack2s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.attack2s_id_seq OWNER TO bglinesb_glines;

--
-- Name: attack2s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bglinesb_glines
--

ALTER SEQUENCE attack2s_id_seq OWNED BY attack2s.id;


--
-- Name: energies; Type: TABLE; Schema: public; Owner: bglinesb_glines; Tablespace: 
--

CREATE TABLE energies (
    id integer NOT NULL,
    name character varying(255),
    amount integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.energies OWNER TO bglinesb_glines;

--
-- Name: energies_id_seq; Type: SEQUENCE; Schema: public; Owner: bglinesb_glines
--

CREATE SEQUENCE energies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.energies_id_seq OWNER TO bglinesb_glines;

--
-- Name: energies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bglinesb_glines
--

ALTER SEQUENCE energies_id_seq OWNED BY energies.id;


--
-- Name: pokemons; Type: TABLE; Schema: public; Owner: bglinesb_glines; Tablespace: 
--

CREATE TABLE pokemons (
    id integer NOT NULL,
    name character varying(255),
    card_number integer,
    type character varying(255),
    weakness character varying(255),
    attack1 integer,
    attack2 integer,
    power integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.pokemons OWNER TO bglinesb_glines;

--
-- Name: pokemons_id_seq; Type: SEQUENCE; Schema: public; Owner: bglinesb_glines
--

CREATE SEQUENCE pokemons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.pokemons_id_seq OWNER TO bglinesb_glines;

--
-- Name: pokemons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bglinesb_glines
--

ALTER SEQUENCE pokemons_id_seq OWNED BY pokemons.id;


--
-- Name: powers; Type: TABLE; Schema: public; Owner: bglinesb_glines; Tablespace: 
--

CREATE TABLE powers (
    id integer NOT NULL,
    name character varying(255),
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.powers OWNER TO bglinesb_glines;

--
-- Name: powers_id_seq; Type: SEQUENCE; Schema: public; Owner: bglinesb_glines
--

CREATE SEQUENCE powers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.powers_id_seq OWNER TO bglinesb_glines;

--
-- Name: powers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bglinesb_glines
--

ALTER SEQUENCE powers_id_seq OWNED BY powers.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: bglinesb_glines; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO bglinesb_glines;

--
-- Name: types; Type: TABLE; Schema: public; Owner: bglinesb_glines; Tablespace: 
--

CREATE TABLE types (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.types OWNER TO bglinesb_glines;

--
-- Name: types_id_seq; Type: SEQUENCE; Schema: public; Owner: bglinesb_glines
--

CREATE SEQUENCE types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.types_id_seq OWNER TO bglinesb_glines;

--
-- Name: types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bglinesb_glines
--

ALTER SEQUENCE types_id_seq OWNED BY types.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bglinesb_glines
--

ALTER TABLE ONLY attack1s ALTER COLUMN id SET DEFAULT nextval('attack1s_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bglinesb_glines
--

ALTER TABLE ONLY attack2s ALTER COLUMN id SET DEFAULT nextval('attack2s_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bglinesb_glines
--

ALTER TABLE ONLY energies ALTER COLUMN id SET DEFAULT nextval('energies_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bglinesb_glines
--

ALTER TABLE ONLY pokemons ALTER COLUMN id SET DEFAULT nextval('pokemons_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bglinesb_glines
--

ALTER TABLE ONLY powers ALTER COLUMN id SET DEFAULT nextval('powers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: bglinesb_glines
--

ALTER TABLE ONLY types ALTER COLUMN id SET DEFAULT nextval('types_id_seq'::regclass);


--
-- Name: attack1s_pkey; Type: CONSTRAINT; Schema: public; Owner: bglinesb_glines; Tablespace: 
--

ALTER TABLE ONLY attack1s
    ADD CONSTRAINT attack1s_pkey PRIMARY KEY (id);


--
-- Name: attack2s_pkey; Type: CONSTRAINT; Schema: public; Owner: bglinesb_glines; Tablespace: 
--

ALTER TABLE ONLY attack2s
    ADD CONSTRAINT attack2s_pkey PRIMARY KEY (id);


--
-- Name: energies_pkey; Type: CONSTRAINT; Schema: public; Owner: bglinesb_glines; Tablespace: 
--

ALTER TABLE ONLY energies
    ADD CONSTRAINT energies_pkey PRIMARY KEY (id);


--
-- Name: pokemons_pkey; Type: CONSTRAINT; Schema: public; Owner: bglinesb_glines; Tablespace: 
--

ALTER TABLE ONLY pokemons
    ADD CONSTRAINT pokemons_pkey PRIMARY KEY (id);


--
-- Name: powers_pkey; Type: CONSTRAINT; Schema: public; Owner: bglinesb_glines; Tablespace: 
--

ALTER TABLE ONLY powers
    ADD CONSTRAINT powers_pkey PRIMARY KEY (id);


--
-- Name: types_pkey; Type: CONSTRAINT; Schema: public; Owner: bglinesb_glines; Tablespace: 
--

ALTER TABLE ONLY types
    ADD CONSTRAINT types_pkey PRIMARY KEY (id);


--
-- Name: index_attack1s_on_damage; Type: INDEX; Schema: public; Owner: bglinesb_glines; Tablespace: 
--

CREATE INDEX index_attack1s_on_damage ON attack1s USING btree (damage);


--
-- Name: index_attack1s_on_description; Type: INDEX; Schema: public; Owner: bglinesb_glines; Tablespace: 
--

CREATE INDEX index_attack1s_on_description ON attack1s USING btree (description);


--
-- Name: index_attack1s_on_name; Type: INDEX; Schema: public; Owner: bglinesb_glines; Tablespace: 
--

CREATE INDEX index_attack1s_on_name ON attack1s USING btree (name);


--
-- Name: index_attack2s_on_damage; Type: INDEX; Schema: public; Owner: bglinesb_glines; Tablespace: 
--

CREATE INDEX index_attack2s_on_damage ON attack2s USING btree (damage);


--
-- Name: index_attack2s_on_description; Type: INDEX; Schema: public; Owner: bglinesb_glines; Tablespace: 
--

CREATE INDEX index_attack2s_on_description ON attack2s USING btree (description);


--
-- Name: index_attack2s_on_name; Type: INDEX; Schema: public; Owner: bglinesb_glines; Tablespace: 
--

CREATE INDEX index_attack2s_on_name ON attack2s USING btree (name);


--
-- Name: index_energies_on_amount; Type: INDEX; Schema: public; Owner: bglinesb_glines; Tablespace: 
--

CREATE INDEX index_energies_on_amount ON energies USING btree (amount);


--
-- Name: index_energies_on_name; Type: INDEX; Schema: public; Owner: bglinesb_glines; Tablespace: 
--

CREATE INDEX index_energies_on_name ON energies USING btree (name);


--
-- Name: index_pokemons_on_attack1; Type: INDEX; Schema: public; Owner: bglinesb_glines; Tablespace: 
--

CREATE INDEX index_pokemons_on_attack1 ON pokemons USING btree (attack1);


--
-- Name: index_pokemons_on_attack2; Type: INDEX; Schema: public; Owner: bglinesb_glines; Tablespace: 
--

CREATE INDEX index_pokemons_on_attack2 ON pokemons USING btree (attack2);


--
-- Name: index_pokemons_on_power; Type: INDEX; Schema: public; Owner: bglinesb_glines; Tablespace: 
--

CREATE INDEX index_pokemons_on_power ON pokemons USING btree (power);


--
-- Name: index_pokemons_on_type; Type: INDEX; Schema: public; Owner: bglinesb_glines; Tablespace: 
--

CREATE INDEX index_pokemons_on_type ON pokemons USING btree (type);


--
-- Name: index_pokemons_on_weakness; Type: INDEX; Schema: public; Owner: bglinesb_glines; Tablespace: 
--

CREATE INDEX index_pokemons_on_weakness ON pokemons USING btree (weakness);


--
-- Name: index_powers_on_description; Type: INDEX; Schema: public; Owner: bglinesb_glines; Tablespace: 
--

CREATE INDEX index_powers_on_description ON powers USING btree (description);


--
-- Name: index_powers_on_name; Type: INDEX; Schema: public; Owner: bglinesb_glines; Tablespace: 
--

CREATE INDEX index_powers_on_name ON powers USING btree (name);


--
-- Name: index_types_on_name; Type: INDEX; Schema: public; Owner: bglinesb_glines; Tablespace: 
--

CREATE INDEX index_types_on_name ON types USING btree (name);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: bglinesb_glines; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

