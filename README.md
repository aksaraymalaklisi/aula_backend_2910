# Arquivos da aula do dia 29/10/2025

Eu não sei se isso funciona.  

## Instalação

Clone o repositório:  
`git clone https://github.com/aksaraymalaklisi/aula_backend_2910.git`  

Na pasta do repositório, rode o contêiner:  
`docker compose up -d` (irá buildar automaticamente, caso contrário: `docker compose up -d --build`)  

Depois disso, crie o projeto do Laravel no contêiner `app`:  
`docker compose exec app composer create-project laravel/laravel src`  
`docker compose exec app php artisan key:generate`  

## Permissões

Esse código não está jogando bem com as permissões do SQLite.

`docker compose exec app chmod -R 777 bootstrap/cache`  
`docker compose exec app chmod -R 777 storage`  
`docker compose exec app chmod -R 777 database`  
