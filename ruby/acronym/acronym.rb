class Acronym
  def self.abbreviate(str) =
    str.split(/[- ]+/).map{|s| s[0].upcase }.join
end
