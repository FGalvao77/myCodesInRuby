# Missões especiais


# Missão 1

# Utilizando uma collection do tipo Array, escreva um programa que receba 3 números 
    # e no final exiba o resultado de cada um deles elevado a segunda potência.

# criando uma array vazio 

array_num = []

# conferindo se o array está vazio 
# para isso, podemos usar as funções ".length" e/ou ".count"

puts ''
p array_num.length
p array_num.count
puts ''

# podemos também usar a função ".empty?"
array_num.empty? # o resultado será verdadeiro (true) ou falso (false)
puts ''

# inserindo três dados númericos no array 
# para isso, utilizaremos a inserção via usuário/teclado
# e guardaremos nas variáveis "num_1", "num_2" e "num_3"

print "Digite o primeiro número - inteiro e/ou decimal: "
num_1 = gets.chomp.to_f	# a função ".to_f" transforma a string e um número float

print "Digite o segundo número - inteiro e/ou decimal: "
num_2 = gets.chomp.to_f

print "Digite o terceiro número - inteiro e/ou decimal: "
num_3 = gets.chomp.to_f

puts ''

# iremos utilizar a função ".push" para carregar os dados númericos digitados pelo usuário
# e também iremos organiza-los em ordem núemrica crescente, utilizando a função ".sort"
# e sobrescrevendo o array e imprimindo o seu resultado

p array_num = array_num.push(num_1, num_2, num_3).sort
puts ''


puts "\nExecutando .map elevando a segunda potência"
# .map não altera o conteúdo do array original
new_array_num = array_num.map do |x|
     x ** 2
end
puts ''

# imprimido os arrays - "Array Original" e "Novo Array"

puts "\nArray Original"
puts " #{array_num}"

puts "\nNovo Array"
puts " #{new_array_num}"
puts ''


# outra solução

array = []

i = 1

1..3.times do
    print "Digite o #{i}º número: "
    array.push gets.chomp.to_i

    i += 1
end

array.each do |a|
    result = a ** 2
    puts "\n\tO resultado do número #{a} elevado a segunda potência é #{result}"
end


# Missão 2

# Crie uma collection do tipo Hash e permita que o usuário crie três elementos informando a chave e o valor. 
    # No final do programa para cada um desses elementos imprima a frase “Uma das chaves é **** e o seu valor é ****”

# criando um novo Hash vazio

conta_cliente = Hash.new 
puts ''

# imprimindo o Hash criado

puts "conta_cliente = #{conta_cliente}"  # não possui nenhum dado
puts ''

# dentro do Hash "conta_cliente" iremos instanciar as chaves e sem nenhum valor

p conta_cliente = {nome:'', cpf:'', renda:'', cidade:'', estado:''} # imprimindo o Hash com suas chaves e sem valores
puts ''

# agora iremos preencher cada chave com seu respectivo valor conforme a instrução de entrada
# e iremos salvar cada valor na sua referida chave

print "Digite o seu nome: "
conta_cliente[:nome] = gets.chomp

print "Digite o seu cpf: "
conta_cliente[:cpf] = gets.chomp

print "Digite a sua renda mensal: "
conta_cliente[:renda] = gets.chomp.to_f

print "Digite o nome da cidade: "
conta_cliente[:cidade] = gets.chomp

print "Digite a sigla do estado: "
conta_cliente[:estado] = gets.chomp

puts ''

# imprimindo o Hash depois de todas as chaves já com valores

p conta_cliente
puts ''

# realizando iteração em cada chave e seu valor 
# e imprimindo cada iteração

conta_cliente.each do |key, value|
    puts "\n\tUma das chaves é #{key} e o seu valor é #{value}\n"
end
puts ''


# outra solução

hash = {}   # instanciando um Hash vazio

3.times do      # com a função ".times", definimos seu ciclo de repetição em 3x
    print 'Informe uma chave: '     # entrada do nome da chave via teclado
    key = gets.chomp                # guardando o nome da chave na variável chamada "key"
    
    print 'Informe seu valor: '     # entrada do valor da chave via teclado
    value = gets.chomp              # guardando o valor na variável "value"

    hash[key] = value               # associando a chave ao valor
end 
puts ''

hash.each do |k, v|
    puts "\nUma das chaves é #{k} e o seu valor é #{v}"
end 
puts ''

p hash
puts ''



# Missão 3

# Dado o seguinte hash:

# numbers = {a: 10, b: 30 2, c: 20, d: 25, e: 15}

# Crie uma instrução que seleciona o maior valor deste hash e no final imprima a chave e valor do elemento resultante.

p numbers = {a: 10, b: 30, c: 20, d: 25, e: 15}
puts ''

maior_valor = numbers.sort_by {|key,value| value}.reverse.first
puts "Segue a chave com maior valor: #{maior_valor}"
puts ''


# outra solução
numbers = {a: 10, b: 30, c: 20, d: 25, e: 15}

valor_maior = 0
resultado = []

numbers.each do |key, value|
    if value > valor_maior
        valor_maior = value
        resultado = [key, value]
    end
end

puts "A chave com o maior valor é: \n\t#{resultado[0]}:#{resultado[1]}"
puts ''
