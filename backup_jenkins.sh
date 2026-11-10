#!/bin/bash

# Masuk ke direktori proyek Jenkins
cd /home/ubuntu/aplikasi/jenkins-Dood

# Jalankan sync tanpa --vfs-cache-mode
rclone sync ./jenkins_data gdrive_user_ke_1:jenkins_backup_vps/jenkins_data -v >> /home/ubuntu/aplikasi/jenkins-Dood/backup.log 2>&1

echo "Backup Jenkins selesai pada: $(date)"

