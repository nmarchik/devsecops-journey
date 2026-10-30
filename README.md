# 🚀 DevSecOps Pipeline Project

Мой практический проект по созданию безопасного CI/CD пайплайна с нуля на GitHub Actions. Проект демонстрирует внедрение практик **Shift-Left Security** (безопасность на ранних этапах) и полный цикл Observability.

## 🛡️ Что реализовано в пайплайне:

- **CI/CD (GitHub Actions):** Автоматическая сборка, тестирование и проверка кода при каждом `push`.
- **Docker & Container Security (SCA):** 
  - Сборка безопасного Docker-образа (запуск от `non-root` пользователя).
  - Сканирование уязвимостей библиотек с помощью **Trivy**. 
  - Настроено управление рисками (файл `.trivyignore`).
- **IaC Security (Infrastructure as Code):** 
  - Проверка Terraform-кода на мисконфигурации (публичные S3-бакеты и т.д.) с помощью **Checkov**.
- **SAST (Code Security):** 
  - Статический анализ Python-кода и `Dockerfile` на опасные паттерны (`os.system`, запуск от root) с помощью **Semgrep**.
- **Kubernetes Security:** 
  - Валидация YAML-манифестов K8s на наличие опасных настроек (`privileged: true`) с помощью **Trivy**.
- **DAST (Dynamic Application Security Testing):** 
  - Сканирование работающего приложения (OWASP Juice Shop) на уязвимости с помощью **OWASP ZAP** (Baseline Scan).
- **Управление секретами:**
  - Использование встроенных **GitHub Secrets** для безопасной передачи данных.
  - Интеграция с **HashiCorp Vault** (эмуляция): запуск Vault в Docker, запись и чтение секретов через CLI.
- **Monitoring & Alerting (Observability):**
  - Локальный стек **Prometheus + Grafana** (через Docker Compose).
  - Настроены алерты в **Telegram** (через Bot API) при падении сервисов.

## ⚙️ Стек технологий:
`GitHub Actions` · `Docker` · `Terraform` · `Kubernetes` · `Trivy` · `Checkov` · `Semgrep` · `OWASP ZAP` · `HashiCorp Vault` · `Prometheus` · `Grafana` · `Linux/macOS Terminal` · `Git`

## 📈 Результат:
Пайплайн автоматически блокирует слияние кода (Merge Request), если в нем обнаружены критичные уязвимости в контейнерах, инфраструктуре, коде или конфигурации K8s.