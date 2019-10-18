class Pagamento
  attr_accessor :produto, :quantidade, :preco, :valor

  def initialize(quantidade:, produto: 'Sem nome', preco: 'Sem preço')
    @quantidade = quantidade
    @produto = produto
    produto.is_a?(Produto) ? @preco = produto.preco : @preco = preco      #Permite vir um produto sem classe, porem com preço
   end

  def calcular_valor
    produto.remove_estoque(@quantidade)
    @valor = @quantidade * preco    
  end

  def aplicar_desconto(porcentagem)
    @valor -= @valor * porcentagem/100
  end


end

