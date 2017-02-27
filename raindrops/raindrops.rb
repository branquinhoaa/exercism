## Raindrops
# Convert a number to a string, the contents of which depends
# on the number's factors.
#
#- If the number has 3 as a factor, output 'Pling'.
#- If the number has 5 as a factor, output 'Plang'.
#- If the number has 7 as a factor, output 'Plong'.
#- If the number does not have 3, 5, or 7 as a factor,
#  just pass the number's digits straight through.
## Examples
#- 28's factors are 1, 2, 4, **7**, 14, 28.
#  - In raindrop-speak, this would be a simple "Plong".
#- 30's factors are 1, 2, **3**, **5**, 6, 10, 15, 30.
#  - In raindrop-speak, this would be a "PlingPlang".
#- 34 has four factors: 1, 2, 17, and 34.
#  - In raindrop-speak, this would be "34".
class Raindrops
  def self.convert(num)
    answer = ''
    answer << 'Pling' if (num % 3).zero?
    answer << 'Plang' if (num % 5).zero?
    answer << 'Plong' if (num % 7).zero?
    answer.empty? ? num.to_s : answer
  end
end
