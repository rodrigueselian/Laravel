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
/api/pessoa /id \n
/api/telefone /id \n
/api/empresa /id \n
/api/pessoa/{pessoa}/telefones \n

**campos:**
pessoa:\n
nome > obrigatorio / max 20 digitos\n
cpf > obrigatorio / 11 digitos\n
email > obrigatorio / padrao email\n

telefone:\n
id_pessoa > obrigatorio / integer\n
number > obrigatorio / entre 9 e 12 digitos\n

empresas:\n
nome > obrigatorio / max 20 digitos\n
cnpj > obrigatorio / 14 digitos\n