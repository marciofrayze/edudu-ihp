

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

INSERT INTO public.messages (id, title, body, created_at) VALUES ('7c8bf459-dce7-44dc-9481-241865dcf786', 'Hello there', 'Hello! How are you doing today? =)', '2021-04-30 19:20:43.069357-03');
INSERT INTO public.messages (id, title, body, created_at) VALUES ('a6849f45-22f6-410e-9611-c94c01259a74', 'Titulo 123', 'Ola pessoal! Espero que estejam todos bem.

Hoje é um dia muito dificil, pq vou testar um novo framework chamado IHP.

Como ele é feito em Haskell, não manjo muito! E agora? Será que vai dar certo?', '2021-04-30 22:51:18.550915-03');


ALTER TABLE public.messages ENABLE TRIGGER ALL;


