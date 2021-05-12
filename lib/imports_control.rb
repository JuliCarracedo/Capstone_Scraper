require 'nokogiri'
require 'open-uri'
module Importer
    def get_titles (doc)
        result = doc.search("//h3").map { |node| node.inner_text}
        result
    end
    def get_upvotes (doc)
        result = doc.search("._1rZYMD_4xY3gRcSS3p8ODO").map { |node| node.inner_text}
        result = upvotes_filter result
        result
    end
    def get_times (doc)
        result = doc.search("._3jOxDPIQ0KaOWpzvSQo-1s").map { |node| node.inner_text}
        result
    end
    def upvotes_filter (list)
        final=[]
        i=0
        while i<list.length
          final.push list[i] if i.even?
          i+=1
        end 
        final
    end
end