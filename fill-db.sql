
/* Заполнение таблицы users */
INSERT INTO users(email, password_hash, first_name, last_name, avatar) VALUES
  ('ivanov@example.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'Иван', 'Иванов', 'avatar-1.jpg'),
  ('petrov@example.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'Пётр', 'Петров', 'avatar-2.jpg');

/* Заполнение таблицы categories */
INSERT INTO categories(name) VALUES
  ('Деревья'),
  ('За жизнь'),
  ('Без рамки'),
  ('Разное'),
  ('IT'),
  ('Музыка'),
  ('Кино'),
  ('Программирование'),
  ('Железо'),
  ('Пупсики'),
  ('Коты'),
  ('Собаки'),
  ('Мышки');

/* Заполнение таблицы articles */
ALTER TABLE articles DISABLE TRIGGER ALL;
INSERT INTO articles(title, announce, full_text, image, created_date) VALUES
  ('Как вам поможет психотерапия', 'Тише едешь - дальше будешь. Программировать не настолько сложно, как об этом говорят. Из под его пера вышло 8 платиновых альбомов. Освоить вёрстку несложно. Возьмите книгу новую книгу и закрепите все упражнения на практике. Простые ежедневные упражнения помогут достичь успеха.', 'Освоить вёрстку несложно. Возьмите книгу новую книгу и закрепите все упражнения на практике. Вы можете достичь всего. Стоит только немного постараться и запастись книгами. Тише едешь - дальше будешь. Программировать не настолько сложно, как об этом говорят. Бороться с прокрастинацией несложно. Просто действуйте. Маленькими шагами. Альбом стал настоящим открытием года. Мощные гитарные рифы и скоростные соло-партии не дадут заскучать. Как начать действовать? Для начала просто соберитесь. Рок-музыка всегда ассоциировалась с протестами. Так ли это на самом деле? Первая большая ёлка была установлена только в 1938 году.', 'skyscraper@1x.jpg', '13,6,2021 12:18:16 AM'),
  ('Как избавить от парня за 10 дней', 'Простые ежедневные упражнения помогут достичь успеха. Тише едешь - дальше будешь. Ёлки — это не просто красивое дерево. Это прочная древесина.', 'Помните, небольшое количество ежедневных упражнений лучше, чем один раз, но много. Программировать не настолько сложно, как об этом говорят. Простые ежедневные упражнения помогут достичь успеха. Вы можете достичь всего. Стоит только немного постараться и запастись книгами. Рок-музыка всегда ассоциировалась с протестами. Так ли это на самом деле? Альбом стал настоящим открытием года. Мощные гитарные рифы и скоростные соло-партии не дадут заскучать. Достичь успеха помогут ежедневные повторения. Тише едешь - дальше будешь. Первая большая ёлка была установлена только в 1938 году. Вышивайте крестиком. Ёлки — это не просто красивое дерево. Это прочная древесина. Освоить вёрстку несложно. Возьмите книгу новую книгу и закрепите все упражнения на практике. Собрать камни бесконечности легко, если вы прирожденный герой. Он написал больше 30 хитов. Золотое сечение — соотношение двух величин, гармоническая пропорция.', 'forest@1x.jpg', '13,4,2021 10:49:58 PM'),
  ('Как избавить от парня за 10 дней', 'Это один из лучших рок-музыкантов. Процессор заслуживает особого внимания. Он обязательно понравится геймерам со стажем.', 'Как начать действовать? Для начала просто соберитесь. Рок-музыка всегда ассоциировалась с протестами. Так ли это на самом деле? Читайте все Гарри Поттера. Кто рано встает - тому бог подает. Программировать не настолько сложно, как об этом говорят. Тише едешь - дальше будешь. Вышивайте крестиком. Первая большая ёлка была установлена только в 1938 году. Он написал больше 30 хитов. Простые ежедневные упражнения помогут достичь успеха.', 'skyscraper@1x.jpg', '14,5,2021 2:30:00 AM');
ALTER TABLE articles ENABLE TRIGGER ALL;

/* Заполнение таблицы articles_categories */
ALTER TABLE articles_categories DISABLE TRIGGER ALL;
INSERT INTO articles_categories(article_id, category_id) VALUES
  (1, 13),
  (2, 2),
  (3, 9);
ALTER TABLE articles_categories ENABLE TRIGGER ALL;

/* Заполнение таблицы comments */
ALTER TABLE comments DISABLE TRIGGER ALL;
INSERT INTO COMMENTS(text, user_id, article_id) VALUES
  ('Это где ж такие красоты? Совсем немного...', 1, 1),
  ('Это где ж такие красоты? Мне кажется или я уже читал это где-то?', 1, 2),
  ('Мне не нравится ваш стиль. Ощущение, что вы меня поучаете. Мне кажется или я уже читал это где-то? Это где ж такие красоты?', 2, 2),
  ('Мне не нравится ваш стиль. Ощущение, что вы меня поучаете.', 2, 2),
  ('Мне не нравится ваш стиль. Ощущение, что вы меня поучаете.', 1, 2),
  ('Давно не пользуюсь стационарными компьютерами. Ноутбуки победили. Согласен с автором!', 2, 3),
  ('Согласен с автором!', 1, 3),
  ('Планируете записать видосик на эту тему? Согласен с автором! Мне не нравится ваш стиль. Ощущение, что вы меня поучаете.', 2, 3),
  ('Мне кажется или я уже читал это где-то? Хочу такую же футболку :-) Плюсую, но слишком много буквы!', 1, 3);
ALTER TABLE comments ENABLE TRIGGER ALL;
