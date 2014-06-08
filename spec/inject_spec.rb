require 'inject'

describe "Inject" do

	it 'sums all elements of the array' do
		expect([1,2,3].injected{|number, element| number + element}).to eq 6
	end

	it 'sums all elements of the array passing 5 as argument' do
		expect([1,2,3].injected(5){|number, element| number * element}).to eq 30
	end

	it 'subtracts all elements of the array' do
		expect([1,2,3].injected{|number, element| number - element}).to eq -4
	end

	it 'subtracts all element of the array passina 2 as an argument' do
		expect([1,2,3].injected(5){|number, element| number - element}).to eq -1
	end

	it 'injects all the letters in an array' do
		expect(['a','b','c'].injected{|acc, letter| acc+letter}).to eq 'abc'
	end

end