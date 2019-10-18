class Echo
	def message(mensagem)

		#Se a mensagem conter '?' no final
		return "Só faço echo, não respondo perguntas." if mensagem[/[?]\z/]

		#Se a mensagem vier vazia
		return "Nada?" if mensagem.split.empty?

		#Se conter letras e não tiver letras minúsculas
		return "Não faço echo de gritos." if mensagem[/[A-Z]/] && !mensagem[/[[:lower:]]/]

		#Retorna as mensagens originais
		mensagem		

	end
end
