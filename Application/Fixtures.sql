

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

ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body, created_at) VALUES ('b77baa7b-87aa-4bf4-a141-c8e924d2fec0', 'This is a Title', 'This is a body!', '2021-02-06 11:36:45.216208-08');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;

INSERT INTO public.comments (id, author, body, post_id) VALUES ('b12b5039-3620-47dc-939d-757ef6551494', 'Bill Commentor', 'This is a nice comment.', 'b77baa7b-87aa-4bf4-a141-c8e924d2fec0');
INSERT INTO public.comments (id, author, body, post_id) VALUES ('50806796-7399-496b-bc5d-e3b65cae0666', 'Second Author', 'Second comment.', 'b77baa7b-87aa-4bf4-a141-c8e924d2fec0');


ALTER TABLE public.comments ENABLE TRIGGER ALL;


