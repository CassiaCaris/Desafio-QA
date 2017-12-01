class Checkout

#Inicializando variáveis
def initialialize(item,quantidade,total)
	item = Hash.new
	quantidade = @quantidade
	total = @total
end

#Método com as Regras de Desconto Especiais para os itens A e B

def rules(item)
resultadoa = item.scan(/(?=A)/).count
resultadob = item.scan(/(?=B)/).count

if resultadoa > 0
	if resultadoa >= 3
	valora = (resultadoa/ 3)
	@descontoa = (valora * 20)
end
	end

if resultadob > 0
	if resultadob >= 2
	valorb = (resultadob/ 2)
	@descontob = (valorb * 15)
end
	end
end

#Método da Soma total dos itens do Checkout

def total(item)
resultadoa = item.scan(/(?=A)/).count
resultadob = item.scan(/(?=B)/).count
resultadoc = item.scan(/(?=C)/).count
resultadod = item.scan(/(?=D)/).count

soma = ((resultadoa * 50)) + ((resultadob.to_i * 30)) + (resultadoc*20) + (resultadod*15)
totalizador = soma - @descontoa.to_i - @descontob.to_i

if totalizador == 0
	puts 'Não existem produtos válidos digitados no Checkout!'
else
puts "O valor total da venda é #{totalizador}"
end

end

end

puts 'Digite os itens do checkout:'
item= gets.chomp.to_s

co = Checkout.new
co.rules(item)
co.total(item)

co = CheckOut.new(pricing_rules)
    co.scan(item)
    co.scan(item)
    price = co.total
