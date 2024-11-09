# PROJETO MENTORA

Olá meninas.

Decidi criar esse README para de alguma maneira incentivar você e continuarmos isso
Então primeiro vou dar novamente um overview do que fizemos nesse projeto e algumas possibilidades para fazermos nesse projeto, na forma de abrir PRs nesse repositório e vocês poderem treinar.

Então Bora lá:

## O que fizemos
Então essa primeira parte criamos o Modelo **MENTORA**

Mentora tem os seguintes atributos: nome, contato e habilidades

### Como fizemos isso:

#### Passo 1
Primeiro a maior parte de tudo está na pasta **/app**

Criamos o Modelo - utilizando o generate do Rails:

```ruby
  bin/rails generate Mentora nome:string contato:string habilidades:string
```

Lembrando que nesse generate alguns arquivos foram criados:
1. Modelo propriamente dito
2. Um arquivo de *migration* - esse é um arquivo que fará a criação/alteração de informações no banco
3. O resto dos arquivos são arquivos de teste (não trabalhamos em testes nesse primeiro momento)

- Ainda nesse primeiro passo, apesar de termos o arquivo de migração, não rodamos ela, então precisamos fazer isso:

```ruby
  bin/rails db:migrate
```

Ainda nesse passo, como já criamos o modelo, fizemos nosso primeiro teste de criação do Modelo, utilizando o **Console do Rails**

```ruby
  # bin/rails console
  bin/rails c

  # Agora tem algumas coisas que podemos fazer
  # 1. Criação de Mentora

  # Forma 1 - utilizamos o new depois o save
  mentora = Mentora.new(nome: "Ana Carolina", contato: "ana@teste.com", habilidades: "rails, ruby, elixir")

  mentora.save!
  # lembre de utilizar o ! para se der erro podermos saber qual o erro

  # Forma 2 - utilizamos o create - que é a junção do new e save

  Mentora.create!(nome: "Isadora", contato: "isadora@teste.com", habilidades: "ruby, rails")

  # 2. Busca por todas as mentoras

  Mentora.all

  # 3. Busca por uma mentora especifica

  Mentora.find(2)
  # retorna a mentora de id 2 - se tiver no banco

  # Podemos mudar pra fazer find com os outros atributos
  Mentora.find_by(contato: "isadora@teste.com")
  Mentora.find_by_name("Ana Carolina")

  # Podemos buscar por posições
  Mentora.first
  Mentora.second

  # E o delete
  Mentora.first.destroy!
```

### Passo 2 - LISTAGEM DE MONITORAS

Criamos nosso primeiro e único rs Controller

  - MentorasController classe - mentoras_controller - nome do arquivo

No passo seguinte, começamos a realmente construir o nosso CRUD

Mas o que é CRUD

C - CREATE - ações (new e edit)

R - READ - ações (show e index)

U - UPDATE - ações (edit e update)

D - DELETE - ações (destroy)

O nosso primeiro elemento foi o **INDEX**

1. Criamos o controller com o método **index** e a view **index.html.erb**

2. Criamos o método **new** e **create** e a view **new.html.erb**

3. Criamos o método **edit** e **update** e a view **edit.html.erb**

4. Criamos o método **destroy** e a view **destroy.html.erb**

Vocês podem ver cada um desses passos em cada commit, entender o que foi feito

É isso meninas


### E AGORAAAAA

Aguardem as cenas dos próximos capítulos

* ...
