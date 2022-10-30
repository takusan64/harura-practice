SET check_function_bodies = false;
INSERT INTO public.profiles (id, name) VALUES (1, 'Taro');
INSERT INTO public.profiles (id, name) VALUES (2, 'Yuta');
INSERT INTO public.profiles (id, name) VALUES (3, 'Jiro');
SELECT pg_catalog.setval('public.profiles_id_seq', 3, true);
