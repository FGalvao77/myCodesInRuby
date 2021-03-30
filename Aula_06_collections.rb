# Collections

# Conteúdo

# O conteúdo que será abordado na aula:

# Collection
# Manipulando Collections
	# Array
	# Hash
# Iterações
 
# Nesta aula você aprenderá o que são collections e como manipulá-las

 
# O que são Collections
 
# Na programação, collection representa um conjunto de dados semelhantes em uma única unidade

# Ex: Um amigo tem uma grande quantidade de livros sobre programação e a fim de guardá-los 
        # de forma organizada os colocou dentro de uma caixa com o rótulo “Livros de Programação”
    # Note que nossa caixa é uma representação dos livros com conteúdo de Programação
    # Uma collection é exatamente isso, um local onde concentramos uma quantidade de itens semelhantes

    # Agora, sempre que meu amigo precisar rever um livro de programação, ele saberá onde encontrá-lo!

    # Dois tipos de collections bastante utilizados na linguagem Ruby são Array e Hash, 
        # os quais conhecemos na segunda aula deste curso

 
# Manipulando Collections

# Array
# Existem várias maneiras de manipular arrays
# Abaixo encontram-se algumas muito úteis para todo programador

 
# Criando um Array

# 1. Crie um array vazio
 estados = []
 p estados
# Collections podem ter zero ou mais elementos

 
# Adicionando itens 
# 1. Insirindo um novo item ao array "estados"
 estados.push('São Paulo') 
 # A função ".push" adiciona elementos sempre de forma sequencial
 
 p estados

 # 2. Também é possível inserir vários elementos de uma só vez
 p estados.push('Paraíba', 'Pernambuco', 'Minas Gerais')

 # 3. Veja o array "estados" com a instrução abaixo
 puts estados

 # 4. Podemos deixar o array em ordem alfabética
 # Utilizando a função ".sort()" e, iremos reescrever na própria variável
 p estados =  estados.sort()

# 5. Para manter nossa coleção organizada em ordem alfabética
    # ao inserir os itens 'Acre' e 'Amapá', devemos especificar
    # que eles ocuparão as primeiras posições do array.
    # Para isso utilizamos a função "insert"

estados.insert(0, 'Acre', 'Amapá')

# Primeiro é passado o valor do índice onde a instrução será aplicada 
    # acompanhado por um ou mais itens a serem adicionados

# 6. Exibindo o array "estados" em ordem alfabética
p estados 


# Acessando elementos

# Como já vimos na segunda aula, o item de um array pode ser acessado pelo valor de seu index

# 1. Recupere o segundo elemento do array estados
p estados[1]

# 2. Você também pode acessar índices através de intervalos
p estados[2..4]
# Retorna os itens dos índices 2, 3 e 4

# Utilizando números negativos conseguimos recuperar elementos 
    # a partir do último item do array, de forma regressiva
    # O número -1 representa o último elemento

# 3. Acessando o penúltimo elemento de estados
p estados[-2]

# 4. Também funciona com intervalos
p estados[-3..-1]

# 5. Uma forma muito intuitiva e natural de recuperar elementos o primeiro item é usar "first"
p estados.first

# 6. Seguindo a mesma ideia, use "last" para o último elemento
p estados.last


# Obtendo informações

# 1. Para saber a quantidade de itens em um array, podemos utilizar as funções ".count" ou ".length"
    # vocẽ pode utilizar qualquer uma destas duas instruções

p estados.count 
p estados.length 

# 2. Descubra se o array está vazio com a função ".empty?"
p estados.empty? # o resultado será verdadeiro (true) ou falso (false)

# 3. Verificando se um item específico está presente,
    # seu retorno é um booleano - true | false
p estados.include?('São Paulo') 
p estados.include?('Santa Catarina')


# Excluindo elementos do array

# 1. Remova um item através de seu índice
p estados.delete_at(2)

# 2. Excluindo o último item do array
p estados.pop

