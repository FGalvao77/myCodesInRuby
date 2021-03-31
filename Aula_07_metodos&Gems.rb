# Métodos e Gems

# Conteúdo

# O conteúdo que será abordado na aula:

# Métodos

    # O que são?
    # Trabalhando com métodos
        # Como criar?
        # Parâmetros
        # Retorno
# Gems
    # O que são?
    # Trabalhando com gems
        # Como instalar uma gem
        # Novas Funcionalidades
        # Desinstalar uma gem
        # Informação
        # Bundler


# Métodos

# O que são?
# Método é uma forma de organizar funções específicas de um programa.  
# Caso necessário permite a reutilização de código, ou seja, evita escrever o mesmo código diversas vezes.


# Trabalhando com métodos
 
# Como criar?
# 1- Crie seu primeiro método em um arquivo chamado method.rb

def talk
    puts 'Hi, how r u?' # Oi, como você está?
end

talk # chamando o método
puts ''

# Para definir um método utiliza-se a palavra reservada def seguida pelo nome do método. 
# Depois é escrito um conjunto de expressões, e por fim, a palavra end determina o término do método.

# Para executar um método basta apenas escrever o seu nome.  


# Parâmetros

# 1- Substitua o código de method.rb por

def talk(first_name, last_name)
    puts "Hi, #{first_name} #{last_name}! \nHow r u?"
end

first_name = 'Fernando'
last_name = 'Galvão'

talk(first_name, last_name) # chamando a função
puts ''

talk('Kátia', 'Galvão') # podemos também chamar já passando os argumentos
puts ''

# Um método pode depender de um ou mais parâmetros para realizar determinada tarefa.

# O exemplo define um método que precisa do primeiro e segundo nome para exibir uma frase. 
# Tendo ciência disso, deve-se passar dois argumentos toda a vez que o método talk for chamado.

# 2- Crie um arquivo chamado transito.rb com o código

def signal(color = 'red')
    puts "The signal is #{color}"
end

signal  # chamando a função com o valor ('red') definido no seu escopo 

color = 'green'
signal(color)   # chamando a função e sobrescrevendo o valor com novo valor com "green"
signal('yellow')    # o mesmo acontece aqui, sobrescreve o valor com "yellow"
puts ''

# Definindo um valor padrão ao parâmetro, ele torna-se opcional.

# Um método pode ser invocado mais de uma vez, em diferentes áreas do programa. 
# Assim seu código está sendo reutilizado.

# Quer mudar o código? Altere apenas o método!

 
# Retorno
# 1- Crie um arquivo chamado return.rb

def compare(a, b)
    a > b 
end

a = 1
b = 2

result = compare(a, b)

puts "O resultado da comparação é '#{result}'"
puts ''

# O retorno de um método ruby é sempre o resultado de sua última instrução.

# Segue outros exemplos.

def retorno
    "Hello"
end

puts retorno
puts ''

def retorno_num
    return 12
    puts "Hello"    # não retorna a instrução, já que a função "return" obriga o código a parar no ponto que foi declarado o return
end

puts retorno_num
puts ''

def meuNome
    "Kátia"
    'Fernando'  # aqui o seu retorno da última isntrução é executada
end

puts meuNome
puts ''

def idade
    puts 43     # utlizando a função "puts" o retorno acontece
    p "40"
    return 21   # até esse ponto, devido ao "return" que funciona com um ponto de parada
    13
end

puts idade
puts ''

 
# Gems

# O que são?
# Gem é um pacote que oferece funcionalidades a fim de resolver uma necessidade específica de um programa Ruby. 
# Pense como o conceito de biblioteca em outras linguagens de programação.

 
# Trabalhando com gems

# Como instalar uma gem
# 1- Para instalar uma gem execute em seu terminal

# gem install os

# Você instalou a gem os. 
# Ela é uma biblioteca para você extrair informações sobre o PC que você está usando 
# (exp: Sistema operacional, quantidade de cores e etc).

 
# Novas Funcionalidades
# 1- Crie um arquivo chamado os.rb e adicione o código

require 'os'

def my_os
    if OS.windows?
        "Windows"
    elsif OS.linux?
        "Linux"
    elsif OS.mac?
        "iOS"
    else
        "Não consegui identificar"
    end
end

puts "Meu Notebook possui #{OS.cpu_count} cores, é de #{OS.bits} bits e o sistema operacional é #{my_os}."
puts ''

# No começo do arquivo, o require ‘gem_name’ carrega os arquivos da gem. 
# Isso possibilita a declaração de códigos com funcionalidades da biblioteca.

# obs: Para saber como utilizar uma gem consulte sua documentação.

 
# Desinstalar uma gem

# 1- Para desinstalar uma gem utilize o comando

# gem uninstall gem_name

# Ex:

# gem uninstall os


# Informação

# 1- Liste todas as gems instaladas na máquina rodando

# gem list


# Bundler

# Para ter controle sobre as dependências de um projeto contamos com uma 
# ferramenta que procura e instala gems chamada Bundler.

# 1- Crie um projeto chamado first_project

# mkdir first_project
# cd first_project

# 2- O bundler também é uma gem. Para instalá-lo rode

# gem install bundler

# 3- Salve a lista de gems do projeto em um arquivo chamado Gemfile

# source 'https://rubygems.org'

# gem 'os'

# Na primeira linha é definido onde o bundle deve procurar pelas gems.
# Depois é listado as dependências do projeto.

# 4 - Instale estas gems com o comando.

# bundle install

# Assim, qualquer pessoa envolvida no projeto pode facilmente instalar suas dependências.

