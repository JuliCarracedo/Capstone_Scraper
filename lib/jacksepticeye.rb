require 'nokogiri'
require 'open-uri'
require_relative 'interface_control.rb'
require_relative 'imports_control.rb'

class Jack
    include UIControl, Importer
    def initialize

        @doc = Nokogiri::HTML(URI.open('https://www.reddit.com/r/jacksepticeye/top/')) do |config|
            config.strict.nonet.recover
            end
        @titles = get_titles (@doc)
        @upvotes = get_upvotes (@doc)
        @times = get_times (@doc)
        @ui ="        +-----------------------------------------------------------------------------------
        |     JACKSEPTICEYE TOP REDDIT POSTS                          
        |1.#{@titles[0]}, posted #{@times[0]}. #{@upvotes[0]} upvotes
        |2.#{@titles[1]}, posted #{@times[1]}. #{@upvotes[1]} upvotes   
        |3.#{@titles[2]}, posted #{@times[2]}. #{@upvotes[2]} upvotes
        |4.#{@titles[3]}, posted #{@times[3]}. #{@upvotes[3]} upvotes
        |5.#{@titles[4]}, posted #{@times[4]}. #{@upvotes[4]} upvotes
        |6.#{@titles[5]}, posted #{@times[5]}. #{@upvotes[5]} upvotes
        |7.#{@titles[6]}, posted #{@times[6]}. #{@upvotes[6]} upvotes
        |                                                         
        |PRESS 1 AND ENTER TO EXIT                                
        +-----------------------------------------------------------------------------------"
        run_interface
    end
    def run_interface
        clear
        puts @ui
        input = 0
        while input == 0
            input = exit (gets.chomp.to_i)
            input = 0 if input != 1
        end
        clear
    end
end
