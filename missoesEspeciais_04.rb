# Missões especiais

#Missão 1

# Crie um programa que possua um método que resolva a potência dado um número base e seu expoente. 
# Estes dois valores devem ser informados pelo usuário.

def potencia(base, expoente)
    base ** expoente
end 

print "\n\t\tCálculo de Potenciação\n"

print "\tDigite a base: "
base = gets.chomp.to_f

print "\tDigite o expoente: "
expoente = gets.chomp.to_f

resultado = potencia(base, expoente)
puts "\tPara a base de #{base} e o expoente de #{expoente} o seu resultado é #{resultado}"
print "\t--------------------------------------------------\n"

 

# Missão 2
# Siga a documentação da gem cpf_cnpj para criar um programa 
# que recebe como entrada um número de cpf e em um método verifique se este número é válido.

# Link da documentação:

# https://github.com/fnando/cpf_cnpj

# gem install cpf_cnpj

# Foi instalado o gem "cpf_cnpj" dentro de uma arquivo/pasta.
# Com intuito de ter um ambiente isolado para melhor gerenciamento da gem.

require 'cpf_cnpj'

def cpfOK(num_cpf)
    if CPF.valid?(num_cpf)
        return 'CPF válido!'
    else
        return 'CPF inválido!'
    end
end

print "\t\tValidação do CPF\n"
print "\tDigite o seu cpf: "
num_cpf = gets.chomp.to_i

resultado = cpfOK(num_cpf)
print "\t#{resultado}\n"
print "\t--------------------------------------------------\n"