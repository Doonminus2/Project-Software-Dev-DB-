
<h1 align="center">
  <br>
  <a href="http://www.amitmerchant.com/electron-markdownify"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7Zm15LImGZ4DcerJW3F-_-pvGyLCN-vQs9g&s" alt=" Project Siet Kitl" width=""></a>
  <br>
  Project Software Dev+ DB 
  <br>
  (กลุ่มอาจะยัง)
  <br>
</h1>

<h4 align="center">A Back-end fastapi + SQLModel (ORM)  PostgreSQL made by student of <a href="https://siet.kmitl.ac.th/node/284" target="_blank">SIET KMITL</a>.</h4>

<p align="center">
  <a href="https://fastapi.tiangolo.com/">
    <img src="https://badge.fury.io/py/fastapi.svg?icon=si%3Apython"
         alt="fastapi">
  </a>
  <a href="https://sqlmodel.tiangolo.com/"><img src="https://badge.fury.io/py/sqlmodel.svg"></a>
  
  



> GitHub [@Doonminus2](https://github.com/Doonminus2) &nbsp;&middot;&nbsp;










# Tech Stack  FastAPI App (Python + PostgreSQL + Docker)

โปรเจกต์นี้เป็น API สำหรับจัดการ TODO List โดยใช้ Python, FastAPI, SQLModel และ PostgreSQL ผ่าน Docker

---

## 🧰 เครื่องมือที่ใช้
- 🐍 Python 3.12 นะไม่เอา 3.13.5 
- ⚡ FastAPI (สร้าง API)
- 🐘 PostgreSQL (DB) 
- 🐳 Docker (ตัวช่วยลง DB ของเจคนี้ ตัวนี้โหลดแยก)

- 🛠️ pgAdmin (DBMS ของ Postgre)
- 📦 SQLModel (ORM ง่ายๆ คือเขียน python จัดการ ฐานข้อมูลได้เลยไม่ต้องเขียน SQL แยก Pydantic + SQLAlchemy)

---

## 📦 วิธีติดตั้งและใช้งาน (สำหรับมือใหม่)

### 3️⃣ สร้าง virtual environment (ครั้งเดียว)

```bash
python -m venv venv
```

แล้วเปิดใช้งาน:

- 🪟 บน Windows:
  ```bash
  venv\Scripts\activate
  ```

- 🍎 บน Mac/Linux:
  ```bash
  source venv/bin/activate
  ```

---

### 4️⃣ ติดตั้ง dependency ทั้งหมด

```bash
pip install -r requirements.txt
```

---

### 5️⃣ สร้างไฟล์ `.env`

> สร้างไฟล์ชื่อ `.env` แล้ววางไว้แบบนี้:

```env
จะลองรันเจคทักมาละกัน มัน leak .env ไม่ตลก
```

---

### 6️⃣ สั่งรัน Docker (เปิด PostgreSQL + pgAdmin)

```bash
docker-compose up -d
```

รอให้ container ขึ้น

---

### 7️⃣ รัน ตัว back-end เซิฟ API FastAPI

```bash
uvicorn app.main:app --reload
```

---

### 8️⃣ เปิด API Swagger UI

เปิดเว็บ:  
📄 http://localhost:8000/docs  
→ ลองกดปุ่ม `POST /tasks` เพื่อเพิ่มข้อมูล

---

### 9️⃣ ดูฐานข้อมูลผ่าน pgAdmin

เปิด:  
📄 http://localhost:5050


---

## ✅ แนวทางต่อไป
- เพิ่ม Auth: /register /login

- สร้างระบบ filter / sort / update
- Deploy ขึ้น Railway หรือ Render
