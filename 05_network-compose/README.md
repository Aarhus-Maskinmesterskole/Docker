# 🌐 05 - Netværk og Docker Compose

I dette modul lærer du, hvordan flere containere kan kommunikere med hinanden via netværk. Vi introducerer også **Docker Compose** til at styre flere containere med én konfigurationsfil.

---

## 🎯 Mål

- Forstå hvordan containere taler sammen via netværk
- Køre flere containere samtidigt
- Bruge `docker-compose` til at orkestrere services

---

## 📁 Struktur

```txt
05_network-compose/
├── docker-compose.yml
├── simple_server/
│   ├── app.py
│   └── requirements.txt
├── README.md
```

---

## 📡 Trin 1: Lav en simpel server (Python)

Inde i `simple_server/app.py`:
```python
from flask import Flask
app = Flask(__name__)

@app.route('/')
def index():
    return "Hej fra container-server!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
```

Og i `simple_server/requirements.txt`:
```txt
flask
```

---

## 🧾 Trin 2: Skriv docker-compose.yml

```yaml
version: '3.9'

services:
  web:
    build: ./simple_server
    ports:
      - "5000:5000"
```

---

## ⚙️ Trin 3: Build og run med Compose

```bash
docker compose up --build
```

- `--build`: bygger imaget hvis nødvendigt
- `up`: starter alle services

Når det kører, åbne din browser og gå til:
```
http://localhost:5000
```
Du bør se:
```
Hej fra container-server!
```

---

## 🧼 Trin 4: Stop og ryd op

```bash
docker compose down
```

---

## 🧠 Hvad gør Compose nemmere?

- Du slipper for lange `docker run`-kommandoer
- Du kan definere flere containere i én fil
- Du kan nemt tilføje netværk, volumes og miljøvariabler

---

## ✅ Du har nu:

- Kørt en webserver i en container
- Tilgået den via din browser
- Brug Docker Compose til at automatisere opsætning

---

## 🏁 Næste trin

Gå videre til `06_opdatering-af-containers/README.md` og lær at opdatere og genbygge dine containere 🔄

