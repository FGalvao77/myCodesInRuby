# Estruturas de Controle

# Conteúdo

# Será abordado:

# Estruturas de Controle
# Condicional
	# If/Else/Elsif
	# Unless
	# Case

#Iteração
	# For
	# While
	# Times
	# Do/While (Loop)
        
# Iteração + Condicional


# Estruturas de Controle

# Tratam-se de códigos que escrevemos em nossos programas para analisar dados e decidir qual caminho seguir. Divide-se em dois tipos, Condicional e Iteração. Nesta aula você aprenderá como utilizá-los.

# Condicional
# Tipo de estrutura de controle que executa um trecho de código dependendo do resultado de uma condição.
# Abaixo, veja as Instruções Condicionais If, Else, Elsif, Unless e Case.
 

# If
# Expressão que verifica se uma condição é verdadeira(true), e a partir deste resultado determina se as instruções dentro de seu corpo serão ou não executadas.

# 1. Para entender como utiliza-lo crie um arquivo chamado if.rb e adicione o seguinte código
 
print("\n")

# instanciando a variável "dia = domingo"
dia = 'domingo' 

# expressão "if" retorna uma condição se é verdadeira
# junto com operador "=="
if dia == 'domingo'         # 1
    comida = 'especial'
end

# imprimindo a mensagem se a condição for verdadeira
puts "O almoço hoje é #{comida}! \nJá que hoje é #{dia} :)"

# Leia a condição da seguinte forma:
    # 1) Se o dia é Domingo, então o almoço é especial
puts '--------------------------------------------------'

# já a expressão "if" junto com operador "!=" 
# o seu retorno é dada quando a condição é false
dia = 'domingo'

if dia != 'segunda, terça, quarta, quinta, sexta, sábado'
    bebo = 'posso'
end

puts "Hoje #{bebo} beber!"
puts '--------------------------------------------------'


# Else
# Informa o que fazer quando a verificação de uma condição if for falsa.

# 1. Para utilizar o else, substitua o código do arquivo if.rb por:

dia = 'domingo'

if dia == 'sábado'          # 1
    comida = 'especial'
else                        # 2
    comida = 'normal'
end

p "A comida hoje é #{comida}!!!"

# Leia a condição da seguinte forma:
	# 1) Se o dia é Domingo, então o almoço é especial
	# 2) Senão, o almoço é normal.
puts '--------------------------------------------------'


# Elsif
# Utilizado quando há a necessidade de verificar mais de uma condição em um if.

# 1. Substitua o código do arquivo if.rb por

dia = 'feriado'

if dia == 'domingo'          # 1
    comida = 'especial'         
elsif dia == 'feriado'       # 2
    comida = 'tarde'
else                         # 3
    comida = 'normal'
end

puts "O almoço hoje é #{comida}!"

# Leia a condição da seguinte forma:
    # 1) Se o dia é Domingo, então o almoço é especial.
    # 2) Senão e se o dia é feriado, então o almoço é tarde.
    # 2) Senão, o almoço é normal.

# Apenas nossa segunda condição é verdadeira.
puts '--------------------------------------------------'


# Unless
# Enquanto o if é executado quando sua condição é verdadeira, o unless ocorre de forma contrária. É executado apenas quando a condição é falsa.

# 1. Crie um arquivo chamado unless.rb e adicione o seguinte código

# condição inicial
status_produto = 'aberto' 

unless status_produto == 'fechado'       # 1
    check_produto = 'pode'
else                                     # 2
    check_produto = 'não pode'
end

puts "Você #{check_produto} trocar o produto"

# Leia da seguinte forma
    # 1) A menos que o estado do produto seja aberto, a troca é possível.
    # 2) Senão, a troca não é possível.

# O produto não foi aberto. Execute o programa e veja que o resultado será.
puts '--------------------------------------------------'

# Uma condição muito similar ao "unless" é o "if not"
# condição inicial
status_produto = 'já usado' 

if not status_produto == 'não usado'       # 1
    check_produto = 'pode'
else                                       # 2
    check_produto = 'não pode'
end

puts "Você #{check_produto} trocar o produto"
puts '--------------------------------------------------'

# Case
# Instrução muito parecida com o if. 
# Ele se enquadra muito bem a situações com diversas condições.

# 1. Em um novo arquivo chamado case.rb adicione o código

puts 'Digite o número do mês em que você nasceu: '      # 1

mes = gets.to_i                                         # 2

case mes
  when 1..3                                             # 3
    puts 'Você nasceu no começo do ano!'
  when 9..12                                            # 4
    puts 'Você nasceu no final do ano!'
  when 4..6                                             # 5
    puts 'Você nasceu na primeira metade do ano!'
  when 7..9                                             # 6
    puts 'Você nasceu na segunda metade do ano!'
  else                                                  # 7
    puts "Infelizmente NÃO foi possível identificar"
  end                                                   # 8

