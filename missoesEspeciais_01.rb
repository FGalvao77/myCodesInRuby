# Missões especiais

# Missão 1
    # No Irb, crie todos os principais tipos de dados 
        # mencionados na aula com valores diferentes dos exemplos.

# Integer
p var_int = 15
p var_int.class

# Float
p var_float = 3.14
p var_float.class

# Boolean
p var_boolean_True = true 
p var_boolean_False = false
p var_boolean_True.class
p var_boolean_False.class

# String
p var_string = 'Meu nome é...'
p var_string.class

# Array
p var_array = [15, 0.78, 1012]
p var_array.class

p var_array_diverses = [15, 0.78, 'Ruby', true] # podemos instanciar vários tipos de dados em um array
p var_array_diverses.class

# Symbol
p var_symbol = :name_symbol
p var_symbol.class
p var_symbol.object_id # posição da memória que o símbolo está salvo

p var_symbol_01 = :name_symbol
p var_symbol_01.object_id # perceba que é a mesmo posição da memória o símbolo está salvo

# Hash
p var_hash = {language: 'Ruby', year: 1995, by: "Yukihiro 'Matz' Matsumoto"}
p var_hash.class  

# Tipagem Dinâmica
# perceba que, usamos um mesmo nome para variável 
# instanciando tipos de dados diferentes
# e cada vez o tipo de dado é atualizado
p type_dynamic = 13
p type_dynamic.class 

p type_dynamic = 0.789
p type_dynamic.class

p type_dynamic = 'Ruby'
p type_dynamic.class

p type_dynamic = :ruby_simbol
p type_dynamic.class 


# Missão 2
    # Crie um programa que receba o nome e idade de uma pessoa 
        # e no final exiba estes dois dados em uma única frase.

# entrada do nome
print "What'z ur name?  "
# recebendo o dado via teclado e salvando na variável "name"
name = gets.chomp

# entrada da idade
print "Enter ur age: "
# recebendo o dado e salvando na variável "age"
age = gets.to_i

# concatenando os dados das variáveis - name e age
# imprimindo na tela
print "Me chamo #{name} e tenho #{age} anos.\n"


# Missão 3
    # Crie um programa que que receba dois números inteiros 
        # e no final exiba a soma, subtração, adição e divisão entre eles.

# entrada do primeiro número inteiro
print "Digite o primeiro número inteiro: "
# salvando o dado na variável int_1
int_1 = gets.chomp.to_i

# entrada do segundo número inteiro
print "Digite o segundo número inteiro: "
# salvando o dado na variável int_2
int_2 = gets.chomp.to_i

# concatenando os dados
print "\nSegue os valores das variáveis: int_1 = #{int_1} | int_2 = #{int_2}\n"

print "\n\tOperações matemáticas:\n"
puts "\t\t1) Soma: #{int_1 + int_2}"
puts "\t\t2) Subtração: #{int_1 - int_2}"
puts "\t\t3) Multiplicação: #{int_1 * int_2}"
puts "\t\t4) Divisão: #{int_1 / int_2}"
puts "\t\t5) Módulo da divisão: #{int_1 % int_2}"
puts "\t\t6) Exponenciação: #{int_1 ** int_2}"




