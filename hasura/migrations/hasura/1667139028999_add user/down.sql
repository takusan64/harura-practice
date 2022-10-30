
-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- CREATE OR REPLACE VIEW "public"."online_users" AS
--  SELECT users.id,
--     users.last_seen
--    FROM users
--   WHERE (users.last_seen >= (now() - '00:00:30'::interval));

alter table "public"."todos" drop constraint "todos_user_id_fkey";

DROP TABLE "public"."todos";

-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- alter table "public"."users" add column "last_seen" timestamptz
--  null;

-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- alter table "public"."users" add column "created_at" timestamptz
--  null default now();

DROP TABLE "public"."users";
