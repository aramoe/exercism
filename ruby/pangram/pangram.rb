class Pangram
  # https://exercism.io/tracks/ruby/exercises/pangram/solutions/55eff503e184408991d48f484a859a79
  def self.pangram?(sentence) =
    ([*'a'..'z'] - sentence.downcase.chars).empty?
end
