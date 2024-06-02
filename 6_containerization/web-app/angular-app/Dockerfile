# Estágio de compilação
FROM node:20-alpine as build-stage

# Define o diretório de trabalho do container
WORKDIR /app

# Copia os arquivos de configuração do projeto ('package.json' e 'package-lock.json')
COPY package.*json /app/

# Instala as dependências do projeto
RUN npm install

# Copia o restante dos arquivos do projeto
COPY . /app

# Compila a aplicação para produção
RUN npm run build

# Estágio de publicação
FROM nginx:alpine as publish-stage

# Copia os arquivos compilados do estágio de compilação oara o diretório de ser
COPY --from=build-stage /app/dist/angular-app/ /usr/share/nginx/html

#Expose 80

# Inicia o Ngninx e mantém o processo em primeiro plano
CMD ["nginx", "-g", "daemon off;"]
