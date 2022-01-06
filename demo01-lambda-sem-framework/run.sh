# 1o - Criar arquivo de politicas de segurança
# 2o - Criar role de segurança na AWS

aws iam create-role \
    --role-name lambda-exemplo \
    --assume-role-policy-document file://politicas.json \
    | tee logs/role.log

# 3o - Criar arquivo com conteudo e zipa-lo
zip function.zip index.js

aws lambda create-function \
    --function-name hello-cli \
    --zip-file fileb://function.zip \
    --handler index.handler \
    --runtime nodejs12.x \
    --role arn:aws:iam::902999785993:role/lambda-exemplo \
    | tee logs/lambda-create.log


# 4o - invoke lambda
aws lambda invoke \
    --function-name hello-cli \
    --log-type Tail \
    logs/lambda-exec.log

# 5o - atualizar, zipar
zip function.zip index.js

# 6o - atualizar na aws
aws lambda update-function-code \
    --function-name hello-cli \
    --zip-file fileb://function.zip \
    --publish \
    | tee logs/lambda-update.log


# 7o - remover recursos criados
aws lambda delete-function \
    --function-name hello-cli

aws iam delete-role \
    --role-name lambda-exemplo