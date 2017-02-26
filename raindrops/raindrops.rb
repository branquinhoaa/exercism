class Raindrops
  def self.convert(num)
    answer = ''
    answer << 'Pling' if (num % 3).zero?
    answer << 'Plang' if (num % 5).zero?
    answer << 'Plong' if (num % 7).zero?
    answer.empty? ? num.to_s : answer
  end
end
