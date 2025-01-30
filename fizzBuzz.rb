# Define a method that takes an Integer as parameter, and returns an array with all numbers from 1 to that Integer, and:

#     Replace multiples of 3 by ‘Fizz’
#     Replace multiples of 5 by ‘Buzz’
#     Replace multiples of 15 by ‘FizzBuzz’

# Calling the method:

# fizz_buzz(15)

# Should return:

# [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 7, 8, 'Fizz', 'Buzz', 11, 'Fizz', 13, 14, 'FizzBuzz']


def fizz_buzz(integer)
    inputArray = Array.new(integer) {|index| index + 1}
    fizzBuzzArray = []
    fizzBuzzArray = inputArray.map do |element| 
        if element % 15 == 0
            fizzBuzzArray[element] = "FizzBuzz"
        elsif element % 5 == 0
            fizzBuzzArray[element] = "Buzz"
        elsif element % 3 == 0
            fizzBuzzArray[element] = "Fizz"
        else
            fizzBuzzArray[element] = element
        end
    end
    return fizzBuzzArray
end

p fizz_buzz(15)