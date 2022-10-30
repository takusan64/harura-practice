
CREATE TABLE "public"."users" ("id" text NOT NULL, "name" text NOT NULL, PRIMARY KEY ("id") );

alter table "public"."users" add column "created_at" timestamptz
 null default now();

alter table "public"."users" add column "last_seen" timestamptz
 null;

CREATE TABLE "public"."todos" ("id" serial NOT NULL, "title" text NOT NULL, "is_completed" boolean NOT NULL DEFAULT false, "is_public" boolean NOT NULL DEFAULT false, "created_at" timestamptz NOT NULL DEFAULT now(), "user_id" text NOT NULL, PRIMARY KEY ("id") );

alter table "public"."todos"
  add constraint "todos_user_id_fkey"
  foreign key ("user_id")
  references "public"."users"
  ("id") on update restrict on delete restrict;

CREATE OR REPLACE VIEW "public"."online_users" AS
 SELECT users.id,
    users.last_seen
   FROM users
  WHERE (users.last_seen >= (now() - '00:00:30'::interval));
