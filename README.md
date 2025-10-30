# Arquivos da aula do dia 29/10/2025

Eu não sei se isso funciona.  

## Instalação

`docker compose exec app composer create-project laravel/laravel src`  
`docker compose exec app php artisan key:generate`  

## Permissões

Esse código não está jogando bem com as permissões do SQLite.

`docker compose exec app chmod -R 777 bootstrap/cache`  
`docker compose exec app chmod -R 777 storage`  
`docker compose exec app chmod -R 777 database`  
