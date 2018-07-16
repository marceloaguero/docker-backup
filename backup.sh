#!/bin/sh
set -e

echo "Job started: $(date)"

DATE=$(date +%Y%m%d_%H%M%S)
FILE="/backup-dest/backup-$DATE.tar.gz"
tar -zcvf $FILE backup-source/

echo "Job finished: $(date)"