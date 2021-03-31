# Missões especiais
# Agora que você sabe o que é Programação Orientada a Objetos, 
# crie um programa seguindo este paradigma com:


# Classes
 
# Esportista
    # Métodos
        # competir -> Imprime a mensagem “Participando de uma competição”
 

# JogadorDeFutebol
    # Métodos
        # correr -> Imprime a mensagem “Correndo atrás da bola”
 

# Maratonista
    # Métodos
        # correr-> Imprime a mensagem “Percorrendo o circuito”
 

# As classes JogadorDeFutebol e Maratonista devem herdar os comportamentos da classe Esportista.

# No final do programa execute os métodos competir e correr em objetos do tipo JogadorDeFutebol e Maratonista.



# definindo a classe "Esportista" - classe Pai
class Esportista
    def competir                        # criando o método para a classe Pai
        puts 'Participando de uma competição'
    end
end

# definindo a classe "JogadorDeFutebol" - classe Filha
class JogadorDeFutebol < Esportista     # classe Filha herdando método da classe Pai
    def correr                          # criando o método para classe Filha
        puts 'Correndo atrás da bola'
    end
end

# definindo a classe "Esportista" - classe Filha
class Maratonista < Esportista          # classe Filha herdando método da classe Pai
    def correr                          # criando o método para classe Filha
        puts 'Percorrendo o circuito'
    end
end

# criando os objetos - "jogador" e "maratonista"
jogador = JogadorDeFutebol.new
maratonista = Maratonista.new
puts ''

# aplicando os métodos aos objetos criados
puts 'Jogador de futebol'
jogador.competir
jogador.correr
puts ''

puts 'Maratonista'
maratonista.competir
maratonista.correr
puts ''



# instanciando novos objetos
novosEsportistas = [JogadorDeFutebol.new, Maratonista.new]

# outro método de aplicar os métodos das classes aos novos objetos
novosEsportistas.each do |esportista|
    esportista.competir
    esportista.correr
end
puts ''



