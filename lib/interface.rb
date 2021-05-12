require_relative 'interfacecontrol.rb'
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
        run_interface ()
    end

    private 
    def run_interface
        puts @ui
        

    end
    

end

interface = Interface.new
interface.choose(1)
interface.choose(4)