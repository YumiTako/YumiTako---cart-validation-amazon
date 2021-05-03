# cart-validation-amazon
Testes em BDD com Ruby para validação de inclusão de itens no carrinho em sites.

# Descrição
O desafio era pesquisar um produto em um site de e commerce, colocar o produto no carrinho e validar que o mesmo esteja REALMENTE no carrinho.<br>
O projeto possui 2 cenários de análise: Compra normal e Compra recorrente.
No contexto de compra recorrente, selecionamos comprar apenas uma vez.


# Informações
<b>Site escolhido:</b> Amazon<br>
<b><Linguagem>Linguagem de programação:</b>Ruby<br>
<b>Linguagem de escrita de cenários de Teste:</b>Cucumber/pt-Gherkin<br>
<b>Web Driver:</b>Selenium
  
# O teste
O BDD foi feito no aquivo teste_1.feature. Este é o teste padrão, para produtos que não possuem opção de compra poir recorrência.
Para rodar o teste, uma vez que sua máquina esteja devidamemente configurada,  basta dar o comando no terminal

`cucumber -t@teste_1`

# Estrutura de pastas
Você pode observar que o projeto é dividido em diversas pastas que interagem entre si. 
Temos o arquivo elementos.yml que possui os elementos de CSS mapeados no site da amazon. Esse elementos são chamados no Metodos.rb, onde descrevemos os métodos que são utilizados.
Além disso o arquivo massa_teste.yml possui os valores que vamos testar vinculados a uma chave que é chamada no BDD.