# 3. Para excluir o primeiro item
p estados.shift


# Hash

# A seguir veja exemplos importantíssimos sobre manipulação de hashes

# 1. Criando um novo hash vazio
capitais = Hash.new 
p capitais

# 2. Um hash também pode ser iniciado com vários pares de chave-valor
capitais = {acre: 'Rio Branco', sao_paulo: 'São Paulo'}
p capitais

# 3. A chave de um hash pode ser qualquer tipo de dado
hash = {1 => 'Chave do tipo inteiro', 
        true => 'Chave do tipo booleano', 
        [1,2,3] => 'Chave do tipo array' }

p hash


# Adicionando itens

# 1. Adicione um novo item ao hash "estados"
capitais[:minas_gerais] = 'Belo Horizonte'
p capitais

# 2. Acesse a capital que acabamos de inserir utilizando sua chave
p capitais[:minas_gerais]
# De forma sucinta, a chave é o index dos itens

# 3. Para retornar todas as chaves de um hash
p capitais.keys

# 4. Agora, todos os valores de um hash
p capitais.values


# Exclusão

# 1. Removendo um elemento chave-valor
p capitais.delete(:acre)


# Obtendo informações de um hash

# 1. Descubrindo o tamanho do hash
p capitais.size

# 2. Verificando se o hash está vazio
p capitais.empty?


# Iterações

# Agora, você será apresentado a três novas estruturas de repetição
    # utilizadas para trabalhar com "collections"

# Each

# Percorre uma coleção de forma parecida ao "for", porém, não sobrescrevendo o valor
    # de variáveis fora da estrutura de repetição

# Array

# 1. Adicione o seguinte código a um programa chamado "each_array.rb"

names = ['Kátia', 'Sara', 'Eloah']

name = 'Fernando Galvão'

names.each do |name|
    puts name
end

# Ao executar o programa perceba que não foi alterado o valor da variável "name",
    # definida antes da estrutura de repetição


# Hash

# 1. Crie um arquivo chamado "each_hash.rb"

aulas = {'Aula 1' => 'liberada', 
         'Aula 2' => 'liberada', 
         'Aula 3' => 'liberada',
         'Aula 4' => 'liberada',
         'Aula 5' => 'em breve'}

# Em cada vez a estrutura percorre o hash, o elemento atual é representado por key e value

p aulas


# Map
    
# Cria um array baseando-se em valores de outro array existente.

# 1. Crie um arquivo chamado "map.rb"

array = [1, 2, 3, 4]

# \n é uma quebra de linha
puts "\nExecutando .map multiplicando cada item por 2"
# .map não altera o conteúdo do array original
new_array = array.map do |a|
    a * 2
end

puts "\nArray Original"
puts " #{array}"

puts "\nNovo Array"
puts " #{new_array}"

puts "\nExecutando .map! multiplicando cada item por 2"
# .map! força que o conteúdo do array original seja alterado
array.map! do |a|
    a * 2
end

puts "\nArray Original"
puts " #{array}"
puts ''

# Como vimos neste exemplo, podemos forçar que o array original
    # seja alterado utilizando map!


# Select

# Realiza uma seleção de elementos presentes em uma collection
        # através de uma condição pré definida. Traz como resultado somente
        # os valores que passam nesta condição.

# Array

# 1. Crie um arquivo chamado "select_array.rb"
array = [1, 2, 3, 4, 5, 6]

selection = array.select do |a|
    a >= 4
end

puts selection

# A condição para que um item do array seja selecionado
    # é que seu valor seja maior ou igual a 4


# Hash

# 1. Crie um arquivo chamado "select_hash.rb"

hash = {0 => 'zero',
        1 => 'um', 
        2 => 'dois', 
        3 => 'três'}

puts 'Selecionando keys com valor maior que 0'
selection_key = hash.select do |key, value|
    key > 0
end

puts selection_key

# Veja que dentro deum Hash podemos fazer uma seleção
    # por chave ou valor


