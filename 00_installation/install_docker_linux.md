# 🐧 Installation af Docker på Linux (Ubuntu / Debian)

Denne guide viser dig, hvordan du installerer Docker på en Linux-maskine, typisk Ubuntu 20.04+, 22.04+ eller Debian 11+. Du lærer også at teste installationen og sikre, at du kan køre Docker uden `sudo`.

---

## 🔧 Trin 1: Opdater din pakkeindex og installer forudsætninger

```bash
sudo apt update
sudo apt install -y ca-certificates curl gnupg lsb-release
```

---

## 🔧 Trin 2: Tilføj Docker’s officielle GPG-nøgle

```bash
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
  sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
```

---

## 🔧 Trin 3: Tilføj Docker’s software repository

```bash
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
  https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

> Hvis du bruger Debian, ændr "ubuntu" til "debian" i URL'en ovenfor.

---

## 🔧 Trin 4: Installer Docker Engine og CLI

```bash
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io \
  docker-buildx-plugin docker-compose-plugin
```

---

## ✅ Trin 5: Test Docker

```bash
sudo docker run hello-world
```

Du bør se en besked der starter med:

```
Hello from Docker!
This message shows that your installation appears to be working correctly.
```

---

## 👤 Trin 6 (valgfri, men anbefalet): Brug Docker uden `sudo`

Tilføj din bruger til Docker-gruppen:

```bash
sudo usermod -aG docker $USER
```

Genstart computeren **eller log ud og ind igen**, og prøv:

```bash
docker run hello-world
```

Nu uden `sudo`.

---

## 📌 Ekstra tjek

Se versionerne af Docker og Docker Compose:

```bash
docker --version
docker compose version
```

---

## 🧠 Fejlfinding

| Problem                          | Løsning                                                  |
|----------------------------------|-------------------------------------------------------------|
| "permission denied" ved `docker` | Husk `sudo usermod -aG docker $USER` og genstart            |
| DNS-fejl eller timeouts          | Tjek netværk eller prøv `sudo systemctl restart docker`   |
| "hello-world" virker ikke        | Prøv `docker info` og se om daemon kører                   |

---

## 🏁 Klar til næste trin?

➡️ Gå til `test_installation.md` for at sikre, at alt virker som det skal.

Eller hop videre til `01_hello-world/README.md` og byg din første container! 🚀

