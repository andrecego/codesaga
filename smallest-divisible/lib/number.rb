class Number
  def smallest_divisible(min, max)            
    (min..max).reduce(&:lcm)
  end
end
