from fastapi import FastAPI, HTTPException
import logging
from models import Buku
from database import get_db_connection, init_db

logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Welcome to the Perpustakaan API"}

@app.post("/buku/")
def create_buku(buku: Buku):
    connection = get_db_connection()
    cursor = connection.cursor()
    cursor.execute("""
        INSERT INTO buku (judul, penulis, penerbit, tahun_terbit, konten, iktisar) 
        VALUES (%s, %s, %s, %s, %s, %s)
    """, (buku.judul, buku.penulis, buku.penerbit, buku.tahun_terbit, "\n".join(buku.konten), buku.iktisar))
    connection.commit()
    cursor.close()
    connection.close()
    logger.info(f"Book '{buku.judul}' by '{buku.penulis}' created.")
    return {"message": "Buku berhasil ditambahkan"}

@app.get("/buku/{buku_id}")
def get_buku(buku_id: int):
    connection = get_db_connection()
    cursor = connection.cursor()
    cursor.execute("SELECT judul, penulis, penerbit, tahun_terbit, konten, iktisar FROM buku WHERE id = %s", (buku_id,))
    result = cursor.fetchone()
    cursor.close()
    connection.close()
    if result:
        buku = Buku(
            judul=result[0],
            penulis=result[1],
            penerbit=result[2],
            tahun_terbit=result[3],
            konten=result[4].split("\n"),
            iktisar=result[5]
        )
        return buku
    else:
        logger.error(f"Book with id '{buku_id}' not found.")
        raise HTTPException(status_code=404, detail="Buku tidak ditemukan")

@app.on_event("startup")
def on_startup():
    init_db()
