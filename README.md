# Teste - Beleaf

Teste para Tech Lead da Beleaf

## Começando

Seguem instruções para rodar o sistema localmente.

### Prerequisitos

Mysql 5.7

Node.JS

NPM

### Instalação

1 - Após instalar o banco de dados, restaurar o banco de dados através do arquivo BELEAF.sql

2 - Abrir o arquivo dbConnection.js na pasta "beleaf_path\config" e editar os dados de acesso ao banco de dados mysql.

```
var connMysql = function(){
    return mysql.createConnection({
        host: 'host-do-banco',
        user: 'usuario-do-banco',
        password: 'senha-do-banco',
        database: 'beleaf'
    });
}
```

3 - Acessar o diretório raiz do sistema, executar o commando abaixo para instalar as dependências do projeto:
```
npm install
```

4 - Para iniciar a aplicação, digite: 
```
node index
```

5 - Você deve ver algo no terminal como abaixo:
```
c:\Beleaf\beleaf_path>node index
consign v0.1.6 Initialized in c:\Beleaf\beleaf_path
+ .\routes\rotaLogin.js
+ .\routes\rotaMarmita.js
+ .\config\dbConnection.js
+ .\controllers\controladorLogin.js
+ .\controllers\controladorMarmita.js
+ .\models\MarmitaDAO.js
+ .\models\UsuarioDAO.js
3000
Funcionando!
```

6 - Para acessar a aplicação, abra o navegador e digite:
```
http://localhost:3000
```

## Endpoints

Os endpoints do sistema que não precisam de autenticação, são:
```
http://localhost:3000/
http://localhost:3000/login
http://localhost:3000/marmitas
```
O endpoint de cadastro de marmitas necessita estar autenticado, caso o usuário tente acessar um endpoint que necessite de 
autenticação do usuario, sem o mesmo estar autenicado, o mesmo será redirecionado para a página de login.
Informações de Login:
Usuário: Beleaf
Senha: teste
```
http://localhost:3000/marmita/novo
```
Quando o usuário está autenticado, com uma sessão ativa, a página habilita um botão para edição e outro para exclusão de marmita.

## Tecnologias utilizadas

* [Node.js](https://nodejs.org)
* [Express](https://expressjs.com/pt-br/) - Framework nodejs
* [bcrypt](https://www.npmjs.com/package/bcrypt) - Biblioteca de autenticação
* [consign](https://www.npmjs.com/package/consign) - Biblioteca de autoload
* [bootstrap](https://getbootstrap.com/) - Framework CSS, HTML, JS
* [ejs](https://ejs.co/) - Framework de template JS
* [express-session](https://www.npmjs.com/package/express-session) - Biblioteca de controle de sessão

## Deploy

O aplicativo esta hospedado no seguinte endereço:

[Beleaf](https://beleaf-path.herokuapp.com/)


## Observações

Padrão de projetos escolhido: MVC

