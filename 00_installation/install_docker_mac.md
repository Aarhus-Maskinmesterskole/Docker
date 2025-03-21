# 🍎 Installation af Docker på macOS

Denne guide viser dig, hvordan du installerer Docker Desktop på en Mac-computer, og hvordan du tester installationen bagefter. Guiden virker for både Intel-baserede og Apple Silicon (M1/M2) Macs.

---

## 🔧 Trin 1: Download Docker Desktop

1. Gå til den officielle downloadside:
   [https://www.docker.com/products/docker-desktop](https://www.docker.com/products/docker-desktop)

2. Vælg din version:
   - **Intel Mac:** Vælg "Mac with Intel chip"
   - **Apple Silicon (M1/M2):** Vælg "Mac with Apple chip"

3. Download `.dmg`-filen og åbn den.

4. Træk Docker-ikonet over i "Applications"-mappen.

5. Start Docker Desktop fra "Applications".

> Første gang du starter Docker, kan macOS bede om tilladelser. Klik "OK" og giv evt. adgang via Systemindstillinger.

---

## ⏳ Trin 2: Vent på at Docker starter

Du vil se en hval-ikon i din menulinje (topbar). Vent til den siger:
```
Docker Desktop is running
```

---

## ✅ Trin 3: Test installationen

Åbn din terminal (Spotlight → skriv "Terminal") og kør:

```bash
docker run hello-world
```

Hvis alt virker, ser du:
```
Hello from Docker!
This message shows that your installation appears to be working correctly.
```

---

## 👤 Valgfrit: Aktiver "Use Rosetta" for CLI (kun M1/M2)

Hvis du bruger Apple Silicon og oplever problemer med visse images, så:

1. Gå til "Applications" → find Terminal
2. Højreklik → "Get Info"
3. Sæt flueben i "Open using Rosetta"

Dette kan forbedre kompatibilitet med nogle ældre CLI-tools.

---

## 📌 Ekstra tjek

Se versioner:

```bash
docker --version
docker compose version
```

---

## 🧠 Fejlfinding

| Problem                           | Løsning                                                        |
|-----------------------------------|-----------------------------------------------------------------|
| "Docker Desktop not running"      | Tjek at Docker er startet fra Applications                     |
| "permission denied" eller fejl     | Prøv at genstarte din Mac og prøv igen                          |
| CLI-problemer på M1/M2            | Prøv Rosetta eller brug images der understøtter ARM64          |
| Netværksproblemer eller DNS-fejl  | Gå til Docker → Settings → Network og nulstil til default   |

---

## 🏁 Klar til næste trin?

➡️ Gå til `test_installation.md` og kontroller at alt virker.

Derefter er du klar til `01_hello-world/README.md` 🚀

