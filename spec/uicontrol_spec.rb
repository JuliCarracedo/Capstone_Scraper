require_relative '../lib/interface_control.rb'
RSpec.describe UIControl do 
    let(:dummy_class) { Class.new { extend UIControl } }
    describe '#choose' do
        it 'returns true if you input a number between 1 and 4' do
            expect(dummy_class.choose(1)).to eq(1)
        end
        it 'returns false if you don\'t input a number between 1 and 4' do
            expect(dummy_class.choose(5)).to eq(false)
        end
        it 'returns false if you input anything but a number' do
            expect(dummy_class.choose('hi')).to eq(false)
        end
    end
    describe '#exit' do
        it 'returns true if you input 1' do
            expect(dummy_class.choose(1)).to eq(1)
        end
        it 'returns false if you don\'t input a1' do
            expect(dummy_class.choose(5)).to eq(false)
        end
        it 'returns false if you input anything but a number 1' do
            expect(dummy_class.choose('1')).to eq(false)
        end
    end
end