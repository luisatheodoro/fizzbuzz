require 'fizzbuzz'

numbers = (1..100)
describe 'fizzbuzz' do
  it 'returns "Fizz" when passed numbers divisible by 3' do
    numbers.each do |n|
      if n % 3 == 0 && n % 5 != 0
        expect(fizzbuzz(n)).to eq 'Fizz'
      end
    end
  end
  
  it 'returns "Buzz" when passed numbers divisible by 5' do
    numbers.each do |n|
      if n % 3 != 0 && n % 5 == 0
        expect(fizzbuzz(n)).to eq 'Buzz'
      end
    end
  end
  
  it 'returns "FizzBuzz" when passed numbers divisible by 5 and by 3' do
    numbers.each do |n|
      if n % 3 == 0 && n % 5 == 0
        expect(fizzbuzz(n)).to eq 'FizzBuzz'
      end
    end
  end
  
  it 'returns the number when passed numbers not divisible by 5 and by 3' do
    numbers.each do |n|
      if n % 3 != 0 && n % 5 != 0
        expect(fizzbuzz(n)).to eq n
      end
    end
  end
  
end
