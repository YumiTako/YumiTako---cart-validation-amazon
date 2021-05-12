
Dado("que entrei no site da amazon") do
    visit("https://www.amazon.com.br/")
end

Dado("busquei por {string}") do |busca|
  Metodos.new.buscar_produto(MASSA[busca]['busca'])
  sleep(5)
end

Dado("seleciono o produto {string}") do |escolha|

  Metodos.new.seleciona_produto(MASSA[escolha]['nome'])
end

Dado("seleciono comprar apenas uma vez") do
  Metodos.new.selecionar_compra_uma_vez
  sleep(5)
end

Dado("clico em adicionar no carrinho") do
    Metodos.new.add_carrinho
    sleep(5)
end

Então("valido que {string} foi adicionado no carrinho") do |produto|
  Metodos.new.acessar_carrinho_poscompra
  sleep(5)
  Metodos.new.valida_texto(MASSA[produto]['nome'])
end
