## Приложение app-netology

#### Сборка Docker-Образа

`DOCKER_BUILDKIT=1 docker build -t <id реестра>/ntlg-app:v1.0.0 .`

Проверка работы сервиса:

`docker run -d --name app --rm -p 8080:80 <id реестра>/ntlg-app:v1.0.0`

`curl localhost:8080`
