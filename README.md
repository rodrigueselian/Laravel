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

**pessoa:**

nome > obrigatorio / max 20 digitos

cpf > obrigatorio / 11 digitos

email > obrigatorio / padrao email

**telefone:**

id_pessoa > obrigatorio / integer

number > obrigatorio / entre 9 e 12 digitos


**empresas:**

nome > obrigatorio / max 20 digitos

cnpj > obrigatorio / 14 digitos
