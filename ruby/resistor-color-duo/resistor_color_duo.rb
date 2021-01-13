class ResistorColorDuo
  COLORS = %w( black brown red orange yellow green blue violet grey white )

  def self.value(names)
    names[0, 2] # take duo
      .map{|name| COLORS.index(name).to_s }
      .join('')
      .to_i
  end
end
