# Programação Orientada a Objetos I

# Assunto da aula
# Como o tema deste episódio é extenso, o conteúdo será dividido em duas partes. 
# Nesta primeira você aprenderá o que é Programação Orientada a Objetos e como utilizá-la na linguagem Ruby.

 
# Conteúdo
    # POO
    # Objeto
    # Classe
    # Classes no Ruby
 

# POO
# POO (Programação Orientada a Objetos) é um  Paradigma de programação criado para lidar com 
# softwares grandes e complexos. É um conceito seguido não só pelo Ruby, mas também por 
# várias outras linguagens de programação como Java, Python, C++, etc.

# Sua estrutura é definida por 04 pilares: Abstração, Encapsulamento, Herança e Poliformismo.

 
# Pilares
# A seguir, veja o conceito de cada pilar da Programação Orientada a Objetos:

# Abstração
# Ação de abstrair uma entidade do mundo real e transformá-la em uma classe.

# Encapsulamento
# Ato de dividir um programa em diversas partes tornando-o flexível, fácil de modificar 
# e incluir novas funcionalidades.

# Herança
# Habilidade de criar uma Classe com características de outra existente. 
# A herança prove o reuso e reaproveitamento de código.

 # Poliformismo
# Capacidade de utilizar um método de diferentes formas para diferentes Objetos.

 
# Objeto
# O que é?
# Por definição, objeto é toda coisa material que pode ser percebida pelos sentidos, 
# como por exemplo um carro, livro, cachorro, caneta, avião e etc.

# Na programação um objeto é a representação de um objeto do mundo real.

# Todos estes objetos apresentam duas característica em comum: informações e comportamentos.

# Ex:  Cachorro

# Informações
    # Raça: Pastor Alemão
    # Peso: 35 Quilos
    # Idade: 3 Anos

# Comportamento
    # Late
    # Come
    # Corre
 
# Em POO chamamos as informações de attributes e os comportamentos de methods.


# Classe
# O que é?
# Tendo como exemplo o objeto carro, pense em uma classe como a planta deste carro. 
# Com ela é possível construir vários carros.

# Uma classe é como a planta de um objeto.


# Classes no Ruby
# Uma classe é definida pela palavra class seguida de seu Nome, e finalizada pela palavra end.

# O nome de uma classe deve sempre começar com letra maiúscula. Para nomes compostos utilize o padrão CamelCase.

# 1- Crie um arquivo chamado computer.rb com o seguinte código

class Computer
    def turn_on
        'turn on the computer'
    end

    def shutdown
        'shutdown the computer'
    end
end
puts ''

# Você criou a classe do objeto Computer com os métodos turn_on e shutdown.


# 2- Inicialize um novo objeto Computer e depois execute seu comportamento shutdown 
# adicionando o seguinte código ao final do arquivo computer.rb.

computer = Computer.new     # criando um objeto "computer" que faz o uso dos métodos da classe "Computer"

puts computer.turn_on   # inicializando o objeto criado
puts computer.shutdown  # deslizando o objeto criado
puts ''

# Neste programa você utilizou dois pilares da programação orientada a objetos:

# Abstração -> representando o objeto Computer em uma classe.

# Encapsulamento -> dividindo o projeto em pequenas partes.


# 3- Execute o programa

# ruby computer.rb

# 4- Faça o teste novamente trocando a instrução computer.shutdown por computer.turn_on.

 

# Herança
# Para herdar características de outra classe, adicione na frente do nome de uma classe filha 
# o símbolo de menor e  depois o nome da classe pai.

# Ex:

# class ClasseFilha < ClassePai

# 1 - Crie um programa aninmal.rb como o seguinte código

# criando uma classe "Animal" com dois métodos
class Animal
    # definindo o método "pular"
    def pular
        puts 'Toing! tóim! bóim! póim!'
    end

    # definindo o método "dormir"
    def dormir
        puts 'ZzZzzz!'
    end
end

# criando uma classe "Cachorro" com apenas um método
# porém essa classe herda métodos da classe "Animal"
class Cachorro < Animal     # classe Filha "Cachorro" herdando métodos da classe Pai "Animal"
    # definindo o método "latir"
    def latir
        puts 'Au au'
    end
