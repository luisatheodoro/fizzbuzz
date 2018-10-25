def fizzbuzz(number)
  number % 15 == 0 ? 'FizzBuzz' : number % 5 == 0 ? 'Buzz' : number % 3 == 0 ? 'Fizz' : number
end

#To be able to call the number on the method it would have to be a public method, so any object could call it. 
#And passing the self as the number that is calling the method, because it is calling itself. :
# public
# def fizzbuzz
#   self % 15 == 0 ? 'FizzBuzz' : self % 5 == 0 ? 'Buzz' : self % 3 == 0 ? 'Fizz' : self
#   # if self == 3
#     # 'Fizz'
#   # elsif self == 5
#     # 'Buzz'
#   # end
# end