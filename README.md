# NestJS & Prisma REST API

Backend de um projeto fullstack de um mini-ecommerce.

## Stack utilizada

**Back-end:** NestJS, Typescript, PrismaORM, PostgreSQL, Docker.

## Deploy

Acesse o deploy desta aplicação com o link a seguir:
- https://my-funkodb.onrender.com/funko

## Instalação

Instale o projeto seguindo os seguintes passoss:

- Abra o terminal ou prompt de comando no seu computador.
- Tenha algum banco relacional instalado em sua máquina ou hospedado em algum serviço cloud.
- Tenha o NodeJS instalado em sua máquina.
- No terminal ou prompt de comando, digite o seguinte comando para clonar o repositório `git clone https://github.com/matheusosan/nestjs_api.git `
- Navegue até a pasta do projeto utilizando o comando `cd nestjs_api`
- Instale as dependências do projeto utilizando `npm install `
- Crie um arquivo .env na pasta raiz do projeto e dentro do arquivo coloque a sua instância a um banco de dados, ex.: ```DATABASE_URL="postgresql://postgres:postgres@localhost:3000/postgres"```
- Rode o comando ```npx prisma migrate dev```
- Inicie o servidor com o comando ```npm run start:dev```
- Acesse os endpoints utilizando plataforma API como Postman ou Insomnia.

## Autores

- [@matheusosan](https://www.linkedin.com/in/matheusosan)
