# Desafio Biblioteca RSV

## Modelagem do banco de dados
URL: https://dbdiagram.io/d/64b9278502bd1c4a5e68f069

## Modelo Lógico
<div align="center">

</div>


## Arquivos principais
<a href="https://github.com/GodKelvin/Desafio_Biblioteca_RSV/tree/main/db/migrate" target="_blank">Migrations</a>

<a href="https://github.com/GodKelvin/Desafio_Biblioteca_RSV/tree/main/app/models" target="_blank">Models</a>

<a href="https://github.com/GodKelvin/Desafio_Biblioteca_RSV/blob/main/db/seeds.rb" target="_blank">Seed</a>

<a href="https://github.com/GodKelvin/Desafio_Biblioteca_RSV/blob/main/db/schema.rb" target="_blank">Schema</a>

<a href="https://github.com/GodKelvin/Desafio_Biblioteca_RSV/blob/main/config/initializers/inflections.rb" target="_blank">Inflection</a>


## Refinando o modelo 
- Foi criado uma tabela de exemplares, visto que livro é apenas a representação e não o objeto em si, além das devidas chaves estrangeiras.
- Foi criada uma tabela de endereços.
- Foi criada uma tabela de editoras.

## Melhoraria

- O fato de "país" ser um campo do tipo string em Autor pode haver ambiguidade e/ou erros de cadastro. Criaria uma tabela somente para países de modo a interagir com a tabela de endereço também.