module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end

# Pangram
# Determine if a sentence is a pangram.
# Determine if a sentence is a pangram. A pangram (Greek: παν γράμμα, pan gramma,
# {}"every letter") is a sentence using every letter of the alphabet at least once.
# The best known English pangram is "The quick brown fox jumps over the lazy dog."
# The alphabet used is ASCII, and case insensitive, from 'a' to 'z'
# inclusively.
class Pangram
  ALPHABET_RANGE = (97..122).to_a

  def self.pangram?(sentence)
    (ALPHABET_RANGE - sentence.downcase.codepoints).empty?
  end
end
