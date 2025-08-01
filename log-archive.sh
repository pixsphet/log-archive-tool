#!/bin/bash

# 📁 ตำแหน่งของไฟล์ log
LOG_DIR="$HOME/logs"
ARCHIVE_DIR="$LOG_DIR/archive"
DAYS_KEEP=30

echo "เริ่มบีบอัดไฟล์ .log ที่เก่ากว่า 1 วัน..."

# บีบอัดไฟล์ .log เก่าที่อายุเกิน 1 วัน
find "$LOG_DIR" -maxdepth 1 -type f -name "*.log" -mtime +1 -exec gzip "{}" \;

# ย้ายไฟล์ .gz ไปที่ archive
mv "$LOG_DIR"/*.gz "$ARCHIVE_DIR"/ 2>/dev/null

# 🧹 ลบไฟล์ .gz ที่เก่ากว่า $DAYS_KEEP วัน
find "$ARCHIVE_DIR" -type f -name "*.gz" -mtime +$DAYS_KEEP -exec rm "{}" \;

echo "✅เสร็จสิ้น! ไ
