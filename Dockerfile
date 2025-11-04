# === Stage 1: builder ===
FROM python:3.11-slim AS builder
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# === Stage 2: runtime ===
FROM python:3.11-slim
WORKDIR /app
COPY --from=builder /usr/local/lib/python3.11 /usr/local/lib/python3.11
COPY . .
RUN useradd -m appuser
USER appuser
ENV PORT=8000
HEALTHCHECK CMD curl -fsS http://localhost:$PORT/healthz || exit 1
EXPOSE $PORT
CMD ["python", "app/main.py"]