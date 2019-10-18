class Fibonacci

  def fibonacci(qtd)
    qtd.times.each_with_object([0,1]) { |x, fib| fib << fib[-1] + fib[-2] }     #começa com a lista [0, 1] e vai adicionando a soma dos ultimos 2 numeros da lista
  end

  def element(numero)
    fibonacci(numero)[numero]
  end

  def elements(lista)
    fibonacci(lista).tap(&:pop)
  end

end
