FROM python:3.11-bullseye

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Este directorio es necesario para el proxy
RUN mkdir -p /cloudsql

CMD ["python", "app.py"]