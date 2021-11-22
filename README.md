# HANGMAN - игра "Виселица"
Консольная версия знаменитой игры ["Виселица"](https://ru.wikipedia.org/wiki/Виселица_(игра)), написанная на языке [Ruby](https://ru.wikipedia.org/wiki/Ruby).

#### Инструкция по запуску:
1. Скачайте и установите [Ruby](https://www.ruby-lang.org/ru/downloads/)
2. Скачайте данный репозиторий:
```bash
git clone https://github.com/phobco/HANGMAN.git
```
3. Установите гем [Bundler](https://bundler.io/):
```
gem install bundler
```
**Важно:** далее все команды запускать из корня приложения.

4. Установите необходимые приложению гемы, с помощью Bundler:
```
bundle install
```

5. Запустите файл **main.rb** с помощью Bundler и Ruby:
```bash
bundle exec ruby main.rb
```
## Добавление собственных слов в игру:
Свои слова вы можете добавлять в файл `words.txt`, лежаший в папке `data`.

##### Внимание!
На одной строке может находится только одно слово.
