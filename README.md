# 🚀 Projeto Jenkins + Docker CI/CD

Este projeto demonstra a implementação de um pipeline de **Integração Contínua e Deploy Automatizado** utilizando Jenkins, Docker e GitHub.

---

## 📌 Objetivo

Automatizar o processo de:

* Build da aplicação
* Criação de containers
* Subida do ambiente automaticamente

Tudo isso a partir de um simples `git push`.

---

## 🧱 Tecnologias utilizadas

* 🐳 Docker
* 📦 Docker Compose
* 🔧 Jenkins
* 🌐 GitHub
* 💻 Linux

---

## ⚙️ Arquitetura

```text
GitHub → Jenkins → Docker Compose → Aplicação rodando
```

---

## 🔄 Fluxo do Pipeline

1. Alteração no código
2. `git push`
3. Jenkins detecta mudança (Poll SCM)
4. Pipeline executa:

   * Checkout
   * Build
   * Deploy

---

## 🛠️ Pipeline (Jenkinsfile)

O pipeline está definido como código no arquivo:

```bash
Jenkinsfile
```

---

## ▶️ Como executar localmente

### Subir aplicação

```bash
docker-compose up -d
```

---

## 🤖 Execução automatizada (CI/CD)

Trigger configurado:

```bash
Poll SCM (H/5 * * * *)
```

---

## 📁 Estrutura do projeto

```text
.
├── Jenkinsfile
├── docker-compose.yml
├── Dockerfile
└── app/
```

---

## 💡 Aprendizados

* CI/CD na prática
* Infraestrutura como código
* Automação com Jenkins
* Containers com Docker

---

## 🚀 Próximos passos

* [ ] Deploy em nuvem
* [ ] Webhook no lugar de Poll SCM
* [ ] Testes automatizados

---

## 👨‍💻 Autor

Alison Melo
https://github.com/alison-melo

