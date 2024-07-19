from pydantic import BaseModel
from typing import List, Optional

class Buku(BaseModel):
    judul: str
    penulis: str
    penerbit: Optional[str] = None
    tahun_terbit: Optional[int] = None
    konten: List[str]
    iktisar: Optional[str] = None

    def read(self, halaman: int) -> str:
        return "\n".join(self.konten[:halaman])

    def __str__(self) -> str:
        return f"{self.judul} by {self.penulis}"
