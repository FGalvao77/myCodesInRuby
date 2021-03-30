# Missões especiais
# Utilizando as estruturas de iteração e condição, 
    # crie uma calculadora que ofereça ao usuário a opção de:
        # Multiplicar, Dividir, Adicionar ou Subtrair dois números. 
        
    # Não se esqueça de também permitir que o usuário feche o programa.


# as entradas aceita tanto números "Integer" como "Float"
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

    if option == 1
        multiplicar = num_1 * num_2
        resultado = "\tO resultado da multiplicação dos números #{num_1} e #{num_2} é #{multiplicar}\n"

    elsif option == 2
        dividir = num_1 / num_2
        resultado = "\tO resultado da divisão dos números #{num_1} e #{num_2} é #{dividir}\n"

    elsif option == 3
        adicionar = num_1 + num_2
        resultado = "\tO resultado da adicão dos números #{num_1} e #{num_2} é #{adicionar}\n"

    elsif option == 4
        subtrair = num_1 - num_2
        resultado = "\tO resultado da subtração dos números #{num_1} e #{num_2} é #{subtrair}\n"

    elsif option == 0
        puts "\n\tSaindo..."
        break if option == 0

    else
        resultado = "\tOpção inválida! \n\tTente outra vez ;)"
    end
    # comando que limpa o console
    system "clear"
end