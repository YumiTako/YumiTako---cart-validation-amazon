class Metodos
    include Capybara::DSL

#construção de metodos para realizar os testes
    #inicialmente fiz steps separados, achei melhor deixar aqui registrado
    def preencher_busca(produto)
        fill_in(EL['campo_busca'], with: produto)
    end

    def clicar_busca
        find_button(EL['botão_busca']).click
    end
    #step de buscar o produto já clicando na busca
    def buscar_produto(produto)
        assert_selector(EL['campo_busca'],  visible: true)
        all(EL['campo_busca'])[0].set(produto)
        find_all(EL['botão_busca'])[0].click
    end
    #step de selecionar o produto. Esse método deve verificar se o elemento existe, está visível e possui o texto indicado, se sim, clicar nele
    def seleciona_produto(produto)
        find_all(EL['titulo_resultado'], text: produto)[0].click
    end

    def add_carrinho
        find_all(EL['add_carrinho'])[0].click
        #find_button(EL['add_carrinho']).click
    end

    def acessar_carrinho_inicio        
        find_all(EL['botao_carrinho_inicial'])[0].click
    end

    def acessar_carrinho_poscompra
        find_all(EL['botao_carrinho2'])[0].click
    end

    def valida_texto(produto)
        assert_selector(EL['titulo_produto_carrinho'],  visible: true)
        all(EL['titulo_produto_carrinho'])[0].set(produto)
    end
end