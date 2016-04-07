require 'fizzbuzz'

describe 'fizzbuzz' do

  let(:divs_of_3_not_5) do
    arr = []
    (1..30).each{ |i| arr.push(i) if ( i%3==0 and i%5!=0 ) }
    arr
  end
  let(:divs_of_5_not_3) do
    arr = []
    (1..30).each{ |i| arr.push(i) if ( i%3!=0 and i%5==0 ) }
    arr
  end
  let(:divs_of_5_and_3) do
    arr = []
    for i in (1..100) do
      arr.push(i) if (i%3==0 and i%5==0)
    end
    arr
  end
  let(:div_not_of_5_or_3) do
    arr = []
    (1..30).each{ |i| arr.push(i) if ( i%3!=0 and i%5!=0 ) }
    arr
  end

  context 'when passed multiples of 3 not 5' do
    it 'returns fizz when given values between 1 and 30' do
        divs_of_3_not_5.each do |multiples|
          expect(fizzbuzz(multiples)).to eq 'fizz'
        end
    end
    #it 'returns fizz when passed 3' do
		#  expect(fizzbuzz(3)).to eq 'fizz'
    #end
    #it 'returns fizz when passed 9' do
  #    expect(fizzbuzz(9)).to eq 'fizz'
  #  end
  end

	context 'when passed multiples of 5 not 3' do
    it 'returns buzz when given values between 1 and 30' do
        divs_of_5_not_3.each do |multiples|
          expect(fizzbuzz(multiples)).to eq 'buzz'
        end
    end
    #it 'returns buzz when passed 5' do
		#  expect(fizzbuzz(5)).to eq 'buzz'
  #  end
#    it 'returns buzz when passed 20' do
  #    expect(fizzbuzz(20)).to eq 'buzz'
#    end
  end

  context 'when passed multiples of 5 and 3' do
    it 'returns fizzbuzz when given values between 1 and 100' do
        divs_of_5_and_3.each do |multiples|
          expect(fizzbuzz(multiples)).to eq 'fizzbuzz'
        end
    end
#  	it 'returns fizzbuzz when passed 15' do
#    	expect(fizzbuzz(15)).to eq 'fizzbuzz'
#  	end
#    it 'returns fizzbuzz when passed 45' do
#      expect(fizzbuzz(45)).to eq 'fizzbuzz'
#    end
  end

  context 'when passed numbers not divisible by 3 or 5' do
  	it 'returns the number' do
      div_not_of_5_or_3.each do |number|
        expect(fizzbuzz(number)).to eq number
      end
    end
#    it 'returns 4 when passed 4' do
#  		expect(fizzbuzz(4)).to eq 4
#  	end
  end

  context 'when not passed an integer' do
    it 'raises error' do
      expect { fizzbuzz("a") }.to raise_error("Argument must be a number")
    end
  end

end




=begin
describe 'fizzbuzz' do
   it 'returns "fizzbuzz" when passed multiples of 3 and 5' do
     expect(15.fizzbuzz).to eq 'fizzbuzz'
   end
     it 'returns "fizz" when passed multiples of 3' do
       expect(9.fizzbuzz).to eq 'fizz'
     end
       it 'returns "buzz" when passed multiples of 5' do
         expect(10.fizzbuzz).to eq 'buzz'
       end
         it 'returns 1 when passed 1' do
           expect(1.fizzbuzz).to eq 1
         end


end
=end
