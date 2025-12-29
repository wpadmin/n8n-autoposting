# Заметки проекта n8n-autoposting

## Важные ID и ссылки

### Data Tables

| Таблица | ID | URL |
|---------|-----|-----|
| posts | `W70iArKpt0yBmYMj` | <http://localhost:5678/projects/Ll8ngrGzH0XwolFq/datatables/W70iArKpt0yBmYMj> |

**Примечание:** ID таблицы нужен для настройки Data Table ноды в workflow.

### Project ID

- **Project ID:** `Ll8ngrGzH0XwolFq`

---

## Структура таблицы `posts`

| Колонка | Тип | Назначение |
|---------|-----|------------|
| id | (auto) | Системный ID |
| createdAt | (auto) | Дата создания |
| updatedAt | (auto) | Дата обновления |
| topic | string | Тема/идея поста |
| content | string | Сгенерированный текст |
| status | string | idea → draft → approved → published |
| approved | boolean | Галочка для запуска публикации |

---

## Credentials (добавить после настройки)

- [ ] OpenAI API Key
- [ ] Telegram Bot Token
- [ ] VK API Token
- [ ] Дзен (способ публикации TBD)
- [ ] OK API Token

---

## Доступ к n8n

- **URL:** <http://localhost:5678>
- **Docker:** `docker compose up -d` / `docker compose down`
- **Логи:** `docker compose logs -f`
