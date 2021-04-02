# Missões especiais
 

# Missão 1

# Crie uma expressão regular que faça o casamento de padrão com o 
# número de telefone presente no texto a seguir.

# “Olá, tudo bem? Meu whats app é (99) 7 4321-1234”

txt = "Olá, tudo bem? Meu whats app é (99) 7 4321-1234"
puts msg = /\(\d{2}\)\d\d{4}-\d{4}/.match(txt)
puts "#{txt}"



# Missão 2

# Em uma classe chamada Carro, crie um método público chamado get_km que 
# recebe como parâmetro a seguinte informação “Um fusca de cor amarela viaja a 80km/h ”.

# O método get_km deve chamar um método privado com o nome de find_km. 
# Este deve localizar e retornar o casamento de padrão 80km/h.

# No final, imprima este retorno.

class Car 
    def get_km(text)
        km = find_km(text)
        puts km
    end

    private

    def find_km(text)
        /\d{2,}km\/h/.match(text)
    end
end

text = "Um fusca de cor amarela viaja a 80 km/h"

car = Car.new
puts car.get_km(text)
