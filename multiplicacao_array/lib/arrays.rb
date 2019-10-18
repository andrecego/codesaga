class Arrays

  def self.multiplica_antecessor_predecessor(array)
    array.map.with_index do |x, i| 
      if i == 0                      #condiçao de contorno do primeiro termo
        array[0]*array[1]
      elsif array.length - 1         #condiçao de contorno do último termo
        array[-1]*array[-2]
      else
        array[i-1]*array[i+1]
      end
    end                           
  end
end
