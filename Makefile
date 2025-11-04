IMAGE_NAME = demoapp:local

build:
	docker build -t $(IMAGE_NAME) .

run:
	docker compose up -d

logs:
	docker compose logs -f

test:
	docker run --rm $(IMAGE_NAME) pytest -v tests/

clean:
	docker compose down
	docker rmi -f $(IMAGE_NAME) || true