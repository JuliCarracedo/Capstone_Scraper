require 'nokogiri'
require 'open-uri'
# Importer module describes the import process for all scraped data
module Importer
  def get_titles(doc)
    doc.search('//h3').map(&:inner_text)
  end

  def get_upvotes(doc)
    result = doc.search('._1rZYMD_4xY3gRcSS3p8ODO').map(&:inner_text)
    upvotes_filter result
  end

  def get_times(doc)
    doc.search('._3jOxDPIQ0KaOWpzvSQo-1s').map(&:inner_text)
  end

  def upvotes_filter(list)
    final = []
    i = 0
    while i < list.length
      final.push list[i] if i.even?
      i += 1
    end
    final
  end
end