# Leia a condição da seguinte forma:
  # 1) entrada do dado
  # 2) salvando o dado na variável "mes"

    # Caso o mês informado:
        # 3) esteja no intervalo entre 1 e 3, você nasceu no começo do ano
        # 4) esteja no intervalo entre 9 e 12, você nasceu no final do ano
        # 5) esteja no intervalo entre 4 e 6, você nasceu na primeira metade do ano
        # 6) esteja no intervalo entre 7 e 9, você nasceu na segunda metade do ano

    # 7) Senão, não foi possível identificar o mês
    # 8) Fechando o código
puts '--------------------------------------------------'


# Iteração
# Tipo de estrutura de controle que gerencia quantas vezes um trecho de código será executado.
# Abaixo, veja as instruções de iteração For, While, Times, Do/While.
 

# For
# Usado para percorrer uma coleção de elementos.

# Crie um programa chamado for.rb com o seguinte código:

frutas = ['maçã', 'uva', 'morango']     # 1

for fruta in frutas                     # 2
    puts fruta
end

# 1) No exemplo, a instrução for percorrerá todos os elementos da lista frutas (array). 
# 2) cada iteração, podemos acessar o elemento atual através da variável fruta.

# Execute o programa e veja o nome da fruta cada vez que a repetição é executada.
puts '--------------------------------------------------'

# Agora, substitua o código de for.rb por:
frutas = ['maçã', 'uva', 'morango']

fruta = 'laranja'

for fruta in frutas 
    puts fruta
end

puts fruta

# CUIDADO
# Ao executar o programa, note que a variável de iteração pode sobrescrever outra 
# que esteja fora da estrutura de repetição.
puts '--------------------------------------------------'


# While
# Instrução que repete um bloco de código enquanto sua condição é verdadeira.

# 1. Crie um programa chamado while.rb com o seguinte código

x = 1

while x <= 10
    puts x 
    # adiciona + 1 ao valor de x
    x += 1
end
puts '--------------------------------------------------'

# Quando este programa é executado, a instrução while é repetida 
    # enquanto o valor de x for menor e/ou igual a 10.

# Podemos exemplificar o código:

y = 0

while y < 10
    puts y += 1
end
puts '--------------------------------------------------'


# Times
# Executa uma repetição por um especificado número de vezes.

# 1. Em um novo programa chamado times.rb adicione o seguinte código

2.times do
    puts 'Estou aprendendo times!'
end
puts '--------------------------------------------------'

nomes = ['Fernando', 'Kátia', 
    'Sara', 'Eloah'] # igual ao array, o times começa índice 0
3.times do |index|
    puts nomes[index]
end

# Execute o programa e perceba que a estrutura times:
    # Exibe a frase “Estou aprendendo times” 2 vezes
    # Exibe um índice do array nome por 3 vezes
puts '--------------------------------------------------'

2.times do 
    puts 'Bye'
end 
puts '--------------------------------------------------'


# Do/While
# Na verdade, no Ruby utilizamos uma estrutura de repetição chamada loop que faz o mesmo que o do/while em outras linguagens de programação. 
# Ele cria um laço de repetição que só é parado quando uma instrução break for verdadeira.

# 1. Em um arquivo chamado loop.rb adicione o seguinte código.

count = 1

loop do 
    puts count
    break if count == 10
    # incrementa a variável count
    count += 1
end

# Foi criado uma estrutura de repetição que só será parada quando o valor da variável count for igual a 10.
# Execute o programa e veja que ele contará de 1 a 10.
puts '--------------------------------------------------'

# outra forma de usar
count = 1

loop do
  puts count
  if count == 10
    break
  end
  count += 1
end
puts '--------------------------------------------------'


# Iteração + Condicional
# 1. Veja um exemplo de como utilizar estas duas estruturas em conjunto, em age.rb, coloque:

resultado = ''

loop do
    puts resultado
    puts 'Selecione uma das seguintes opções'
    puts '1 - Descobri a idade de uma pessoa'
    puts '0 - Sair'
    print 'Opção: '

    option = gets.chomp.to_i

    if option == 1
        print 'Digite o ano de nascimento: '
        year_of_birth = gets.chomp.to_i

        print 'Digite o ano atual: '
        current_year = gets.chomp.to_i

        age = current_year - year_of_birth
        resultado = "Quem nasceu no ano de #{year_of_birth}, tem #{age} anos em #{current_year}."

    elsif option == 0
        break if option == 0
    else
        resultado = 'Opção inválida'
    end
    # comando que limpa o console
    system "clear"
end

# Neste programa é criado uma estrutura de repetição que permite ao usuário descobrir a idade de alguma pessoa.
# O programa é executado até que a opção 0 que significa sair seja escolhida.



