#Find the difference between the sum of the squares and the square of the sum of the first N natural numbers.

#The square of the sum of the first ten natural numbers is
#(1 + 2 + ... + 10)² = 55² = 3025.

#The sum of the squares of the first ten natural numbers is
#1² + 2² + ... + 10² = 385.

#Hence the difference between the square of the sum of the first
#ten natural numbers and the sum of the squares of the first ten
#natural numbers is 3025 - 385 = 2640.

class Squares
  def initialize(num)
    @qty = num
  end

  def square_of_sum
    (0..@qty).reduce(:+) ** 2
  end

  def sum_of_squares
    (0..@qty).map{ |n| n ** 2}.reduce(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
