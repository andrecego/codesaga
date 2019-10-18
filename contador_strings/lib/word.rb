class Word
  def vowels_count(frase)
    frase.downcase.count('aeiouáãàéíõóú') #Conta as vogais, incluindo acentuação
  end

  def consonants_count(frase)
    frase.downcase.count('bcdfghjklmnpqrstvwxyzç') #Conta as consoantes
  end
end
