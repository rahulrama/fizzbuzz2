require 'fizzbuzz'
describe 'fizzbuzz' do
   it 'returns "fizzbuzz" when passed multiples of 3 and 5' do
     expect(fizzbuzz(15)).to eq 'fizzbuzz'
   end
     it 'returns "fizz" when passed multiples of 3' do
       expect(fizzbuzz(9)).to eq 'fizz'
     end
       it 'returns "buzz" when passed multiples of 5' do
         expect(fizzbuzz(10)).to eq 'buzz'
       end
         it 'returns 1 when passed 1' do
           expect(fizzbuzz(1)).to eq 1
         end
end
