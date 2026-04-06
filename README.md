# 🚀 Jenkins & Docker: Pipeline CI/CD Automatizado

Este repositório contém a implementação de um pipeline de Integração Contínua (CI) e Deploy Contínuo (CD) para uma aplicação web estática baseada em Nginx. O foco principal deste projeto é demonstrar a automação completa do ciclo de vida de um container, desde o commit até o teste de disponibilidade.

---

## 📌 Objetivo do Projeto

Automatizar o build, o gerenciamento de containers e o teste de saúde (healthcheck) de uma aplicação sempre que houver uma alteração no código-fonte via `git push`.

---

## 🏗️ Arquitetura e Fluxo

```mermaid
graph LR
    A[Desenvolvedor] -- git push --> B[GitHub]
    B -- Poll SCM --> C[Jenkins Container]
    C -- Docker Socket --> D[Docker Host]
    D -- Build/Run --> E[App Container]
    E -- Port 8081 --> F[Acesso Web]
    C -- Curl Test --> E
