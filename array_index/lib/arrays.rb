class Arrays
  def self.multiplica_indices(array)                    
    array.map.with_index{|num, idx| num = num * idx}    
  end
end
