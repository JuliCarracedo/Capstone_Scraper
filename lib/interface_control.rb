# frozen_string_literal: true

# UIControl module describes useful imput control functions for interfaces
module UIControl
  def choose(input)
    return input if (1..4).include? input

    puts 'Please choose a number from 1 to 4'
    false
  end

  def exit(input)
    return input if input == 1

    puts 'PRESS 1 TO EXIT'
    -1
  end

  def clear
    if Gem.win_platform?
      system 'cls'
    else
      system 'clear'
    end
  end
end
