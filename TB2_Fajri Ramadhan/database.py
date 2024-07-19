import mysql.connector

def get_db_connection():
    connection = mysql.connector.connect(
        host="localhost",
        user="root",  
        password="",  
        database="perpustakaan"
    )
    return connection

def init_db():
    connection = get_db_connection()
    cursor = connection.cursor()
    cursor.execute("""
        CREATE TABLE IF NOT EXISTS buku (
            id INT AUTO_INCREMENT PRIMARY KEY,
            judul VARCHAR(255) NOT NULL,
            penulis VARCHAR(255) NOT NULL,
            penerbit VARCHAR(255),
            tahun_terbit INT,
            konten TEXT,
            iktisar TEXT
        )
    """)
    connection.commit()
    cursor.close()
    connection.close()
