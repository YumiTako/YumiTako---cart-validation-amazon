
Dado("que entrei no site da amazon") do
    visit("https://www.amazon.com.br/")
end

Dado("busquei por {string}") do |busca|
  #binding.pry
  #fill_in 'field-keywords', with: (MASSA[busca]['busca'])
  #find_button('nav-search-submit-button').click
  Metodos.new.buscar_produto(MASSA[busca]['busca'])
  sleep(5)
end

Dado("seleciono o produto {string}") do |escolha|
  #find_all(class: ['a-size-mini', 'a-spacing-none', 'a-color-base', 's-line-clamp-2'])[0].click_link
  #click_link(MASSA[busca]['nome'])
  #assert_selector('li', :text => 'Horse', :visible => true)
  #assert_selector("span[class='a-size-medium sc-product-title a-text-bold']", visible: true, :text => MASSA[escolha]['nome']).click
  #binding.pry
  Metodos.new.seleciona_produto(MASSA[escolha]['nome'])
end

Dado("clico em adicionar no carrinho") do
  #binding.pry
  Metodos.new.add_carrinho
end

Então("valido que {string} foi adicionado no carrinho") do |produto|
  #find_button('nav-logo-sprites').click
  #click_link('hlb-view-cart-announce')
  #find("span.a-size-base-plus a-color-base a-text-normal", :visible => false, :text => 'produto')
  Metodos.new.acessar_carrinho_poscompra
  Metodos.new.valida_texto(MASSA[produto]['nome'])
end
