#!/usr/bin/env bash

psql message_store < clear.sql
psql message_store -Umessage_store < slow.sql &
psql message_store -Umessage_store < fast.sql
psql message_store -Umessage_store < read.sql
sleep 5
psql message_store -Umessage_store < read.sql
