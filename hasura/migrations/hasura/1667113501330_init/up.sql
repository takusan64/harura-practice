SET check_function_bodies = false;
CREATE TABLE public.prifiles (
    id integer NOT NULL,
    name text NOT NULL
);
CREATE SEQUENCE public.prifiles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.prifiles_id_seq OWNED BY public.prifiles.id;
CREATE TABLE public.profiles (
    id integer NOT NULL,
    name text NOT NULL
);
CREATE SEQUENCE public.profiles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.profiles_id_seq OWNED BY public.profiles.id;
ALTER TABLE ONLY public.prifiles ALTER COLUMN id SET DEFAULT nextval('public.prifiles_id_seq'::regclass);
ALTER TABLE ONLY public.profiles ALTER COLUMN id SET DEFAULT nextval('public.profiles_id_seq'::regclass);
ALTER TABLE ONLY public.prifiles
    ADD CONSTRAINT prifiles_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT profiles_pkey PRIMARY KEY (id);
