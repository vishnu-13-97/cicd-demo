# CI/CD Demo with GitHub Actions, Docker & Kubernetes

A beginner-friendly DevOps project created to learn and practice a basic **CI/CD workflow** using GitHub Actions, Docker, Docker Hub, and Kubernetes.

## 🚀 Project Overview

This project demonstrates how application code can move through a simple CI/CD workflow:

```text
Developer
   ↓
GitHub Repository
   ↓
GitHub Actions
   ↓
Build Docker Image
   ↓
Push Image to Docker Hub
   ↓
Deploy to Kubernetes
```

The application is a simple Python program that prints:

```text
Hello from CI/CD Docker pipeline
```

## 🛠️ Technologies Used

* **Git & GitHub** — Source code management
* **GitHub Actions** — CI/CD automation
* **Python** — Application
* **Docker** — Containerization
* **Docker Hub** — Container image registry
* **Kubernetes** — Container orchestration
* **Minikube** — Local Kubernetes cluster
* **kubectl** — Kubernetes command-line tool

## 📁 Project Structure

```text
cicd-demo/
│
├── .github/
│   └── workflows/
│       └── CI/CD workflow
│
├── app.py
├── Dockerfile
├── app.txt
├── app2.txt
└── README.md
```

## 🔄 CI/CD Workflow

### 1. Code

The Python application is stored in GitHub.

### 2. Continuous Integration

GitHub Actions is used to automate the workflow when changes are pushed to the repository.

The workflow builds the Docker image and performs the required CI steps.

### 3. Docker

The application is packaged into a Docker image using the Dockerfile.

```dockerfile
FROM python:3.12-slim

WORKDIR /app

COPY app.py .

CMD ["python", "app.py"]
```

### 4. Docker Registry

The Docker image can be pushed to Docker Hub so that it can be used by a Kubernetes cluster.

### 5. Kubernetes

The Docker image is deployed to a Kubernetes cluster running locally with Minikube.

The deployment uses multiple replicas to practice Kubernetes deployment and rolling-update concepts.

## 🧪 Run the Application Locally

Clone the repository:

```bash
git clone https://github.com/vishnu-13-97/cicd-demo.git
cd cicd-demo
```

Run the Python application:

```bash
python app.py
```

Expected output:

```text
Hello from CI/CD Docker pipeline
```

## 🐳 Build and Run with Docker

Build the image:

```bash
docker build -t cicd-demo .
```

Run the container:

```bash
docker run cicd-demo
```

Expected output:

```text
Hello from CI/CD Docker pipeline
```

## ☸️ Kubernetes

This project was also used to practice deploying the Docker image to a local Kubernetes cluster using Minikube.

Useful commands:

```bash
kubectl get nodes
kubectl get deployments
kubectl get pods
kubectl get services
```

To inspect the deployment:

```bash
kubectl describe deployment cicd-demo
```

To check application logs:

```bash
kubectl logs <pod-name>
```

## 📚 What I Learned

Through this project, I practiced:

* Git and GitHub workflow
* GitHub Actions
* CI/CD fundamentals
* Docker image creation
* Docker containers
* Docker Hub
* Kubernetes Deployments
* Kubernetes Pods
* Kubernetes Services
* Rolling updates
* Debugging CI/CD and container issues
* Connecting CI/CD concepts with Kubernetes

## 🎯 Purpose

This is a **learning project** built while studying DevOps and CI/CD concepts.

The goal is to understand how source code, containerization, CI/CD automation, and Kubernetes deployment fit together into a single workflow.

## 🔗 Repository

GitHub:

https://github.com/vishnu-13-97/cicd-demo

---

**Built while learning DevOps and CI/CD.**
