require_relative 'interface_control.rb'
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
                puts "Option 1"
            when 2
                puts "Option 2"
            when 3
                puts "Option 3"
            when 4
                puts "Goodbye"
                return 0
            end
        end    
    end
    

end

runtime = Interface.new
