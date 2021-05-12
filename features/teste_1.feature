#language: pt
#encode:

@cart_validation_amazon
Funcionalidade: Validando que busquei produto na amazon e coloquei o produto pesquisado no carrinho

@fralda_g
Cenario: Pesquisar e colocar um produto no carrinho, validando que o mesmo é correto
    Dado que entrei no site da amazon
    E busquei por "Fralda_g"
    E seleciono o produto "Fralda_g"
    E clico em adicionar no carrinho
    Então valido que "Fralda_g" foi adicionado no carrinho

@kindle
Cenario: Pesquisar e colocar um produto no carrinho, validando que o mesmo é correto
    Dado que entrei no site da amazon
    E busquei por "kindle_paperwhite"
    E seleciono o produto "kindle_paperwhite"
    E clico em adicionar no carrinho
    Então valido que "kindle_paperwhite" foi adicionado no carrinho

#Os cenários abaixo possuem alguma especificidade em relação ao elemento quando é inserido no carrinho, preciso analisar antes de conseguir fazer os mesmos rodarem
#@Presente_amigosecreto_murilo_hehehehe
#Cenario: Pesquisar e colocar um produto no carrinho, validando que o mesmo é correto
    #Dado que entrei no site da amazon
    #E busquei por "Presente_amigosecreto_murilo_hehehehe"
    #E seleciono o produto "Presente_amigosecreto_murilo_hehehehe"
    #E clico em adicionar no carrinho
    #Então valido que "Presente_amigosecreto_murilo_hehehehe" foi adicionado no carrinho 

#@teste_01
#Cenario: Pesquisar e colocar um produto no carrinho, validando que o mesmo é correto
   # Dado que entrei no site da amazon
   # E busquei por "berco_portatil"
   # E seleciono o produto "berco_portatil"
   #Então valido que "berco_portatil" foi adicionado no carrinho 
