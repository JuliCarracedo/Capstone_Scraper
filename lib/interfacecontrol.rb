module UIControl
    def choose (input)
        puts "Input is #{input}"
        return 1 if (1..3).include? input
        puts "Please choose a number from 1 to 4"
        0
    end
    def clear
        if Gem.win_platform?
          system 'cls'
        else
          system 'clear'
        end
      end
end
