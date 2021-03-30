# Conceitos Básicos

# Conteúdo
# Nesta aula você aprenderá conceitos básicos de Ruby, importantes para o início de aprendizado em qualquer linguagem de programação.

# Será abordado:

# Tipos de dados
# Operadores Matemáticos
# Entrada/Saída

# Tipos de dados
# Existem para classificar dados, possibilitando a definição de regras para cada tipo. Com eles o Ruby sabe como lidar com os dados de nossos programas.

# Os principais tipos de dados são:

# Integer
# Como na matemática, Inteiro é o tipo de dado que representa o conjunto de números positivos, negativos e 0.

# 1. Crie um objeto do tipo Integer atribuindo à uma variável o seguinte valor inteiro.

# (variável é um local onde armazenamos dados que serão reutilizados).

num_int = -40

# 2. Confirme que a variável realmente é do tipo inteiro executando.

p num_int.class	# a função ".class" retorna a classe da variável


# Float
# Tipo que representa os números reais inexatos.  De forma abreviada, são números decimais, números que contêm ponto flutuante

# 1. Faça que um objeto tenha o tipo float atribuindo a ele um valor decimal.
# (praticamente tudo no ruby é um objeto).

num_float = 39.0075

# 2. Prove que o objeto realmente é do tipo float executando.

num_float.class


# Boolean
# Tipo de dado usado para informar a veracidade de algo. Possui apenas dois estados, sendo eles true que é uma instância da classe TrueClass e false que é uma instância da classe FalseClass.

# (não se preocupe caso não saiba o que é uma classe, iremos abordar este assunto em uma próxima aula)

# 1. Inicie uma variável com tipo boolean da seguinte forma.

var_bool = true

# 2. Confirme que ela é uma instância da classe TrueClass executando.

p var_bool.class


# String
# Tipo que representa um texto. Um conjunto de letras, símbolos ou números. Pode ser definido de várias formas, porém, as mais comuns são dentro de aspas simples ou duplas.

# 1. Crie um objeto do tipo String atribuindo à uma variável o seguinte texto.

var_str = "Programando com RUBY"

# 2. Para ter certeza que o objeto é uma string, rode o comando abaixo

p var_str.class

# Instanciando uma variável do tipo "String".

msg = 'Hello World!'

# Imprimindo a variável - podemos imprimir de três formas

puts msg
p msg
print "#{msg}\n"

# Tipo de dado na variável

puts msg.class


# Array
# Um tipo que nos permite armazenar uma lista ordenada de dados em um único objeto. Para definir um array você deve utilizar colchetes "[ ]".

# 1. Crie um objeto do tipo array

num_array = [15, 7, 3.475]
p num_array

# 3. Para nos certificarmos que bitcode_array é do tipo Array execute.

p num_array.class

# Também é possível instanciar vários tipos de dados em um array.

variety_array = ['Ruby', 2021, 3.14, true]
p variety_array
p variety_array.class 

# 2. Acesse a terceira posição do nosso array rodando.

num_array[2]


# Symbol
# Símbolo é um tipo de dado semelhante a String, com a diferença de que ele é um objeto imutável. Duas strings idênticas podem ser objetos diferentes, mas um símbolo é apenas um objeto, ocupando sempre o mesmo espaço na memória.

# 1. Um símbolo sempre é definido começando com dois pontos : seguido de seu nome.

Inicie um objeto do tipo Symbol atribuindo à uma variável o seguinte valor.
    
var_simbol = :ruby_simbol

# 2. Saiba qual posição da memória esse símbolo está salvo para isso, utilizamos a função "object_id"

p var_simbol.object_id

# 3. Agora crie outra variável com o mesmo símbolo e note que ela aponta para o mesmo endereço na memória.

var_simbol1 = :ruby_simbol
p var_simbol1.object_id

# 4. Para confirmar que os objetos é do tipo Symbol execute a função já conhecida
p var_simbol.class
p var_simbol1.class


# Hash
# Tipo que representa uma coleção de dados organizados por chaves únicas e seus respectivos valores. Enquanto arrays são definidos com colchetes, hashes são definidos com chaves ‘{ }’

# 1. Crie um objeto do tipo Hash adicionando a uma variável o seguinte valor

p var_hash = {language: 'Ruby', year: 1995, by: "Yukihiro 'Matz' Matsumoto"}

# 2. Podemos acessar o valor de uma chave

p var_hash[:by]
p var_hash[:language]

# 3. Certifique-se que a variável é do tipo Hash executando
p var_hash.class 


# Tipagem Dinâmica
# No ruby não é preciso definir o tipo de dado antes de atribuir um valor à uma variável. O tipo é dinâmico, ou seja, ele é definido de acordo com o dado atribuído.

# Um exemplo é que podemos alterar o valor de uma variável diversas vezes e em cada uma delas notar que o tipo de dado também mudou.

# 1. Execute as seguintes linhas de comando

p type_dynamic = 13
p type_dynamic.class 

p type_dynamic = 0.789
p type_dynamic.class

p type_dynamic = 'Ruby'
p type_dynamic.class

p type_dynamic = :ruby_simbol
p type_dynamic.class 

