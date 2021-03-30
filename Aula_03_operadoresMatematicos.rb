# Operadores Matemáticos
# Para resolver operações matemáticas no ruby contamos com a seguinte lista de operadores aritméticos:

# + (Adição)
# – (Subtração)
# * (Multiplicação)
# / (Divisão)
# % (Módulo)
# ** (Expoente)

# Resolvendo operações matemáticas

# 1. Operação do tipo soma.

p -5 + 8

# 2. Subtração entre dois números

p 9 - 13

# 3. Multiplicação

p 7 * 5

# 4. Operação do tipo divisão

p 21 / 3

# 5. Módulo entre a divisão de dois números

p 10 % 3 # retorna o resto da divisão

# 6. Expoente

p 2 ** 3

# 7. As operações podem envolver mais de dois números e também mais de um operador aritmético

2 ** 3 + 2 * 3

# Ressaltando que uma operação aritmética sempre terá apenas um resultado.

# Obs.: em operações aritméticas, a ordem de procedência é respeitada. 

# Posto isto, eis então a ordem correta para executar as operações matemáticas:

# 1º Parêntesis;
# 2º Expoentes;
# 3º Multiplicações e Divisões; (da esquerda para a direita)
# 4º Somas e Subtrações; (da esquerda para a direita)

# Eis dois pequenos exemplos:

p 2 + 3 * 5
p (2 + 3) * 5

# Podemos realizar operações matemáticas usando variáveis.

a = 5
b = 2

print "\nSegue os valores das variáveis: a = #{a} | b = #{b}\n"

print "\n\tOperações matemáticas:\n"
puts "\t\t1) Soma: #{a + b}"
puts "\t\t2) Subtração: #{a - b}"
puts "\t\t3) Multiplicação: #{a * b}"
puts "\t\t4) Divisão: #{a / b}"
puts "\t\t5) Módulo da divisao: #{a % b}"
puts "\t\t6) Exponenciação: #{a ** b}"
