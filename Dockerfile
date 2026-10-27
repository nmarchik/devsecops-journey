FROM python:3.13-slim
WORKDIR /app

RUN apt-get update && apt-get upgrade -y && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir --upgrade "msgpack>=1.2.3" "setuptools>=78.1.1" "urllib3>=2.8.0"

# Создаем безопасного пользователя и даем ему права на папку
RUN useradd -m appuser && chown -R appuser /app
USER appuser

COPY hello.py .
CMD ["python", "hello.py"]