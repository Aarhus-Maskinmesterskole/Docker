# 🛠️ 02 - Byg dit eget Docker-image

I dette modul skal du bygge dit første **Docker-image** fra bunden. Du skal oprette en `Dockerfile`, der definerer, hvordan din container skal se ud og hvad den skal udføre.

---

## 🎯 Mål

- Forstå hvad et Dockerfile er
- Lære at bygge egne images med `docker build`
- Køre din egen container baseret på det image du har lavet

---

## 📁 Struktur

```txt
02_custom-image/
├── Dockerfile
├── run.sh
└── README.md
```

---

## 🧱 Trin 1: Opret din Dockerfile

Opret en fil kaldet `Dockerfile` med følgende indhold:

```dockerfile
FROM alpine:latest

RUN echo "Hej fra din egen container!" > /velkomst.txt

CMD ["cat", "/velkomst.txt"]
```

Forklaring:
- `FROM` starter med et simpelt image (Alpine Linux)
- `RUN` kører en kommando under build og gemmer output i en fil
- `CMD` definerer hvad der sker, når containeren køres

---

## 🔨 Trin 2: Byg dit image

```bash
docker build -t mit-image .
```

Forklaring:
- `-t mit-image` giver dit image et navn
- `.` betyder "brug Dockerfile i denne mappe"

---

## 🚀 Trin 3: Kør din container

```bash
docker run mit-image
```

Forventet output:
```
Hej fra din egen container!
```

---

## 🔍 Trin 4: Undersøg resultatet

- Se dit image:
```bash
docker images
```

- Se containerhistorik:
```bash
docker ps -a
```

---

## 🧪 Ekstra: Lav en shell-script version (valgfrit)

I filen `run.sh` kan du skrive:

```bash
#!/bin/sh
echo "Hej fra run.sh!"
```

Opdater din `Dockerfile` til:

```dockerfile
FROM alpine
COPY run.sh /run.sh
RUN chmod +x /run.sh
CMD ["/run.sh"]
```

Byg og kør igen:
```bash
docker build -t mit-script .
docker run mit-script
```

---

## ✅ Du har nu:

- Skabt et Dockerfile fra bunden
- Bygget et image med `docker build`
- Kørt din egen container

---

## 🏁 Næste trin

Gå videre til `03_dockerfile-python/README.md` og lær at køre Python i en container 🐍