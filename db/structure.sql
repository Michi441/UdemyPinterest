CREATE TABLE "schema_migrations" ("version" varchar NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE TABLE "pins" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar, "description" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "user_id" integer, "image_file_name" varchar, "image_content_type" varchar, "image_file_size" integer, "image_updated_at" datetime);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar DEFAULT '' NOT NULL, "encrypted_password" varchar DEFAULT '' NOT NULL, "reset_password_token" varchar, "reset_password_sent_at" datetime, "remember_created_at" datetime, "sign_in_count" integer DEFAULT 0 NOT NULL, "current_sign_in_at" datetime, "last_sign_in_at" datetime, "current_sign_in_ip" varchar, "last_sign_in_ip" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "name" varchar, "image_file_name" varchar, "image_content_type" varchar, "image_file_size" integer, "image_updated_at" datetime);
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token");
INSERT INTO schema_migrations (version) VALUES ('20160929123203');

INSERT INTO schema_migrations (version) VALUES ('20161002130245');

INSERT INTO schema_migrations (version) VALUES ('20161002131339');

INSERT INTO schema_migrations (version) VALUES ('20161002132405');

INSERT INTO schema_migrations (version) VALUES ('20161003091641');

INSERT INTO schema_migrations (version) VALUES ('20161003092712');

