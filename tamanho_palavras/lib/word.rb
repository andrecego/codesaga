class Word
  def longest(phrase)
    phrase.split(' ').max_by(&:length).sub(/[[:punct:]]\z/,'') #split separa em array, max_by pega o máximo por tamanho, o sub remove pontuação no final da frase
  end


  def shortest(phrase)
    phrase.split(' ').min_by(&:length).sub(/[[:punct:]]\z/,'')
  end
end
