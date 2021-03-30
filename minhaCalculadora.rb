# Segunda opção para resolução do problema

# Missões especiais
# Utilizando as estruturas de iteração e condição, 
    # crie uma calculadora que ofereça ao usuário a opção de:
        # Multiplicar, Dividir, Adicionar ou Subtrair dois números. 
        
    # Não se esqueça de também permitir que o usuário feche o programa.


# as entradas aceita números "Integer" e/ou "Float"
print "\nDigite o primeiro número: "
num_1 = gets.chomp.to_f 

print "Digite o segundo número: "
num_2 = gets.chomp.to_f

resultado = ''

loop do
    puts resultado
    print "\n\tSelecione uma das opções abaixo:\n"
    puts "\t\t1 - Multiplicar"
    puts "\t\t2 - Dividir"
    puts "\t\t3 - Adicionar"
    puts "\t\t4 - Subtrair"
    puts "\t\t0 - Sair"
    print "\n\tOpção: "

    option = gets.chomp.to_i                     
                                        
    case option
      when 1
        print "\n\tO resultado da multiplicação dos números #{num_1} e #{num_2} é #{num_1 * num_2}"
      when 2                                        
        print "\n\tO resultado da divisão dos números #{num_1} e #{num_2} é #{num_1 / num_2}"
      when 3                                             
        print "\n\tO resultado da adição dos números #{num_1} e #{num_2} é #{num_1 + num_2}"
      when 4                                            
        print "\n\tO resultado da subtração dos números #{num_1} e #{num_2} é #{num_1 - num_2}"
      when 0
        print "\n\tSaindo...\n"
        break if option == 0
      else                                                  
        puts "\n\tOpção inválida! \n\tTente novamente ;)\n"
      end 
    end