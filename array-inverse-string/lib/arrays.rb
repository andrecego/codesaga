class Arrays
  def inverse_strings(array)
    array.reject{|x| array.include?(x.reverse)}
  end
end

