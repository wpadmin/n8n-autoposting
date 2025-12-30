# n8n Autoposting

Автоматическая генерация и публикация контента в социальные сети.

## Как это работает

### 01 - Generate Content

Каждые 6 часов:

- Берёт тему из таблицы (status = `idea`)
- Генерирует пост через OpenAI
- Сохраняет как `draft`

### 02 - Publish Posts

Каждые 5 минут:

- Проверяет таблицу на наличие `draft` + `approved = true`
- Публикует в Telegram
- Меняет статус на `published`

### Процесс работы

```
idea → [Generate] → draft → [Approve] → [Publish] → published
```

1. Добавь тему в таблицу (status = `idea`)
2. Дождись генерации или запусти вручную
3. Проверь draft, отредактируй если нужно
4. Поставь `approved = true`
5. В течение 5 минут — пост в Telegram

---

## Примечания

### Важные ID и ссылки

#### Data Tables

| Таблица | ID | URL |
|---------|-----|-----|
| posts | `W70iArKpt0yBmYMj` | <http://localhost:5678/projects/Ll8ngrGzH0XwolFq/datatables/W70iArKpt0yBmYMj> |

**Примечание:** ID таблицы нужен для настройки Data Table ноды в workflow.

#### Project ID

- **Project ID:** `Ll8ngrGzH0XwolFq`

---

### Структура таблицы `posts`

| Колонка | Тип | Назначение |
|---------|-----|------------|
| id | (auto) | Системный ID |
| createdAt | (auto) | Дата создания |
| updatedAt | (auto) | Дата обновления |
| topic | string | Тема/идея поста |
| content | string | Сгенерированный текст |
| status | string | idea → draft → published |
| approved | boolean | Галочка для запуска публикации |

---

### Credentials

- [x] OpenAI API Key
- [x] Telegram Bot Token
- [ ] VK API Token
- [ ] Дзен (способ публикации TBD)
- [ ] OK API Token

---

### Доступ к n8n

- **URL:** <http://localhost:5678>
- **Docker:** `docker compose up -d` / `docker compose down`
- **Логи:** `docker compose logs -f`
