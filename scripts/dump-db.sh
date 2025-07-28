#!/bin/bash
docker exec -t todo_postgres pg_dump -U todo -d tododb --data-only --inserts > init/init.sql
echo "✅ Updated init/init.sql from live DB"
