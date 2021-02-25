# entrar valor total do pedido
# entrar valor porcentagem desconto
# mostrar valor com desconto
# mostrar valor do desconto
system 'clear'

puts "Digite o valor total do pedido:"
vlPedido = gets.to_f

puts "Digite a porcentagem de desconto para o pedido:"
vlPercDesconto = gets.to_f

vlDesconto = (vlPedido*vlPercDesconto)/100
vlLiquido = vlPedido - vlDesconto

puts "Valor total liquido do pedido: #{vlLiquido.to_f}"
puts "Valor do desconto aplicado: #{vlDesconto.to_f}"