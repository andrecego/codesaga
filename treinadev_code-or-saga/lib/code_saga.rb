class CodeSaga
  def code_or_saga(num)
    conversor = {"Code" => 3, "Saga" => 5}
    (1..num).map do |numero| 
      palavra = conversor.select{|chave,valor| numero % valor == 0}.keys.join
      palavra.empty? ? numero : palavra
    end  
  end
end
