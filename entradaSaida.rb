# Entrada/Saída
# essas duas operações manipulam dados
# com a diferença que a entrada ocorre quando o programa lê dados 
# que podem ter sido recebidos de um teclado, de um arquivo, 
# ou então de outro programa 
# e a saída é um dado produzido pelo programa que pode ser exibido em uma tela, 
# enviado para um arquivo ou então para outro programa

# entrada de dado
print "What's ur name: "

# recebendo uma entrada do teclado
name = gets.chomp

# saída utilizando puts
# use códigos ruby dentro de uma string com #{code}
puts "Hello, #{name}!"

# perceba que primeiro é exibido uma mensagem pedindo que a pessoa informe seu nome
# depois é criado uma variável chamada "name" que é igual a "gets.chomp"

# mas afinal de contas o que é isso?

    # "gets" é um método que recebe como entrada um dado inserido pelo teclado
    # como ele captura qualquer coisa precisamos do ".chomp" 
    # para que quando o enter for pressionado ele não crie uma quebra de linha

# por fim realizamos uma nova saída de dado imprimindo uma saudação 
# para a pessoa que informou seu nome
