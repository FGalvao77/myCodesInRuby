# instanciando dois objetos - Hash
dados_pai = {nome:'fernando', data_nasc:'13/10/1977'}
dados_mae = {nome:'katia', data_nasc:'21/11/1980'}
puts '--------------------------------------------'
# retorna os dados dos objetos - dados_pai e dados_mae
p dados_pai 
p dados_mae
puts '--------------------------------------------'
# a função "class" retorna o tipo de dado/objeto - hash
p dados_pai.class
p dados_mae.class
puts '--------------------------------------------'
# retorna o valor específico da chave
p dados_pai[:nome] 
p dados_pai[:data_nasc]
puts '--------------------------------------------'
p dados_mae[:nome]
p dados_mae[:data_nasc]