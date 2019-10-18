class ArrayUtils
  def self.multiplos(numero, multiplo)
    #Faz um array de 1 até qtd elementos, e após isso multiplica 
    (1..numero).map{|n| n * multiplo}    
  end

  def self.tabuada(numero)
    #faz um array, e o retorna populado chamando o metodo multiplos 'numero' vezes
    (1..numero).map{|x| multiplos(10,x)} 
  end

  def self.ultimo(numero)
    numero.pop
  end
end
