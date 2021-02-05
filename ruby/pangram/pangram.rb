class Pangram
  def self.pangram?(sentence)
    sentence
      .downcase
      .chars
      .grep(/[a-z]/)
      .sort
      .uniq == ('a'..'z').to_a
  end
end
