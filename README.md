# docker-nodejs-mysql

## Objetivo
Projeto publico para manutenção de um template de ambiente de desenvolvimento Docker para trabalhos com NodeJS e MySQL.

## O que ela faz?
Roda aplicações NodeJS com possibilidade de conexão a um banco de dados MySQL e o gerenciador de banco de dados PhpMyAdmin.

## O que compõe o Projeto?
1. Docker
2. MySQL
3. NodeJS
4. PhpMyAdmin

## Como usar?
1. Clone ou dê um fork no repositorio.
2. Jogue sua aplicação dentro da pasta /src.
3. Digite no terminal:
```
docker-compose up -d
```
4. Acesse [127.0.0.1](http://127.0.0.1/) para acessar a aplicação ou [127.0.0.1:8080](http://127.0.0.1:8080) para acessar o PhpMyAdmin

## Notas:
1. O endereço interno que se deve ser usado dentro a aplicação NodeJS para se conectar ao MySQL é "mysql" e sua porta continua sendo a porta "3306", o login no MySQL é "root", tanto para o usuario quanto para a senha.
2. Os pacotes [nodemon](https://www.npmjs.com/package/nodemon) e [mysql2](https://www.npmjs.com/package/mysql2) ja vem pre instalados no ambiente, não há necessidade de instalalos localmente na aplicação.
3. Acessos remotos ao banco de dados com exceção via o PhpMyAdmin estão vedados.
4. A aplicação NodeJS deve usar a porta 3000.
5. Para instalar novos pacotes digite:
```
docker-compose exec app "npm install -g -y <nome do pacote>"
```
6. O ambiente sempre irá ler o arquivo "app.js" como cabeça do projeto.
