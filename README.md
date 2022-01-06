# Curso de AWS Erick Wendel

## Autenticar usuario no CLI

```sh
aws configure
```

## Storage S3

- Listando buckets
```sh
aws s3 ls
```


- Listando arquivos dentro de um bucket
```sh
aws s3 ls <BUCKED-NAME>
```


- Fazendo upload de arquivo para um bucket
```sh
aws s3 cp hello_world.txt s3://<BUCKED-NAME>
```