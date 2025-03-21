# ✅ Test af Docker-installation

Dette dokument guider dig gennem, hvordan du tester om Docker er korrekt installeret og fungerer som forventet på din maskine.

Disse trin virker på **Windows**, **macOS** og **Linux**.

---

## 🧪 Trin 1: Åbn en terminal

- **Windows**: Brug PowerShell, CMD eller Windows Terminal
- **macOS**: Brug Terminal
- **Linux**: Brug din foretrukne terminal (fx GNOME Terminal, Konsole)

---

## 🐳 Trin 2: Kør hello-world-containeren

```bash
docker run hello-world
```

### Forventet output:

```
Hello from Docker!
This message shows that your installation appears to be working correctly.
...
```

Hvis du ser denne besked, er Docker korrekt installeret og kører 🎉

---

## 🔍 Trin 3: Tjek versioner

Kør disse kommandoer for at se om Docker og Docker Compose er korrekt tilgængelige:

```bash
docker --version
docker compose version
```

Du bør se noget ala:
```
Docker version 24.x.x, build abcdef
Docker Compose version v2.x.x
```

---

## 🧠 Fejlfinding

| Problem                                  | Løsning                                                      |
|------------------------------------------|-----------------------------------------------------------------|
| "docker: command not found"              | Docker er ikke korrekt installeret. Tjek installationsguiden.   |
| "permission denied" (Linux)              | Prøv `sudo docker run hello-world` eller tilføj dig til docker-gruppen |
| "Docker is not running"                  | Tjek at Docker Desktop er startet og kører                     |
| "Cannot connect to the Docker daemon"   | Prøv `sudo systemctl start docker` (Linux)                     |

---

## 🏁 Næste trin

Hvis alt virker:

➡️ Fortsæt til `01_hello-world/README.md` og byg din første egen container! 🚀