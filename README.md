# 🚀 DevSecOps Pipeline Project

Мой практический проект по созданию безопасного CI/CD пайплайна с нуля на GitHub Actions. Проект демонстрирует внедрение практик **Shift-Left Security** (безопасность на ранних этапах).

## 🛡️ Что реализовано в пайплайне:

- **Docker & SCA (Container Security):** 
  - Сборка безопасного Docker-образа (запуск от `non-root` пользователя).
  - Сканирование уязвимостей библиотек с помощью **Trivy**. 
  - Настроено управление рисками (файл `.trivyignore`).
- **IaC Security (Infrastructure as Code):** 
  - Проверка Terraform-кода на мисконфигурации (публичные S3-бакеты и т.д.) с помощью **Checkov**.
- **SAST (Code Security):** 
  - Статический анализ Python-кода и `Dockerfile` на опасные паттерны (`os.system`, запуск от root) с помощью **Semgrep**.
- **Kubernetes Security:** 
  - Валидация YAML-манифестов K8s на наличие опасных настроек (`privileged: true`) с помощью **Trivy**.
- **Управление секретами:**
  - Использование встроенных **GitHub Secrets** для безопасной передачи данных в пайплайн.
  - Интеграция с **HashiCorp Vault** (эмуляция): запуск Vault в Docker, запись и чтение секретов через CLI.
- **Monitoring & Alerting:** Настроен стек Prometheus + Grafana (через Docker Compose). Реализованы алерты в Telegram (через Bot API) при падении сервисов.

## ⚙️ Стек технологий:
`GitHub Actions` · `Docker` · `Terraform` · `Kubernetes` · `Trivy` · `Checkov` · `Semgrep` · `HashiCorp Vault` · `Linux/MacOS Terminal` · `Git`

## 📈 Результат:
Пайплайн автоматически блокирует слияние кода (Merge Request), если в нем обнаружены критичные уязвимости в контейнерах, инфраструктуре, коде или конфигурации K8s.
