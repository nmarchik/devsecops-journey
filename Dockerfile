FROM python:3.13-slim
WORKDIR /app

RUN apt-get update && apt-get upgrade -y && rm -rf /var/lib/apt/lists/*

# Обновляем уязвимые Python-пакеты до безопасных версий
RUN pip install --no-cache-dir --upgrade "msgpack>=1.2.1" "setuptools>=78.1.1" "urllib3>=2.8.0"

COPY hello.py .
CMD ["python", "hello.py"]