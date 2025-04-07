# nodejs-demo-app
# Node.js CI/CD Pipeline with Docker and GitHub Actions

This project demonstrates how to automate the deployment of a Node.js web application using a CI/CD pipeline built with **GitHub Actions** and **Docker**.

## 🚀 What This Does

Every time you push code to the `main` branch:

1. The app is automatically **built** using Docker.
2. The Docker image is **tagged** and pushed to **DockerHub**.
3. All of this happens through a **GitHub Actions workflow**.

---

## 🛠️ Tools & Technologies

- **Node.js**: Sample web application.
- **Docker**: Containerizes the application.
- **GitHub Actions**: Automates the CI/CD process.
- **DockerHub**: Stores the built Docker images.

---

## 📁 Project Structure

---

## 🔐 GitHub Secrets Setup

We created two **repository secrets** in GitHub:

| Secret Name       | Description                            |
|-------------------|----------------------------------------|
| `DOCKER_USERNAME` | Your DockerHub username                |
| `DOCKER_PASSWORD` | DockerHub access token with write access |

You can add these by going to:
**GitHub → Repo → Settings → Secrets and Variables → Actions → New Repository Secret**

---

## 🔁 Workflow Overview

Here’s what the GitHub Actions workflow does:

```yaml
on:
  push:
    branches: [ "main" ]  # Trigger only on pushes to main

jobs:
  build-and-push:
    runs-on: ubuntu-latest

    steps:
    - name: Checkout code
      uses: actions/checkout@v3

    - name: Set up Docker
      uses: docker/setup-buildx-action@v3

    - name: Build Docker image
      run: docker build -t yourusername/nodejs-demo-app .

    - name: Log in to DockerHub
      run: echo "${{ secrets.DOCKER_PASSWORD }}" | docker login -u "${{ secrets.DOCKER_USERNAME }}" --password-stdin

    - name: Push Docker image
      run: docker push yourusername/nodejs-demo-app

Built by **altrinjabist**
For internship learning & hands-on DevOps practice ✨
