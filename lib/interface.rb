require_relative 'interface_control'
require_relative 'pewdiepie'
require_relative 'jacksepticeye'
require_relative 'mr_beast'

# This is the main menu for the application
class Interface
  include UIControl
  def initialize
    @ui = "        +--------------------------------+
        | WELCOME TO REDDIT SNEAKY PEEKER|
        | Choose a youtuber and check the|
        | status of their reddit site    |
        |1. Pewdiepie                    |
        |2. Mr. Beast                    |
        |3. Jacksepticeye                |
        |4. Exit program                 |
        +--------------------------------+"
    run_interface
  end

  private

  def run_interface
    puts @ui
    input = false
    classes = [Pewdiepie, Beast, Jack]
    while input != 0
      input = false
      input = choose(gets.chomp.to_i) until input
      input == 4 ? return : clear

      classes[input - 1].new
      puts @ui
    end
  end
end
