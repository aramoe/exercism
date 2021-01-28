class Acronym
  def self.abbreviate(str) =
    str.split(/[- ]+/).map(&:chr).join.upcase
end
