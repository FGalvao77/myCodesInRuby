# Missões especiais
# Para exercitar o conhecimento adquirido nesta aula,  
# crie um projeto chamado Compras com a seguinte estrutura:

    # Compras (pasta)
        # app.rb        # arquivo
        # mercado.rb    # arquivo
        # produto.rb    # arquivo


# Neste projeto você simulará o ato de escolher e comprar um produto em um mercado.

# Instruções do projeto:   

# 1- No arquivo produto.rb, crie uma classe chamada Produto com os atributos: nome e preço.

# 2- No arquivo mercado.rb crie uma classe chamada Mercado que ao ser inicializada 
# recebe como atributo um objeto da classe Produto.

# 3 – Dentro da classe, crie um método chamado comprar que imprime a seguinte 
# frase “Você comprou o produto #{@produto.nome} no valor de #{@produto.preco}”  

# 4- No arquivo app.rb crie uma instância da classe Produto e adicione valores aos 
# atributos nome e preco. Depois, inicie uma instância da classe Mercado passando um 
# objeto produto como atributo e para finalizar execute o método comprar.


# segue a solução

# produto.rb
class Product
    attr_accessor :name, :price
end

# mercado.rb
class Market
    def initialize(product, price)
        @product = product
        @price = price
    end

    def buy 
        puts "\n\tVocê comprou o produto #{@product} no valor de #{@price}"
        puts "\tYou bought the #{@product} for #{@price}"
        puts ''
    end
end

# app.rb
require_relative 'produto'
require_relative 'mercado'

product = Product.new
product.name = 'tomate'
product.price = 2.49

Market.new(product.name, product.price).buy