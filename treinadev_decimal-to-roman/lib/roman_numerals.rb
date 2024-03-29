class RomanNumerals
  def from_decimal(numero)
    #tabela de conversao
    conversao = {'M' => 1000,'CM' => 900, 'D' => 500, 'CD' => 400, 'C' => 100, 'XC' => 90, 
                 'L' => 50, 'XL' => 40, 'X' => 10, 'IX' => 9, 'V' => 5, 'IV' => 4, 'I' => 1} 

    #divmod com div recebendo o quociente e numero o resto
    conversao.map do |chave, valor|       
      div, numero = numero.divmod(valor)
      chave * div
    end.join

  end
end
