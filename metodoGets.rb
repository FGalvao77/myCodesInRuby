# Método "gets"
# o gets recebe os dados como String
# mas podemos transformá-los em números inteiros 
# e realizar operações matemáticas com eles como no exemplo a seguir

# entrada do primeiro dado
print "Digite o primeiro número inteiro: "
# ".to_i" transforma a string em um número inteiro

# salvando o dado na variável "number1"
number1 = gets.chomp.to_i

# entrada do segundo dado
print "Digite o segundo número inteiro: "
number2 = gets.chomp.to_i

# criando uma nova variável "soma"
soma = number1 + number2
# imprimindo o resultado
puts "O resultado da soma dos números (#{number1} + #{number2}) é #{soma}"
