class Contents
  def can_make_sentence?(contents)
    contents.map!(&:downcase).pop.split.all? {|p| contents.include? p}
  end
end
