```
Создаём файл .env в текущей директории с таким примерно содержимым (определяем переменные среды окружения):
COMPOSE_PROJECT_NAME=demo_project

POSTGRES_USER=tester
POSTGRES_PASSWORD=123456
POSTGRES_PORT=15432

TZ=MSK

COMPOSE_PROJECT_NAME - название проекта (будет использоватся как часть название docker-контейнера).
POSTGRES_USER - пользователь (админ) postgresql (внутри контейнера)
POSTGRES_PASSWORD - его пароль (внутри контейнера)
POSTGRES_PORT - порт, на который будет выполняться mapping (отображение) tcp-порта для подключения к postgres-базе

В текущей директории содаём ./postgres_data - для хранения базы данных postgresql (вне контейнера).

Для управления контейнером используется Makefile и утилита docker-compose (в системе должны быть установлены: make и docker-compose).

Команды управления:
make up   - запуск (или рвоначальное создание) контейнера
make down - останов и удаление контейнера
make start - запуск котейнера после останова
make stop - останов контейнера
make restart - перзапуск контейнера

После запуска тестируем поключение (при наличии установленного postgresql-клиента в системе):
PGPASSWORD=123456 psql -h localhost -p 15432 -U tester
Должно появиться приглашение:
Type "help" for help.

tester=#


```
