# tipos de dados

# Integer
# como na matemática, Inteiro é o tipo de dado que representa 
# o conjunto de números positivos, negativos e 0.

# criando um objeto do tipo Integer 
# atribuindo à uma variável o seguinte valor inteiro
num_int = 40

# a função ".class" retorna a classe da variável
p num_int.class


# Float
# tipo que representa os números reais inexatos
# de forma abreviada, são números decimais, números que contêm ponto flutuante
num_float = 3.14

p num_float.class 


# Boolean
# tipo de dado usado para informar a veracidade de algo
# possui apenas dois estados
# true que é uma instância da classe TrueClass e 
# false que é uma instância da classe FalseClass
    # caso não saiba o que é uma classe
    # iremos abordar este assunto mais a frente
var_bool = true
p var_bool.class


# String
# tipo que representa um texto - um conjunto de letras, símbolos ou números
# pode ser definido de várias formas
# porém, as mais comuns são dentro de aspas simples ou duplas
var_str = "Programando com RUBY"
p var_str.class

# instanciando uma variável do tipo "String"
msg = 'Hello World!'

# imprimindo a variável - podemos imprimir de três formas
puts msg
p msg
print "#{msg}\n"

# tipo de dado na variável
puts msg.class


# Array
# um tipo que nos permite armazenar uma lista ordenada de dados em um único objeto
# para definir um array você deve utilizar colchetes "[ ]"
num_array = [15, 7, 3.475]
p num_array
p num_array.class

# também é possível instanciar vários tipos de dados em um array
variety_array = ['Ruby', 2021, 3.14, true]
p variety_array
p variety_array.class 

    
# Symbol
# Símbolo é um tipo de dado semelhante a String
# com a diferença de que ele é um objeto imutável
# duas strings idênticas podem ser objetos diferentes
# mas um símbolo é apenas um objeto, ocupando sempre o mesmo espaço na memória

# um símbolo sempre é definido começando com dois pontos : seguido de seu nome
var_simbol = :ruby_simbol

# saiba qual posição da memória esse símbolo está salvo, rodando
# para isso, utilizamos a função "object_id"
p var_simbol.object_id

# agora crie outra variável com o mesmo símbolo 
# e note que ela aponta para o mesmo endereço na memória
var_simbol1 = :ruby_simbol
p var_simbol1.object_id

# para confirmar que os objetos é do tipo Symbol execute a função já conhecida
p var_simbol.class
p var_simbol1.class


# Hash
# tipo que representa uma coleção de dados organizados 
# por chaves únicas e seus respectivos valores
# enquanto arrays são definidos com colchetes
# hashes são definidos com chaves ‘{ }’
p var_hash = {language: 'Ruby', year: 1995, by: "Yukihiro 'Matz' Matsumoto"}
p var_hash.class 


# Tipagem Dinâmica
# no ruby não é preciso definir o tipo de dado antes de atribuir um valor à uma variável
# o tipo é dinâmico, ou seja, ele é definido de acordo com o dado atribuído

# um exemplo é que podemos alterar o valor de uma variável diversas vezes 
# e em cada uma delas notar que o tipo de dado também mudou
p tip_dynamic = 13
p tip_dynamic.class 

p tip_dynamic = 0.789
p tip_dynamic.class

p tip_dynamic = 'Ruby'
p tip_dynamic.class

p tip_dynamic = :ruby_simbol
p tip_dynamic.class 

# perceba que, usamos um mesmo nome para variável 
# e instanciando tipos de dados diferentes