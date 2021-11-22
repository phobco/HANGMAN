# HANGMAN - игра "Виселица"
Консольная версия знаменитой игры ["Виселица"](https://ru.wikipedia.org/wiki/Виселица_(игра)), написанная на языке [Ruby](https://ru.wikipedia.org/wiki/Ruby).

#### Инструкция по запуску:
1. Скачайте и установите [Ruby](https://www.ruby-lang.org/ru/downloads/)
2. Скачайте данный репозиторий:
```bash
git clone https://github.com/phobco/HANGMAN.git
```
3. Установите все необходимые гемы (если нет бандлера - установите `gem install bundler`):
```
bundle install
```

4. Запустите файл **main.rb** с помощью Ruby:
```bash
ruby main.rb
```
## Добавление собственных слов в игру:
Свои слова вы можете добавлять в файл `words.txt`, лежаший в папке `data`.

##### Внимание!
На одной строке может находится только одно слово.
