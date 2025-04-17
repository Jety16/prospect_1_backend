# Dockerfile para Cloud Run
FROM python:3.11-bullseye

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Puerto que usará Cloud Run
ENV PORT=8080
EXPOSE 8080

# Comando para levantar Flask correctamente en Cloud Run
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0", "--port=8080"]
