# task 2

1. Поставил прометеус через `docker run --name prometheus -d -p 127.0.0.1:9090:9090 prom/prometheus`. Я могу скопировать докеробраз из репо, но зачем когда есть готовый.

2. Напишем пару запросов:

    - Сколько malloc-ов сделал прометеус

    ![](/task2/assets/malloc.png)

    - Логарифм по основанию десять от числа запросов в течение 5 минут по каждой ручке

    ![](/task2/assets/log10_5m.png)


3. recording rule

Для того чтобы запустить prometheus со своими recording rules достаточно выполнить `bash run_with_rules.sh`
