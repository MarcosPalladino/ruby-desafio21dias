system 'clear'
valorTotalPedido = 0.to_f
qtdItensPedido = 0

produto = Array.new
produtos = Array.new
meu_hash = Hash.new

produto

puts "Digite o valor do pedido minimo:"; pedidoMinimo = gets.to_f

n = true
while n 
    system 'clear'
    puts "==================================================="
    puts "Valor pedido minimo: R$ #{pedidoMinimo}"
    puts "Total do pedido: R$ #{valorTotalPedido}"
    puts "Quantidade de itens do pedido: #{qtdItensPedido}"
    puts "==================================================="

    puts "Digite o produto:"; produtoPedido = gets.to_s
    puts "Digite o valor total do produto:"; produtoValorTotal = gets.to_f
    valorTotalPedido += produtoValorTotal
    produto.clear
    produto.push(produtoPedido)
    produto.push(produtoValorTotal)
    produtos.push(produto)

    if valorTotalPedido <= pedidoMinimo
        puts "Pedido abaixo do minimo de R$ #{pedidoMinimo} gostaria de incluir mais produtos? (S/N)"; confirma = gets.to_s
        if confirma.to_s.upcase.strip == "N"
            n = false
        end
    else
        puts "Gostaria de incluir mais produtos? (S/N)"; confirma = gets.to_s
        if confirma.to_s.upcase.strip == "N"
            n = false
        end
    end
    qtdItensPedido += 1
end
puts "Digite a porcentagem de desconto para o pedido:"
percDesconto = gets.to_f

valorDesconto = (valorTotalPedido*percDesconto)/100
valorLiquido = valorTotalPedido - valorDesconto

system 'clear'
puts "==================================================="
puts "Total bruto do pedido: R$ #{valorTotalPedido.to_f}"
puts "==================================================="
puts "Percentual de desconto: #{percDesconto.to_f}%"
puts "Valor do desconto: R$ #{valorDesconto.to_f}"
puts "==================================================="
puts "Total liquido do pedido: R$ #{valorLiquido.to_f}"
puts "==================================================="
puts "===============LISTA DE PRODUTOS==================="
produtos.each { |elemento|
    puts "Produto: #{elemento[0].upcase.strip} - Valor: #{elemento[1].to_f}"
}