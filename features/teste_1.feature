#language: pt
#encode:

@cart_validation_amazon
Funcionalidade: Validando que busquei produto na amazon e coloquei o produto pesquisado no carrinho

@teste
Cenario: Pesquisar e colocar um produto no carrinho, calidando que o mesmo é correto
    Dado que entrei no site da amazon
    E busquei por "Smartphone Samsung Galaxy S21 5G 128GB 6.2 violeta"
    E seleciono o produto "Smartphone Samsung Galaxy S21 5G 128GB 6.2"
    E clico em adicionar no carrinho
    Então valido que "Smartphone Samsung Galaxy S21 5G 128GB 6.2" foi adicionado no carrinho

@galaxys21_violeta
Cenario: Pesquisar e colocar um produto no carrinho, calidando que o mesmo é correto
    Dado que entrei no site da amazon
    E busquei por "galaxy_s21"
    E seleciono o produto "galaxy_s21"
    E clico em adicionar no carrinho
    Então valido que "galaxy_s21" foi adicionado no carrinho

@fralda_g
Cenario: Pesquisar e colocar um produto no carrinho, calidando que o mesmo é correto
    Dado que entrei no site da amazon
    E busquei por "Fralda_g"
    E seleciono o produto "Fralda_g"
    E clico em adicionar no carrinho
    Então valido que "Fralda_g" foi adicionado no carrinho



