# Programação Orientada a Objetos II

# Assunto da aula
# Nesta segunda parte da aula sobre Programação Orientada a Objetos será abordado 
# como instanciar classes localizadas em outro arquivo de um projeto, os diferentes 
# tipos de variáveis da linguagem Ruby, como inserir e recuperar atributos e como 
# utilizar um método construtor.



# Conteúdo:
    # Require
    # Escopo de variáveis
    # Atributos
    # Construtores



# Require

# Na Aula 7 deste curso, você aprendeu a utilizar require ‘gem_name’ para carregar arquivos 
# de uma gem e assim poder escrever códigos com funcionalidades desta biblioteca.

# Com ele também é possível carregar arquivos ruby que foram escritos por você. 
# Para exemplificar como isso acontece você criará um projeto onde alguns arquivos conterão apenas uma classe.


# Projeto

# 1- Crie a pasta do projeto Animal executando

# mkdir Animal

# 2- Dentro da pasta animal crie um arquivo chamado animal.rb com o código:

class Animal
    def pular
        puts 'Toing! tóim! bóim! póim!'
    end

    def dormir
        puts 'ZzZzzzz!'
    end
end

# 3 - Agora crie um arquivo com o nome app.rb e adcione a ele o código:

require './animal.rb'

animal = Animal.new

animal.pular
puts ''

# Perceba que no require, você especificou o arquivo que será procurado partindo do caminho relativo a app.rb.

# Quando você não está trabalhando com gems e quer carregar um arquivo a partir do caminho 
# onde o código seré executado, utilize o require_relative.

# 4 - Substitua o código de app.rb por

require_relative 'animal'

animal = Animal.new
animal.pular
puts ''

# Se o arquivo animal.rb estivesse dentro de uma pasta chamada example, 
# o caminho ficaria "example/animal". Como só existe um arquivo chamado animal 
# não é preciso especificar a sua extensão.

# 5 - Agora, crie um arquivo chamado cachorro.rb com o código:

class Cachorro < Animal
  def latir
    puts 'Au au'
  end
end

# A classe Cachorro recebe como herança a classe Animal.
# Porque o require_relative de animal.rb não está ai?

# A resposta é simples:
# Você irá inicializar a classe Cachorro dentro de app.rb e esse arquivo já fez 
# um require_relative de animal.rb!

# 6 - Para incluir a inicialização e execução dos métodos da classe Cachorro 
# substitua o arquivo de app.rb por:

require_relative 'animal'
require_relative 'cachorro'

puts '--Animal--'
animal = Animal.new
animal.pular

puts '--Cachorro--'
cachorro = Cachorro.new
cachorro.pular
cachorro.latir
puts ''

# 7 - Execute o programa e veja o resultado

# ruby app.rb



# Escopo de variáveis

# Agora que você sabe dividir um programa em vários arquivos é interessante aprender sobre 
# os diferentes tipos de escopos de variáveis presentes no Ruby. Com este conhecimento você 
# terá a capacidade de escolher qual utilizar dependendo da situação.

# As variáveis se dividem em 04 tipos:
    # Variável Local
    # Variável Global
    # Variável de Classe
    # Variável de Instância

# A seguir, veja características de cada uma:


# Variável Local

# É declarada com a primeira letra de seu nome sendo uma letra minúscula ou sublinhado.

# Pode ser acessada apenas onde foi criada. Por exemplo, se você definir uma variável 
# local dentro de uma classe ela estará disponível apenas dentro desta classe, se a definiu 
# dentro de um método conseguirá acessá-la apenas dentro deste método e assim por diante.

# Para aplicação dos exemplos, criaremos uma pasta com o nome de escopoDeVariaveis e,
# dentro da pasta, iremos criar os arquivos dos tipos de variáveis.

# Exemplo:

class Bar
    def foo
      # pode ser definida como local ou _local
      local = 'local é acessada apenas dentro deste método'
      print local
    end
end

bar = Bar.new
bar.foo
puts ''


# Variável Global

# Declara com o prefixo $.
# Pode ser acessada em qualquer lugar do programa.
# Seu uso é FORTEMENTE DESENCORAJADO pois além de ser visível em qualquer lugar do código, 
# também pode ser alterada em inúmeros locais ocasionando dificuldades no rastreamento de bugs.

# Exemplo:

class Bar
  def foo
    $global = 0
    puts $global
  end
end

class Baz
    def qux
      $global += 1
      puts $global
    end
end

bar = Bar.new 
baz = Baz.new
bar.foo
baz.qux
baz.qux
puts $global


# Variável de Classe

# É declarada com prefixo @@.
# Pode ser acessada em qualquer lugar da classe onde foi declarada e seu valor é compartilhado 
# entre todas as instâncias de sua classe também.

# Exemplo:

class User
  @@user_count = 0
  def add(name)
    puts 'User #{name} adicionado'
    @@user_count += 1
    puts @@user_count
  end
end

first_user = User.new
first_user.add('Fernando')

second_user = User.new
second_user.add('Kátia')
puts ''


# Variável de Instância

# Seu nome começa com o símbolo @.
# Semelhante a variável de classe, tendo como única diferença o valor que não é compartilhado 
# entre todas as instâncias de sua classe.

# Exemplo:

class User
  def add(name)
    @name = name
    puts 'User adicionado'
    hello
  end

  def hello
    puts 'Seja bem vindo, #{name}!'
  end
end

user = User.new
user.add('Sara')
puts ''


# Atributos

# O que são atributos?

# Como você já sabe, objetos possuem informações e comportamentos.
# Na aula passada você viu a primeira parte deste conteúdo utilizando métodos para representar 
# comportamentos. Agora é hora de aprender o restante adicionando e recuperando informações de um objeto.

# Adicionando e Recuperando Informações

# 1 - Crie um arquivo chamado atributos.rb com o código

class Dog
    def name
      @name
    end

    def name = name
      @name = name
    end
end

dog = Dog.new
dog.name = 'Mel'
puts dog.name
puts ''

# O segundo recebe um valor e o atribui a variável @name. O primeiro método da classe Dog 
# retorna o valor da variável de instância @name. Se a variável ainda não estiver 
# definida, o resultado será nil.

# Podemos dizer que o primeiro é para recuperar e o segundo para adicionar/alterar uma informação.

# Declarar os métodos de um atributo pode ser vantajoso caso queira fazer algo além de definir 
# o valor da variável de instância. De outra forma, existe uma maneira mais fácil de realizar esta operação.

# 2 - Substitua o código de atributos.rb por

class Dog
    attr_accessor :name, :age
end

dog = Dog.new

dog.name = 'Mel'
puts dog.name

dog.age = '5 ano'
puts dog.age
puts ''

# O Ruby disponibiliza um método chamado attr_accessor que cria os métodos 
# var e var = para todos atributos declarados.


# Construtores

# Outra questão importante é que toda vez que a instância de uma classe é criada, 
# o Ruby procura por um método chamado initialize. Você pode criar este método para especificar 
# valores padrões durante a construção da classe.

# 1 - Crie um arquivo chamado construtor.rb com o seguinte código

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def chek
    puts 'Instância da classe iniciada com os valores: '
    puts 'Name = #{@name}'
    puts 'Idade = #{@age}'
  end
end

person = Person.new('Eloah', 13)
person.check
puts ''

# O número de parâmetros utilizados no método initialize é opcional.

# 2 - É possível criar a instância com valores padrões do objeto e executar o método check 
# em apenas uma instrução.

# Substitua as duas últimas linhas do programa por:
Person.new('Eloah', 13).check




