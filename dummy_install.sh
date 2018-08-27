#!/usr/bin/env bash

hadoop fs -mkdir       /tmp
hadoop fs -mkdir       /user/hive/warehouse
hadoop fs -chmod g+w   /tmp
hadoop fs -chmod g+w   /user/hive/warehouse