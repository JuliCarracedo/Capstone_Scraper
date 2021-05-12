require_relative 'interface_control.rb'
require_relative 'pewdiepie.rb'
require_relative 'jacksepticeye.rb'
require_relative 'mr_beast.rb'
class Interface
    include UIControl
    def initialize
        @ui ="        +--------------------------------+
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
        while input != 0
            input = false
            until input
                input = choose(gets.chomp.to_i)
                input = false if input < 0
            end
            case input
            when 1
                clear
                running = Pewdiepie.new
                running = nil
                puts @ui
            when 2
                clear
                running = Beast.new
                running = nil
                puts @ui
            when 3
                clear
                running = Jack.new
                running = nil
                puts @ui
            when 4
                puts "Goodbye"
                return 0
            end
        end    
    end
end


