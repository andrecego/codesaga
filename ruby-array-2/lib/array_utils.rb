class ArrayUtils
  def self.compara(lista1, lista2)
    lista1.sort == lista2.sort
  end

  def self.divisiveis(num1, num2)
    divisores_multiplos = (1..50).select{|x| x % num1 == 0 && x % num2 == 0}  #divisores de num1 e num2
    divisores_num1 = (1..50).select{|x| x % num1 == 0} - divisores_multiplos  #divisores apenas de num1
    divisores_num2 = (1..50).select{|x| x % num2 == 0} - divisores_multiplos  #divisores apenas de num2
    [divisores_multiplos, divisores_num1, divisores_num2]
  end

  def self.soma(lista)
    lista.sum
  end

  def self.combinar(dezenas, unidades)
    dezenas.product(unidades)
  end  

end
