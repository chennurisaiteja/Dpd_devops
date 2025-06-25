# 🚀 DevOps Assignment: NGINX Reverse Proxy + Dockerized Microservices

This project demonstrates a containerized system with two backend services (Golang and Python Flask), all routed through an NGINX reverse proxy using Docker Compose.

---

## 📁 Project Structure

    .
    ├── docker-compose.yml
    ├── test_endpoints.sh                   #  Test all endpoints automatically
    ├── nginx/
    │ ├── nginx.conf                        # NGINX reverse proxy config
    │ └── Dockerfile
    ├── service_1/                          # Go API
    │ ├── main.go
    │ ├── Dockerfile
    │ └── README.md
    ├── service_2/                          # Python Flask API
    │ ├── app.py
    │ ├── Dockerfile
    │ └── README.md
    └── README.md 

---

## 🧰 Requirements

Before we start, make sure we have:

- ✅ [Docker](https://docs.docker.com/get-docker/)
- ✅ [Docker Compose](https://docs.docker.com/compose/install/)
No need to install Go or Python — Docker handles everything.

## ✅ Features

- 🐳 Dockerized services with modular and minimal Dockerfiles
- 🌐 NGINX reverse proxy routing `/service1` and `/service2`
- 🔁 Healthchecks for both backend services
- 📝 Logging via NGINX and application containers
- 🧪 Automated test script to validate all endpoints

---

## ⚙️ Setup Instructions

> 💡 we only need Docker and Docker Compose installed.

### 📦 1. Clone the repository

```bash
git clone https://github.com/chennurisaiteja/dpddevops-assignment.git
cd dpddevops-assignment

🐳 2. Build and run the services
docker-compose up --build -d

🔎 3. Test endpoints in browser or with curl
Copy
Edit
curl http://localhost:8080/service1/ping     # Go service health check
curl http://localhost:8080/service1/hello    # Go service hello
curl http://localhost:8080/service2/ping     # Python service health check
curl http://localhost:8080/service2/hello    # Python service hello

🧪 4. Bonus: Run test script
./test_endpoints.sh

🔍 Logging Clarity
docker logs nginx-proxy
docker logs service1
docker logs service2

To stop the app:
docker-compose down
