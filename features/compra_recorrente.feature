#language: pt
#encode:

@cart_validation_amazon_recorrente
Funcionalidade: Validando que busquei produto na amazon e coloquei o produto certo no carrinho em caso de compra recorrente

@Lenço_umidecido
Cenario: Pesquisar e colocar um produto no carrinho, validando que o mesmo é correto
    Dado que entrei no site da amazon
    E busquei por "Lenço_umidecido"
    E seleciono o produto "Lenço_umidecido"
    E seleciono comprar apenas uma vez
    E clico em adicionar no carrinho
    Então valido que "Lenço_umidecido" foi adicionado no carrinho 