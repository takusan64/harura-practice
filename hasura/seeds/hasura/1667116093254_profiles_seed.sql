SET check_function_bodies = false;
INSERT INTO public.profiles (id, name, description) VALUES (1, 'Taro', 'hoge');
INSERT INTO public.profiles (id, name, description) VALUES (2, 'Yuta', 'hoge');
INSERT INTO public.profiles (id, name, description) VALUES (3, 'Jiro', 'hoge');
SELECT pg_catalog.setval('public.profiles_id_seq', 3, true);
