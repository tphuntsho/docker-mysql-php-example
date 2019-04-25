#!/bin/bash
mysql --host=localhost --user=root --password=$MYSQL_ROOT_PASSWORD --port=3306 database < /tmp/mysql/app1/users.sql

mysql --host=localhost --user=root --password=$MYSQL_ROOT_PASSWORD --port=3306 -e "create schema shopdb"

mysql --host=localhost --user=root --password=$MYSQL_ROOT_PASSWORD --port=3306 shopdb < /tmp/mysql/app2/1a-products.sql
mysql --host=localhost --user=root --password=$MYSQL_ROOT_PASSWORD --port=3306 shopdb < /tmp/mysql/app2/1b-orders.sql
mysql --host=localhost --user=root --password=$MYSQL_ROOT_PASSWORD --port=3306 shopdb < /tmp/mysql/app2/1c-orders-items.sql
mysql --host=localhost --user=root --password=$MYSQL_ROOT_PASSWORD --port=3306 shopdb < /tmp/mysql/app2/1d-dummy-products.sql

