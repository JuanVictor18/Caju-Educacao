# Escolha uma imagem base oficial do Python
FROM python:3.12.3 AS build 

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos de dependências para o container
COPY requirements.txt .

# Instala as dependências do projeto
RUN pip install --no-cache-dir -r requirements.txt

# Expõe a porta onde o servidor rodará
EXPOSE 8000

# Copia o código do backend para dentro do container
COPY . .

# Comando para rodar o aplicativo
CMD ["python", "app.py"]
