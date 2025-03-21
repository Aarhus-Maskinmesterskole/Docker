# 🐍 03 - Kør Python i en Docker-container

I dette modul skal du bygge et Docker-image, der indeholder Python, og kører et simpelt Python-script. Det er her, vi begynder at kombinere Docker med programmering!

---

## 🎯 Mål

- Bruge et officielt Python-image
- Køre en `.py`-fil inde i en container
- Forstå hvordan `requirements.txt` bruges i Docker

---

## 📁 Struktur

```txt
03_dockerfile-python/
├── Dockerfile
├── requirements.txt
├── main.py
└── README.md
```

---

## 🐍 Trin 1: Opret main.py

```python
print("Hej fra Python i Docker!")
```

---

## 📦 Trin 2: Opret requirements.txt

Hvis du har eksterne biblioteker (fx matplotlib, numpy), skriv dem her. Til test kan vi starte med:

```
# requirements.txt
```

Den kan også være tom.

---

## 🧱 Trin 3: Skriv Dockerfile

```dockerfile
FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "main.py"]
```

Forklaring:
- `FROM`: henter officiel python-base
- `WORKDIR`: sætter arbejdsmappe
- `COPY`: kopierer dependencies og kode
- `CMD`: starter scriptet

---

## 🔨 Trin 4: Byg og kør containeren

```bash
docker build -t python-app .
docker run python-app
```

Output:
```
Hej fra Python i Docker!
```

---

## 🧪 Ekstra: Tilføj bibliotek og brug det

Opdater `requirements.txt`:
```txt
requests
```

Opdater `main.py`:
```python
import requests
print("Statuskode fra example.com:", requests.get("https://example.com").status_code)
```

Byg og kør igen:
```bash
docker build -t python-requests .
docker run python-requests
```

---

## ✅ Du har nu:

- Kørt Python fra en container
- Installeret dependencies med pip
- Forstået Dockerfile for Pythonprojekter

---

## 🏁 Næste trin

Videre til `04_volume-mounts/README.md`, hvor du lærer at dele filer mellem host og container 📂

