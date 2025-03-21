# 📂 04 - Volume mounts: Deling af filer mellem host og container

I dette modul lærer du at dele filer mellem din egen computer (host) og en Docker-container. Det kaldes et **volume mount** og gør det muligt at arbejde med kode uden at genbygge imaget.

---

## 🎯 Mål

- Forstå hvad et volume mount er
- Køre kode direkte fra din egen mappe i en container
- Lave ændringer i realtid uden at bygge igen

---

## 🧠 Hvorfor bruge mounts?

Med `docker run -v` kan du dele mapper mellem din maskine og en container:
- Du kan ændre filer på din maskine, og containeren bruger dem straks
- Perfekt til udvikling og test uden rebuilds

---

## 📁 Struktur

```txt
04_volume-mounts/
├── host_app/
│   └── app.py
├── run_docker.sh
└── README.md
```

---

## 🐍 Trin 1: Skriv et simpelt Python-script

Inde i `host_app/app.py`:
```python
print("Dette kører fra en delt mappe!")
```

---

## 🐳 Trin 2: Kør Python fra et officielt image

```bash
docker run -v $(pwd)/host_app:/app -w /app python:3.12-slim python app.py
```

Forklaring:
- `-v`: volume mount – din mappe på hosten bliver til `/app` i containeren
- `-w`: working directory inde i containeren
- `python:3.12-slim`: base image med Python
- `python app.py`: kør scriptet

> På Windows kan du bruge PowerShell:
> ```powershell
> docker run -v ${PWD}\host_app:/app -w /app python:3.12-slim python app.py
> ```

---

## 🔁 Trin 3: Ret og genkør

Prøv at ændre teksten i `app.py`, og kør kommandoen igen. Du behøver **ikke bygge noget**!

---

## 🧪 Ekstra: Brug et bash-script til at starte

Indhold i `run_docker.sh`:
```bash
#!/bin/bash
docker run -v $(pwd)/host_app:/app -w /app python:3.12-slim python app.py
```

Gør scriptet eksekverbart:
```bash
chmod +x run_docker.sh
./run_docker.sh
```

---

## ✅ Du har nu:

- Kørt Python fra en delt mappe uden Dockerfile
- Lært at bruge `-v` og `-w`
- Fået mulighed for hurtig udvikling og test

---

## 🏁 Næste trin

Gå videre til `05_network-compose/README.md` og lær hvordan containere kan tale sammen over netværk 🌐