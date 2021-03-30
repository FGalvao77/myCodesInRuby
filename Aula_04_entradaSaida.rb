# Entrada/Saída

# Essas duas operações manipulam dados, com a diferença que a entrada ocorre quando o programa lê dados que podem ter sido recebidos de um teclado, de um arquivo, ou então de outro programa e a saída é um dado produzido pelo programa que pode ser exibido em uma tela, enviado para um arquivo ou então para outro programa.

# 1. Para fazer um programa com entrada e saída de dados, crie um arquivo chamado onebit_io.rb e adicione o seguinte código.

# entrada de dado
print "What's ur name: "

# recebendo uma entrada do teclado
name = gets.chomp

# saída utilizando puts
# use códigos ruby dentro de uma string com #{code}
puts "Hello, #{name}!"

# Perceba que primeiro é exibido uma mensagem pedindo que a pessoa informe seu nome. Depois é criado uma variável chamada name que é igual a gets.chomp.

# Mas afinal de contas o que é isso?

# "gets" é um método que recebe como entrada um dado inserido pelo teclado. Como ele captura qualquer coisa precisamos do .chomp para que quando o enter for pressionado ele não crie uma quebra de linha.

# Por fim realizamos uma nova saída de dado imprimindo uma saudação para a pessoa que informou seu nome.

# 2. Rode o arquivo e veja seu resultado

# O gets recebe os dados como String, mas podemos transformá-los em números inteiros e realizar operações matemáticas com eles como no exemplo a seguir.

# 4. Crie um arquivo chamado arithmetic_io.rb e adicione o seguinte código

print "Dgite o primeiro número inteiro: "
num_1 = gets.chomp.to_i	# a função ".to_i" transforma a string e um número inteiro

print "Digite o segundo número inteiro: "
num_2 = gets.chomp.to.i

soma = num_1 + num_2
puts "O resultado da adição entre os dois números é #{soma}








