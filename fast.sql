SELECT pg_sleep(1);
SELECT message_store.write_message(
  gen_random_uuid()::varchar,
  'foo-2'::varchar,
  'FooFast'::varchar,
  '{}'::jsonb
);