end

cachorro = Cachorro.new     # instanciando um objeto "cachorro"
cachorro.pular              # chamando o método "pular" - herdado da classe Pai
cachorro.dormir             # chamando o método "dormir" - herdado da classe Pai
cachorro.latir              # chamando o método "latir" - herdado da classe Filha
puts ''

# Cachorro é um objeto que possui todos os comportamentos existentes na 
# classe animal (pular e respirar), então ele herda esta classe.

# Sendo assim, é possível executar os métodos pular e respirar através de um objeto Cachorro.


# Para fixar melhor as características de herança, vamos criar uma nova classe e um novo objeto.

# definindo uma nova classe "Gato" Filha
# também herdará métodos da classe Pai "Animal"
class Gato < Animal
    # definindo o método "miar"
    def miar
        puts 'Miau miau'
    end
end

gato = Gato.new         # instanciando um objeto "gato"
gato.pular              # chamando o método "pular" - herdado da classe Pai
gato.dormir             # chamando o método "dormir" - herdado da classe Pai
gato.miar               # chamando o método "miar" - herdado da classe Filha
puts ''

# Perceba que, se você tentar chamar um método exclusivo da classe Filha 
# em um outro objeto que não possui esse método, o código apresentará uma mensagem de erro.

# "undefined method `latir' for #<Gato:0x0000559551b5cf98> (NoMethodError)"

# Vamos para exemplo prático.
# gato.latir      # método esse exclusivo do "Cachorro"

# Poliforminsmo - Exemplo modificado

# 1 - Crie  um arquivo chamado polymorphic.rb com o seguinte código

class Instrumento       # classe Pai "Instrumento"
    def escrever        # método definido
        puts 'Escrevendo'
    end
end

class Teclado < Instrumento     # classe Filha "Teclado" herdando método da classe Pai "Instrumento"
end

class Lapis < Instrumento       # classe Filha "Lapis" herdando método da classe Pai "Instrumento"
    # método pertencente a classe Pai, porém aqui estamos sobrescrevendo o método do Pai
    # com uma nova mensagem
    def escrever
        puts 'Escrevendo à lápis!'
    end
end

class Caneta < Instrumento      # classe Filha "Caneta" herdando método da classe Pai "Instrumento"
    # método pertencente a classe Pai, e também estamos sobrescrendo o método do Pai
    # com uma nova mensagem
    def escrever
        puts 'Escrevendo à caneta!'
    end
end

# instanciando três objetos "teclado", "lapis" e "caneta"
teclado = Teclado.new
lapis = Lapis.new  
caneta = Caneta.new


puts "Teclado:"
teclado.escrever
puts "Lápis:"
lapis.escrever 
puts "Caneta:"
caneta.escrever
puts ''

# instanciando novos objetos
novosInstrumentos = [Teclado.new, Lapis.new, Caneta.new]

# # chamamos o método escrever pra qualquer instrumento
novosInstrumentos.each do |instrumento|
     instrumento.escrever
end
puts ''

# O comportamento do método escrever depende do Objeto que o invoca.


# Vamos realizar mais um exemplo para fixar os conceitos.
# Para isso, iremos criar uma classe "Carro" (Pai), onde:
    # acelerar, frear e parar sejam métodos dessa classe
# Outra classe (Filha) "Marca" que herdará funções da classe "Carro"

class Carro

    def acelerar
        puts 'O carro acelerou!'
    end

    def frear
        puts 'O carro freou!'
    end

    def parar
        puts 'O carro parou!'
    end
end

class Marca < Carro
    def vw
        puts 'Volkswagem'
    end

    def gm
        puts 'Chevrolet'
    end

    def fiat
        puts 'Fiat'
    end
end

carro1 = Marca.new
carro2 = Marca.new
carro3 = Marca.new

carro1.acelerar
carro1.frear
carro1.parar
carro1.vw
puts ''

carro2.acelerar
carro2.frear
carro2.parar
carro2.gm
puts ''

carro3.acelerar
carro3.frear
carro3.parar
carro3.fiat
puts ''




