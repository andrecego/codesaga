class Arrays
  def self.converte_impares_por(lista, numero)
    #Seleciona apenas os numero impares
    impar = lista.select(&:odd?)    
    #Retorna um array de numeros impares e outros de multiplos de 'numero'
    [impar, impar.map{|x| x * numero}]

  end

  def self.converte_pares_por(lista, numero)
    par = lista.select(&:even?) 
    [par, par.map{ |x| x * numero}]
  end
end
