

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


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.messages DISABLE TRIGGER ALL;

INSERT INTO public.messages (id, title, body) VALUES ('fe11f0a3-1dbe-493f-a070-36867a1066e6', 'teste 123', 'Hello World!');


ALTER TABLE public.messages ENABLE TRIGGER ALL;


