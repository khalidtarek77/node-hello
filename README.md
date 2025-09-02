# Node Hello 🌍

A simple Node.js HTTP server containerized with Docker and deployable using Terraform.

---

## 🚀 Features

- Minimal Node.js server that responds with "Hello Node!"
- Dockerized for easy container deployment
- Infrastructure as Code with Terraform (Docker provider)
- ESLint for code quality
- GitHub Actions CI/CD for linting and container build/push

---

## 🛠 Prerequisites

- [Node.js](https://nodejs.org/) (v18+)
- [Docker](https://docs.docker.com/get-docker/)
- [Terraform](https://developer.hashicorp.com/terraform/downloads)
- [Git](https://git-scm.com/)

---

## 🏃‍♂️ Local Development

1. **Clone the repository**
   ```sh
   git clone https://github.com/khalidtarek77/node-hello.git
   cd node-hello
   ```

2. **Install dependencies**
   ```sh
   npm install
   ```

3. **Run the app**
   ```sh
   node index.js
   ```
   The app will be available at [http://localhost:3000](http://localhost:3000).

---

## 🐳 Docker

**Build the Docker image:**
```sh
docker build -t node-hello .
```

**Run the container:**
```sh
docker run -p 3000:3000 node-hello
```
Access the app at [http://localhost:3000](http://localhost:3000).

---

## 🧹 Linting

This project uses ESLint for code quality.

- **Run linter:**
  ```sh
  npm run lint
  ```
- **Auto-fix issues:**
  ```sh
  npx eslint . --fix
  ```

---

## 🔄 CI/CD

- GitHub Actions workflow: [`.github/workflows/ci-cd.yaml`](.github/workflows/ci-cd.yaml)
- Pipeline runs on every push and PR to `master`
- Steps:
  - Lint code
  - Build and push Docker image to GHCR

---

## 🌍 Deploy with Terraform

1. **Navigate to the Terraform directory:**
   ```sh
   cd terraform
   ```

2. **Initialize Terraform:**
   ```sh
   terraform init
   ```

3. **Review the plan:**
   ```sh
   terraform plan
   ```

4. **Apply the configuration:**
   ```sh
   terraform apply -auto-approve
   ```

   The container will run on port 3000: [http://localhost:3000](http://localhost:3000)

5. **Destroy resources:**
   ```sh
   terraform destroy -auto-approve
   ```

---

## 📂 Project Structure

```
node-hello/
  ├── index.js           # Node.js server
  ├── package.json       # NPM config
  ├── Dockerfile         # Docker build instructions
  ├── .dockerignore      # Docker ignore rules
  ├── .eslintrc.json     # ESLint config
  ├── .prettierrc        # Prettier config
  ├── .github/
  │   └── workflows/
  │       └── ci-cd.yaml # GitHub Actions workflow
  └── terraform/         # Terraform IaC files
```

---