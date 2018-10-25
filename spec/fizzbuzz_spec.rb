require 'fizzbuzz'

numbers = (1..100)
describe 'fizzbuzz' do

  it 'returns "Fizz" when passing numbers divisible by 3' do
    numbers.each {|n| expect(fizzbuzz(n)).to eq 'Fizz' if n % 3 == 0 && n % 5 != 0 }
  end
  
  it 'returns "Buzz" when passing numbers divisible by 5' do
    numbers.each {|n| expect(fizzbuzz(n)).to eq 'Buzz' if n % 3 != 0 && n % 5 == 0}
  end
  
  it 'returns "FizzBuzz" when passing numbers divisible by 5 and by 3' do
    numbers.each {|n| expect(fizzbuzz(n)).to eq 'FizzBuzz' if n % 3 == 0 && n % 5 == 0}
  end
  
  it 'returns the number when passing numbers not divisible by 5 and by 3' do
    numbers.each {|n| expect(fizzbuzz(n)).to eq n if n % 3 != 0 && n % 5 != 0}
  end
  
  # if the number would call the method fizzbuzz it would be like this:
  # it 'returns "fizz" for the number 3' do
  #   expect(3.fizzbuzz).to eq 'fizz'
  # end
end
