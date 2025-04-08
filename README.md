# Node.js CI/CD Pipeline Projects

This repository contains a sample **Node.js web application** used to demonstrate two different CI/CD automation setups:

1. ✅ **GitHub Actions Pipeline** (Task 1)
2. ✅ **Jenkins Pipeline** (Task 2)

Both pipelines automate the process of building, testing, and preparing the app for deployment using **Docker**.

---

## 📁 Project Structure


---

## 🚀 Task 1: GitHub Actions CI/CD Pipeline

### ✅ What We Did

- Created a `.github/workflows/main.yml` file to define a GitHub Actions workflow.
- On every push to the `main` branch:
  1. **Builds** the Docker image
  2. **Logs in** to DockerHub using GitHub Secrets
  3. **Pushes** the Docker image to DockerHub

### 🧰 Tools Used

- GitHub Actions
- Node.js
- Docker
- DockerHub

### 📦 Outcome

A fully automated CI/CD pipeline that deploys code changes directly to DockerHub.

---

## 🚀 Task 2: Jenkins CI/CD Pipeline

### ✅ What We Did Today

- Installed Jenkins on an **AWS EC2 instance**
- Created a `Jenkinsfile` to define a pipeline with:
  1. **Build** step to build Docker image
  2. **Test** step (placeholder)
  3. **Deploy** step (placeholder)
- Set up a **Jenkins Pipeline Job** linked to this GitHub repo
- Triggered builds manually and optionally via webhook

### 🧰 Tools Used

- Jenkins
- AWS EC2
- Docker
- GitHub

### 📦 Outcome

A local Jenkins pipeline that automates the CI process with clear build/test stages and can be extended for deployment.

---

## 🔄 Comparison

| Feature            | GitHub Actions        | Jenkins (Self-Hosted)     |
|--------------------|------------------------|----------------------------|
| Hosted By          | GitHub                 | AWS EC2 (manual setup)     |
| CI/CD as Code      | ✅ `.yml` workflow     | ✅ `Jenkinsfile` (Groovy)   |
| Docker Integration | ✅ DockerHub Push      | ✅ Docker Build (Local)     |
| Setup Complexity   | Easy                   | Medium                     |
| UI & Customization | Basic                  | Highly Customizable        |

---

## 💡 Future Improvements

- Add real unit tests using a framework like `jest`
- Extend Jenkins pipeline to push Docker images
- Add deployment to AWS ECS, Heroku, or Kubernetes
- Use multi-branch pipelines in Jenkins for larger teams

---

## 🙌 Author

[Altrin Jabist](https://github.com/AltrinJabist)

---
