require 'nokogiri'
require 'open-uri'

def upvotes_filter (list)
    final=[]
    i=0
    while i<list.length
      final.push list[i] if i.even?
      i+=1
    end 
    final
end


doc = Nokogiri::HTML(URI.open('https://www.reddit.com/r/PewdiepieSubmissions/top/')) do |config|
config.strict.nonet.recover
end

top10 = doc.search("//h3").map { |node| node.inner_text}

upvotes = doc.search("._1rZYMD_4xY3gRcSS3p8ODO").map{ |node| node.inner_text}
upvotes = upvotes_filter upvotes

times = doc.search("._3jOxDPIQ0KaOWpzvSQo-1s").map { |node| node.inner_text}

puts "Take a look at these lovely sneakpeek of r/PewdiepieSubmissions top page"
upvotes.each_with_index {|upvote, index| puts "#{index+1}. #{top10[index]}, uploaded #{times[index]} . #{upvote} upvotes. "}
