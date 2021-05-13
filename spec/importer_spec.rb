require_relative '../lib/imports_control.rb'
require 'nokogiri'
require 'open-uri'

describe Importer do
    let(:dummy_class) { Class.new { extend Importer } }
    let(:docfile) { Nokogiri::HTML(URI.open('https://www.reddit.com/r/PewdiepieSubmissions/top/')) do |config|
        config.strict.nonet.recover
      end }
    describe '#get_titles' do
        it 'imports an array when run' do
            expect(dummy_class.get_titles(docfile).class).to eql(Array)
        end
        it 'imports an array of Strings when run' do
            expect(dummy_class.get_titles(docfile)[0].class).to eql(String)
        end
    end
    describe '#get_upvotes' do
        it 'imports an array when run' do
            expect(dummy_class.get_upvotes(docfile).class).to eql(Array)
        end
        it 'imports an array of Strings when run' do
            expect(dummy_class.get_upvotes(docfile)[0].class).to eql(String)
        end
    end
    describe '#get_times' do
        it 'imports an array when run' do
            expect(dummy_class.get_times(docfile).class).to eql(Array)
        end
        it 'imports an array of Strings when run' do
            expect(dummy_class.get_times(docfile)[0].class).to eql(String)
        end
    end
end