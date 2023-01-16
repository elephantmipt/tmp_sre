# Task 3

1. запустим  `prometheus` и `node-exporter` с помощью `docker-compose`. При этом нужно примаунтить к node exporter почти весь диск. Подробнее в `docker-compose.yml`. Понимаю что лучше это делать без докера, но у меня mac.

2. для того, чтобы отключить некоторые коллекторы добавим флаг `--collector.disable-defaults` в команду запуска конетйнера с `node-exporter`. (см `docker-composr.yml`).

Документация говорит:
> Collectors are enabled by providing a --collector.<name> flag. Collectors that are enabled by default can be disabled by providing a --no-collector.<name> flag. To enable only some specific collector(s), use --collector.disable-defaults --collector.<name> ....

Поэтому закинем еще `--collector.cpu` чтобы показать что все ок. 

![](/task3/assets/node_prom.png)

3. Добавим в docker-compose.yml еще один образ с питоном. В нем будем писать в файл случайное число каждые 3 секунды. Подробнее в `writer.py`. Пошарим вольюм `/mnt` между `writer` и `node-exporte`, добавим `--collector.textfile.directory=/mnt/text.txt`.

В итоге:

![](/task3/assets/)