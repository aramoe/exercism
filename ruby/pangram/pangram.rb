class Pangram
  # https://exercism.io/tracks/ruby/exercises/pangram/solutions/22f522356fc34433b3e9051768d7b5fc
  def self.pangram?(sentence)
    ([*'a'..'z'] - sentence.downcase.chars).empty?
  end
end
