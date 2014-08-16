require 'inject'

describe "Inject" do

	let(:array) {	[1,2,3] }

	it 'sums all elements of the array' do
		expect(array.injected{|number, element| number + element}).to eq array.inject{|number, element| number + element}
	end

	it 'sums all elements of the array passing 5 as argument' do
		expect(array.injected(5){|number, element| number * element}).to eq array.inject(5) {|number, element| number * element}
	end

	it 'subtracts all elements of the array' do
		expect(array.injected{|number, element| number - element}).to eq array.inject{|number, element| number - element}
	end

	it 'subtracts all element of the array passing 2 as an argument' do
		expect(array.injected(2){|number, element| number - element}).to eq array.inject(2){|number, element| number - element}
	end

	it 'injects all the letters in an array' do
		expect(['a','b','c'].injected{|acc, letter| acc+letter}).to eq ['a','b','c'].inject{|acc, letter| acc+letter}
	end

end