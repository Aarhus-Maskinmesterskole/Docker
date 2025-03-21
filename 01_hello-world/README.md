# 🐳 01 - Hello World med Docker

Velkommen til din første Docker-oplevelse! I denne øvelse skal du bruge en færdiglavet Docker-container for at prøve, hvordan det fungerer i praksis. Dette er din "Hello World" med Docker.

---

## 🎯 Mål

- Lære at køre en Docker-container
- Forstå hvad et image er, og hvordan det bruges
- Blive komfortabel med terminalkommandoer i Docker

---

## 🧰 Forudsætninger

✅ Docker skal være installeret og testet. Hvis du ikke allerede har gjort det, gå tilbage til `00_installation/` og kør `test_installation.md`

---

## 🚀 Trin 1: Kør din første container

I terminalen, skriv:

```bash
docker run hello-world
```

Docker vil hente et lille image fra internettet og køre det. Outputtet bør starte med:

```
Hello from Docker!
This message shows that your installation appears to be working correctly.
```

---

## 📦 Hvad sker der bag kulisserne?

- `docker run` = fortæl Docker, at du vil køre en container
- `hello-world` = navnet på et officielt image på [Docker Hub](https://hub.docker.com/)
- Docker downloader image hvis det ikke findes lokalt
- Containeren starter, udskriver en besked, og lukker ned

---

## 🔍 Trin 2: Se aktive og tidligere containere

### Aktive containere (ingen burde være aktive nu):
```bash
docker ps
```

### Alle containere (også afsluttede):
```bash
docker ps -a
```

---

## 🧹 Trin 3: Ryd op (valgfrit)

### Slet en afsluttet container:
```bash
docker rm <CONTAINER_ID>
```

### Slet image:
```bash
docker rmi hello-world
```

---

## 🧠 Ekstra: Se detaljer om image

```bash
docker images
```

Dette viser hvilke images du har på systemet.

---

## ✅ Du har nu:

- Kørt din første container
- Set hvordan Docker henter og kører et image
- Brugt grundlæggende kommandoer som `run`, `ps`, `images`, `rm`, `rmi`

---

## 🏁 Næste trin

Gå videre til `02_custom-image/README.md` og lav dit første eget Docker-image! 🛠️

