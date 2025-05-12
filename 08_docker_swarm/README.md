# 🐳 Docker Network Guide – Bridge vs. Swarm

Denne guide forklarer forskellen mellem almindelige Docker-netværk og Docker Swarm-netværk, og hvordan du arbejder med begge.

---

## 🧱 Del 1: Almindelig Docker-netværk (bridge)

### ✅ Opret netværk
```bash
docker network create iiot-net
```

### ✅ Tilføj eksisterende container til netværket
```bash
docker network connect iiot-net <container-name>
```
Eksempel:
```bash
docker network connect iiot-net nr4000
```

### ✅ Tjek netværksstatus
```bash
docker network inspect iiot-net
```

### ✅ Brug container-navne som DNS internt
Inde i containere på samme netværk kan du bruge:
```text
opc.tcp://aams_test:4840
mqtt://mqtt:1883
amqp://guest:guest@rabbitmq:5672
```

---

## 🐙 Del 2: Docker Swarm-netværk

Docker Swarm bruges til **orkestrering** (multiple hosts, high availability, services).

### ✅ Aktivér Swarm-mode (kun én gang)
```bash
docker swarm init
```

### ✅ Opret et overlay-netværk (kan bruges mellem hosts)
```bash
docker network create \
  --driver overlay \
  --attachable \
  iiot-swarm-net
```

> `--attachable` tillader også almindelige containere at bruge netværket.

### ✅ Start service (Swarm-style)
```bash
docker service create \
  --name myservice \
  --network iiot-swarm-net \
  -p 8080:80 \
  nginx
```

### ✅ Kør almindelig container på Swarm-netværk
```bash
docker run -d --name mydebug \
  --network iiot-swarm-net \
  alpine sleep 9999
```

### ✅ Brug DNS på tværs af services
Hvis `myservice` og `mydebug` er på samme `iiot-swarm-net`, kan du skrive:
```text
curl http://myservice
```

---

## 🔍 Hvornår bruger du hvad?

| Use case                                 | Brug netværkstype       |
|------------------------------------------|--------------------------|
| Lokal udvikling på én maskine            | `bridge` (standard)      |
| Flere containere på samme maskine        | `bridge` med custom net  |
| Flere containere over flere maskiner     | `overlay` i Swarm        |
| Load balancing og service discovery      | `Swarm` services         |
| Eksperiment med microservices internt    | `bridge`                 |

---

## 🧪 Debug kommandoer

### Se alle netværk:
```bash
docker network ls
```

### Se alle services i Swarm:
```bash
docker service ls
```

### Se netværkstrafik:
```bash
docker network inspect <net-name>
```

---

💡 **Tip**: Du kan kombinere almindelige Docker-containere og Swarm services, hvis du bruger `--attachable` overlay-netværk.
