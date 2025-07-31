#!/bin/bash

# إعداد محفظتك - غيّر هذا السطر بعنوان محفظتك الحقيقي
WALLET="kaspa:qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqv8hn3h6u"  # <-- غيّر هذا

# اسم العامل (اختياري)
WORKER_NAME=$(hostname)

# مجلد مؤقت للعمل
cd /tmp

# تحميل lolMiner (آخر نسخة مستقرة)
wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.86/lolMiner_v1.86_Lin64.tar.gz -q

# فك الضغط
tar -xf lolMiner_v1.86_Lin64.tar.gz
cd 1.86

# تشغيل التعدين (بصمت)
./lolMiner --algo KASPA --pool de.eu1.kaspa.herominers.com:1111 --user $WALLET.$WORKER_NAME --no-color > /dev/null 2>&1 &
