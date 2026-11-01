# 🚀 DevSecOps Pipeline & Kubernetes Project

Мой практический проект по созданию безопасного CI/CD пайплайна с нуля. Демонстрирует внедрение практик **Shift-Left Security** (безопасность на ранних этапах), полный цикл Observability (мониторинг и алертинг) и базовые навыки наступательной безопасности (PenTest).

![DevSecOps Pipeline](https://github.com/ВАШ_ЛОГИН/devsecops-journey/actions/workflows/main.yml/badge.svg)

## 🛡️ Что реализовано в пайплайне (CI/CD):

- **GitHub Actions:** Автоматическая сборка, тестирование и проверка кода при каждом `push`.
- **Container Security (SCA):** 
  - Сборка безопасного Docker-образа (запуск от `non-root` пользователя).
  - Сканирование уязвимостей библиотек с помощью **Trivy** (настроено управление рисками через `.trivyignore`).
- **IaC Security (Terraform):** Проверка инфраструктурного кода на мисконфигурации с помощью **Checkov**.
- **SAST (Code Security):** Статический анализ Python-кода и `Dockerfile` на опасные паттерны (`os.system`, запуск от root) с помощью **Semgrep**.
- **Kubernetes Security:** Валидация YAML-манифестов K8s на наличие опасных настроек (`privileged: true`) с помощью **Trivy**.
- **DAST (Dynamic Security):** Сканирование работающего приложения (OWASP Juice Shop) на уязвимости с помощью **OWASP ZAP** (Baseline Scan).
- **Управление секретами:** Использование **GitHub Secrets** и интеграция с **HashiCorp Vault** (эмуляция) для безопасной передачи данных.

## ☸️ Kubernetes (K8s) & Развертывание:

- Локальный кластер на **Minikube**.
- Написание манифестов **Deployment** и **Service**.
- Запуск Python-приложения (веб-сервер) внутри кластера.
- Настройка `imagePullPolicy` для локальных образов и проброс портов (`port-forward`).

## 📊 Observability (Monitoring & Alerting):

- Локальный стек **Prometheus + Grafana** (через Docker Compose).
- Настроены алерты в **Telegram** (через Bot API) при падении сервисов (проверено на практике).

## 💥 PenTest (Offensive Security):

- Проведение **SQL-инъекции** (SQLi) на уязвимом приложении (OWASP Juice Shop) — подтверждено наличие уязвимости (ошибка `SQLITE_ERROR`).
- Проверка на **XSS** (Cross-Site Scripting) — проверена работа механизмов очистки ввода (санитайзеров).

## ⚙️ Стек технологий:
`GitHub Actions` · `Docker` · `Terraform` · `Kubernetes (Minikube)` · `Trivy` · `Checkov` · `Semgrep` · `OWASP ZAP` · `HashiCorp Vault` · `Prometheus` · `Grafana` · `Linux/macOS Terminal` · `Git`