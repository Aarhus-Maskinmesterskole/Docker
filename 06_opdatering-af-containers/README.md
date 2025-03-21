# 🔄 06 - Opdatering og genbrug af Docker-containere

I dette modul lærer du, hvordan du opdaterer eksisterende containere ved at ændre kode og bygge nye versioner. Du lærer også, hvordan du navngiver versioner og holder dine builds organiserede.

---

## 🎯 Mål

- Foretage ændringer i et containerprojekt
- Genbygge et Docker-image
- Køre og teste den nye version

---

## 📁 Struktur

```txt
06_opdatering-af-containers/
├── Dockerfile
├── ny_version.py
├── README.md
```

---

## 🐍 Trin 1: Lav et simpelt Python-script

Indhold i `ny_version.py`:
```python
print("Dette er version 1 af scriptet.")
```

---

## 🧱 Trin 2: Opret Dockerfile

```dockerfile
FROM python:3.12-slim

WORKDIR /app

COPY ny_version.py .

CMD ["python", "ny_version.py"]
```

---

## 🔨 Trin 3: Byg og kør din første version

```bash
docker build -t min-app:v1 .
docker run min-app:v1
```

Output:
```
Dette er version 1 af scriptet.
```

---

## ✏️ Trin 4: Ændr scriptet

Rediger `ny_version.py`:
```python
print("Dette er version 2 af scriptet!")
```

---

## 🔁 Trin 5: Byg ny version

```bash
docker build -t min-app:v2 .
docker run min-app:v2
```

Output:
```
Dette er version 2 af scriptet!
```

---

## 🧠 Tip: Håndtering af flere versioner

- Brug `docker images` for at se alle dine builds
- Brug `docker rmi` for at slette gamle versioner
- Brug `docker tag` hvis du vil kopiere et image under nyt navn

---

## ✅ Du har nu:

- Lært at lave ændringer og genbygge dit image
- Brug Docker tags til versionering (`v1`, `v2`, osv.)
- Testet forskellen mellem versioner

---

## 🏁 Næste trin

Afslut med `07_mini-projekt/README.md` hvor du selv skal bygge og dokumentere din egen container! 🎓