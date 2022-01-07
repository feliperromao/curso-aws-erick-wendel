# instalar serverless framework
sudo npm install -g serverless

# serverless inicializar
serverless

# sempre fazer deploy antes de tudo para verificar se está com ambiente ok
serverless deploy

# invocar a função na AWS
serverless invoke -f hello

# invocar a função localmente
serverless invoke local -f hello -l

# configurar dashboard
serverless

# logs
sls logs -f hello --tail

# remover serviço
sls remove
