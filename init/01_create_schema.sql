-- สร้างตาราง task ถ้ายังไม่มี
CREATE TABLE IF NOT EXISTS public.task (
    id SERIAL PRIMARY KEY,
    title VARCHAR NOT NULL,
    description VARCHAR,
    is_done BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW()
);
