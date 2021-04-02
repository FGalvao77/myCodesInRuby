# Missões especiais

# As missões desta aula reforçarão seu aprendizado e ajudarão a expandir sua visão sobre 
# as possibilidades do uso de modules.

 

# Missão 1

# O ruby oferece um método chamado capitalize para tornar a primeira letra de uma string maiúscula.

# Sabendo disso crie uma lambda que recebe um nome como parâmetro e o imprime com a primeira letra maiúscula. 
# Esta lambda deverá ser salva dentro de uma variável que será passada como argumento de um método chamado 
# capitalize_name.

# Dentro deste método você chamará a lambda duas vezes, passando como parâmetro em cada uma delas um nome diferente.   

# name_lambda = -> (name){puts name.capitalize}

# def capitalize_name(name_lambda)
#     name_lambda.call('fernando')
# end 

# capitalize_name(name_lambda)

# outro código

# name_lambda = -> (name){puts name.capitalize}
# print "Digite seu nome: "
# your_name = gets.chomp
# name_lambda.call(your_name)

# def capitalize_name(name_lambda)
#     name_lambda.call
# end

# capitalize_name(name_lambda)

# print "Digite seu nome: "
# your_name = gets.chomp

# puts your_name

# first_lambda = -> (names){names.each {|name| puts name}}
# names = ['fernando', 'kátia', 'sara']
# first_lambda.call(names)

def capitalize_name(name_lambda)
    name_lambda.call('fernando')
    name_lambda.call('kátia')
end 

name_lambda = -> (name){puts name.capitalize}

capitalize_name(name_lambda)




# Missão 2

# Crie um módulo chamado Person com as classes Juridic e Physical.

# Ao executar a instrução

# Person::Juridic.new('M.C. Investimentos', '4241.123/0001').add

# Seu código deverá retornar

# Pessoa Jurídica Adcionda
# nome: M. C. Investimentos
# cnpj: 4241.123/0001

# E com a instrução

# Person::Physical.new('José Almeida', '425.123.123-123').add

# Deverá retornar

# Pessoa Física Adicionada
# nome: José Almeida
# cpf: 425.123.123-123

module Person

    class Juridic
        def initialize(name, cnpj)
            @name = name
            @cnpj = cnpj
        end
    
        def add
            puts 'Pessoa Jurídica Adiconada'
            puts "nome: #{@name}"
            puts "cnpj: #{@cnpj}"
        end
    end

    class Physical
        def initialize(name, cpf)
            @name = name 
            @cpf = cpf
        end

        def add
            puts 'Pessoa Física Adicionada'
            puts "nome: #{@name}"
            puts "cpf: #{@cpf}"
        end
    end
end

Person::Juridic.new('M.C. Investimentos', '4241.123/0001').add
Person::Physical.new('José Almeida', '425.123.123-123').add  



# Missão 3

# Pesquisar o que é o Proc em Ruby e descobrir as diferenças entre ele e o Lambda