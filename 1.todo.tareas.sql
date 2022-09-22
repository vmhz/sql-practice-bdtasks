

--Create table todo

CREATE TABLE public.todo
(
    todo_id uuid NOT NULL,
    name text,
    categories character varying(50) NOT NULL,
    is_completed boolean NOT NULL DEFAULT false,
    remember_me date,
    created timestamp(2) without time zone NOT NULL,
    notes text,
    is_archived boolean,
    expiration date,
    PRIMARY KEY (todo_id)
);

ALTER TABLE IF EXISTS public.todo
    OWNER to postgres;

--Insert data into the todo table
INSERT INTO public.todo(
	todo_id, name, categories, is_completed, remember_me, created, notes, is_archived, expiration)
	VALUES (uuid_generate_v4(), 
			'Hacer la asignación del profe', 
			'General', false, '2022-09-21', '2022-09-21', 'Sin notas', false, '2022-09-22');


--Second query for Inserting data
INSERT INTO public.todo(
	todo_id, name, categories, is_completed, remember_me, created, notes, is_archived, expiration)
	VALUES (uuid_generate_v4(), 
			'Estudiar Posgres', 
			'General', false, '2022-09-22', '2022-09-21', 'Sin descripcion', false, '2022-09-22');

--Third query for inserting data
INSERT INTO public.todo(
	todo_id, name, categories, is_completed, remember_me, created, notes, is_archived, expiration)
	VALUES (uuid_generate_v4(), 
			'Estudiar RAFCE', 
			'General', true, '2022-09-22', '2022-09-21', 'Sin descripcion', false, '2022-09-22');

--Query for selecting data
SELECT todo_id, name, categories, is_completed, remember_me, created, notes, is_archived, expiration
	FROM public.todo;

--Query for selecting specific data
SELECT * FROM public.todo WHERE is_completed=true;
