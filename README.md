# Доска объявлений(Iac)

[![hexlet-check](https://github.com/Kirill-Tkachev/devops-engineer-from-scratch-project-315/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/Kirill-Tkachev/devops-engineer-from-scratch-project-315/actions)

Автоматизация раскатывания контейнеризированного приложения на сервер в облаке

Учебный проект Хекслета: https://ru.hexlet.io/programs/devops-engineer-from-scratch
Как это должно работать: https://asciinema.org/a/v4evn7XjCdou7Yh71IG0ljb0W

## Стек

- Ansible — автоматизация настройки сервера и развёртывания приложения
- Docker и Docker Compose — запуск контейнеров
- PostgreSQL — база данных
- Nginx — обратный прокси-сервер
- Certbot и Let's Encrypt — HTTPS
- Yandex Cloud — облачный сервер и Object Storage
- Docker Hub — хранение Docker-образов
- Make — запуск команд автоматизации

## Установка

```bash
git clone https://github.com/Kirill-Tkachev/devops-engineer-from-scratch-project-315.git
cd devops-engineer-from-scratch-project-315
```

### Требования

- Ansible, Make и Git на локальном компьютере
- Сервер с Ubuntu 24.04
- SSH-доступ к серверу
- Настроенный файл `inventory`
- Пароль для расшифровки `secrets.yml` через Ansible Vault

### Установка зависимостей Ansible

```bash
make ansible-install
```

## Использование

### Настройка сервера

Установка и настройка Docker, Nginx, Certbot и UFW:

```bash
make playbook
```

### Развёртывание приложения

```bash
make deploy VERSION=<версия_образа>
```

При развёртывании Ansible запрашивает пароль Vault.

### Работающее приложение

https://hexlet-bulletins.duckdns.org

---

<details>
<summary>Автоматические тесты Хекслета</summary>

Тесты запускаются на каждый коммит. За запуск отвечает файл `.github/workflows/hexlet-check.yml` — не удаляйте и не переименовывайте ни его, ни репозиторий.

</details>

## О Хекслете

[Хекслет](https://ru.hexlet.io/) — школа программирования: авторские программы обучения с практикой, поддержкой наставников и реальными проектами, которые остаются в резюме. Этот репозиторий — один из таких проектов.
