#language: pt
#encode: UTF-8

@cart_validation_amazon_v
Funcionalidade: Validando que busquei produto na amazon e coloquei o produto pesquisado no carrinho com variação do elemento css

@fralda_g
Cenario: Pesquisar e colocar um produto no carrinho, validando que o mesmo é correto
    Dado que entrei no site da amazon
    E busquei por "Fralda_g"
    E seleciono o produto "Fralda_g"
    Quando clico em adicionar no carrinho
    Então valido que "Fralda_g" foi adicionado no carrinho variação de elemento

@kindle
Cenario: Pesquisar e colocar um produto no carrinho, validando que o mesmo é correto
    Dado que entrei no site da amazon
    E busquei por "kindle_paperwhite"
    E seleciono o produto "kindle_paperwhite"
    Quando clico em adicionar no carrinho
    Então valido que "kindle_paperwhite" foi adicionado no carrinho variação de elemento