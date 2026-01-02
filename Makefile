.PHONY: up down logs status

up:
	docker compose up -d
	@echo ""
	@echo "✓ n8n запущен: http://localhost:5678"

down:
	docker compose down

logs:
	docker compose logs -f

status:
	@docker compose ps
	@echo ""
	@echo "URL: http://localhost:5678"