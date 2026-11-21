# README

3 модели:
Books
Authors
Categories

Книга имеет название, автора и категорию как foreign_key
Автор и категория имеют имя/название
У книги один автор и одна категория (лень было разбираться с has_and_belongs_to_many)

Убрал datetime с Authors и Categories

У Book есть GET, POST, PATCH, DELETE
Все остальные имеют только GET

Список всех книг
curl http://localhost:3000/api/books/

Инфа на конкретную книжку
curl http://localhost:3000/api/books/1

Создание
curl -X POST http://127.0.0.1:3000/api/books/ --json '{"title": "foo", "author_id": 1, "category_id": 1}'

Изменение
curl -X PATCH http://127.0.0.1:3000/api/books/1 --json '{"title": "bar", "author_id": 1, "category_id": 1}'

Удаление
curl -X DELETE http://127.0.0.1:3000/api/books/1
