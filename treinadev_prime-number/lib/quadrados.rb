class Quadrados

  def initialize(tamanho)
    @array_primos = numeros_primos(tamanho)
  end

  def numeros_primos(tamanho)

    #inicial baseado no tamanho para reduzir numero de rodagens do while
    maximo = tamanho * 10           
    
    #loop para estimar o número de inteiros em 'n' primos
    #estimativa segundo o teorema modificado do número primo -> pi(x) ~ x / (ln (x) - 1)
    while (maximo/tamanho) + 1 < Math.log(maximo)                                                  
      maximo += tamanho
    end

  
    primos = *(2..maximo)
    primos.each do |primo|
      #pula nil
      next unless primo
      #quebra quando primo > raiz(maximo)
      break if primo**2 >= maximo

      #utilizando o crivo de eratóstenes para substituir não primos por nil
      (primo**2).step(maximo,primo){|y| primos[y-2] = nil}    
    end
  
    primos.compact.first(tamanho)
  
  end

  def quadrado_da_soma
    @array_primos.reduce(:+).pow(2)
  end

  def soma_dos_quadrados
    @array_primos.sum{|x| x.pow(2)}
  end

  def diferenca
    quadrado_da_soma - soma_dos_quadrados
  end

end
