class FizzBuzz
  VALUES = {
    "Fizz": 3,
    "Buzz": 5,
    "Dude": 7
  }
  def normalize number
    result = ""
    VALUES.each do |key, value|
      if number % value == 0
        result += key.to_s
      end
    end
​
    result = number.to_s if result == ""
​
    result
  end
end



