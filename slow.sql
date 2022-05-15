BEGIN TRANSACTION;
SELECT message_store.write_message(
  gen_random_uuid()::varchar,
  'foo-1'::varchar,
  'FooSlow'::varchar,
  '{}'::jsonb
);
SELECT pg_sleep(5);
COMMIT TRANSACTION;
