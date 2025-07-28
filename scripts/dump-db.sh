#!/bin/bash

# ตั้งชื่อไฟล์ตามวันเวลาปัจจุบัน
DATE=$(date +%Y%m%d_%H%M)
FILENAME="db_backup_${DATE}.sql"

# รัน pg_dump จาก container
docker exec -t todo_postgres pg_dump -U todo -d tododb > backups/$FILENAME

echo "✅ Backup created: backups/$FILENAME"
