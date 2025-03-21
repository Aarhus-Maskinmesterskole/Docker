# 🪟 Installation af Docker på Windows 10/11

Denne guide viser dig, hvordan du installerer Docker Desktop på Windows 10 eller 11, og hvordan du tester installationen. Docker Desktop er den anbefalede måde at bruge Docker på Windows.

---

## 🔧 Trin 1: Systemkrav

- Windows 10 64-bit: Pro, Enterprise eller Education (Build 19044+)
- Windows 11: Alle versioner (Home/Pro)
- Aktiveret **virtualisering** i BIOS
- WSL 2 (Windows Subsystem for Linux version 2)

---

## 🔧 Trin 2: Installer WSL 2 (hvis du ikke har det)

Åbn PowerShell som administrator og kør:

```powershell
wsl --install
```

Genstart computeren hvis du bliver bedt om det.

---

## 🔧 Trin 3: Download og installer Docker Desktop

1. Gå til [https://www.docker.com/products/docker-desktop](https://www.docker.com/products/docker-desktop)
2. Klik "Download for Windows (WSL2)"
3. Kør `.exe`-filen og følg installationsvejledningen
4. Sæt flueben i:
   - "Use WSL 2 instead of Hyper-V"
   - "Add shortcut to desktop"

---

## 🧊 Trin 4: Start Docker Desktop

- Start programmet fra skrivebordet eller Start-menuen
- Du vil se Docker-ikonet (hval) i systembakken
- Vent på "Docker Desktop is running"

---

## ✅ Trin 5: Test installationen

Åbn en **CMD**, **PowerShell** eller **Windows Terminal** og kør:

```bash
docker run hello-world
```

Hvis alt virker, ser du:
```
Hello from Docker!
This message shows that your installation appears to be working correctly.
```

---

## 📌 Ekstra tjek

Se versioner af Docker og Compose:

```bash
docker --version
docker compose version
```

---

## 🧠 Fejlfinding

| Problem                                  | Løsning                                                      |
|------------------------------------------|-----------------------------------------------------------------|
| "Docker Desktop requires WSL 2"          | Kør `wsl --install` og genstart                               |
| "Docker is not running"                  | Tjek systembakken og start programmet manuelt                 |
| "permission denied" eller fejl            | Kør terminal som administrator eller genstart Docker Desktop  |
| Netværksproblemer eller DNS-fejl         | Gå til Docker → Settings → Network og nulstil til default |

---

## 🏁 Klar til næste trin?

➡️ Gå til `test_installation.md` og kontroller at alt virker.

Så er du klar til `01_hello-world/README.md` 🚀

