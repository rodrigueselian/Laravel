### Repositório de Exemplos da Disciplina de DAOO


Comandos após o clone: 

```bash
composer install
```

```bash
npm install
```

Crie um novo arquivo .env e gere a APP_KEY através do artisan

```bash
php artisan key:generate
```

## Exemplo Documentação

### Registrar um novo produto

```http
  POST /produtos
```
Parâmetros:

| Campo   | Tipo       | Descrição                                   |
| :---------- | :--------- | :------------------------------------------ |
| `id_prod`| `number`   | **Obrigatório**. Um identificador numérico para o produto|
| `nome`| `string`   | **Obrigatório**. Nome do produto, sem limite de tamanho|
| `descricao`| `string`   | **Obrigatório**. Descrição do produto, sem limite de tamanho |
| `qtd_estoque`| `number`   | **Obrigatório**. Número inteiro positivo|
| `preco`| `number`   | **Obrigatório**. Definição do preço, armazenado como *Number*|
| `importado`| `boolean`   | Parâmetro opcional do tipo booleano, padrão é falso|
| `desconto`| `number`   |  Parâmetro opcinal da porcentagem de desconto, padrão é *NULO*|

Obs: enviar parâmetros no corpo da requisição no formato **form-url-encode**


**Rotas:**

**GET:**

/api/pessoa 

/api/pessoa/id

/api/telefone

/api/telefone/id

/api/empresa

/api/empresa/id

/api/pessoa/{pessoa}/telefones 

**POST:**

/api/pessoa 

/api/telefone

/api/empresa

**PUT:**

/api/pessoa/id

/api/telefone/id

/api/empresa/id

**DELETE:**

/api/pessoa/id

/api/telefone/id

/api/empresa/id

**campos:**
pessoa:

nome > obrigatorio / max 20 digitos

cpf > obrigatorio / 11 digitos

email > obrigatorio / padrao email

telefone:

id_pessoa > obrigatorio / integer

number > obrigatorio / entre 9 e 12 digitos


empresas:

nome > obrigatorio / max 20 digitos

cnpj > obrigatorio / 14 digitos
