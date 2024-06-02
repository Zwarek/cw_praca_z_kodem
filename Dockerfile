# Użyj oficjalnego obrazu Pythona jako bazowego
FROM python:3.10

# Ustaw katalog roboczy
WORKDIR /app

# Skopiuj pliki aplikacji do obrazu
COPY . /app

# Zainstaluj wymagane biblioteki
RUN pip install --no-cache-dir -r requirements.txt

# Ustaw zmienną środowiskową
ENV FLASK_APP=app.py

# Expose port
EXPOSE 5000

# Uruchom aplikację Flask
CMD ["flask", "run", "--host=0.0.0.0"]
