# DemoApp – Mission 1

## Run Locally
pip install -r requirements.txt
python app/main.py

## Run with Docker
docker build -t demoapp:local .
docker run -p 8080:8000 demoapp:local

## Run with Docker Compose
docker compose up -d
curl http://localhost:8080/healthz
curl http://localhost:8080/hello

## Run Tests
pytest -v tests/

## Stop
docker compose down