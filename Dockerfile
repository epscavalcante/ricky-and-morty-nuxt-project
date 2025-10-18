# Usa a versão LTS mais recente do Node
FROM node:22.14.0-slim

# Define diretório de trabalho
WORKDIR /app

# Copia apenas os arquivos de dependência primeiro (para melhor cache)
COPY package.json yarn.lock ./

# Instala dependências
RUN corepack enable && corepack prepare yarn@stable --activate
RUN yarn install

# Instala o CLI do Nuxt (nuxi)
#RUN yarn global add nuxi

# Copia o restante do código
COPY . .

# Expõe a porta padrão do Nuxt
EXPOSE 3000

USER node
