class ConsoleInterface
  FIGURES =
    Dir["#{__dir__}/../data/figures/*.txt"].
      sort.
      map { |file_name| File.read(file_name) }

  def initialize(game)
    @game = game
  end

  def print_out
    puts <<~GAMESTATUS
      Слово: #{ColorizedString[word_to_show].colorize(:light_black).colorize(background: :light_white)}
      #{ColorizedString[figure].colorize(:yellow)}
      Ошибки (#{@game.errors_made}): #{ColorizedString[errors_to_show].colorize(:light_red)}
      У вас осталось ошибок: #{@game.errors_allowed}

    GAMESTATUS

    if @game.won?
      puts 'Поздравляем, вы выиграли!'
    elsif @game.lost?
      puts "Вы проиграли, загаданное слово: #{ColorizedString[@game.word].colorize(:green)}"
    end
  end

  def figure
    FIGURES[@game.errors_made]
  end

  def word_to_show
    result =
      @game.letters_to_guess.map { |letter| letter == nil ? '__' : letter }

    result.join(' ')
  end

  def errors_to_show
    @game.errors.join(', ')
  end

  def get_input
    print 'Введите следующую букву: '
    gets[0].upcase
  end
end
