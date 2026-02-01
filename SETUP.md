# ⚙️ Linux Task Scheduler – Setup Guide

Follow these commands step-by-step to run the project.

---

## ✅ 1. Install cron

 sudo apt update
 
 sudo apt install cron -y
 
 sudo service cron start

Check:

crontab -l

---

## ✅ 2. Go to project folder

 cd ~
 
 mkdir linux-task-scheduler-bash
 
 cd linux-task-scheduler-bash

---

## ✅ 3. Create main scheduler

 touch task_scheduler.sh

 chmod +x task_scheduler.sh

---

## ✅ 4. Create example task

 touch ben.sh

 chmod +x ben.sh

---

## ✅ 5. Run example manually (test)

 ./ben.sh

 cat task_log.txt

---

## ✅ 6. Run scheduler

./task_scheduler.sh

---

## ✅ 7. Add task

Choose:

 2

 1

Enter FULL PATH:

/home/$(whoami)/linux-task-scheduler-bash/ben.sh

---

## ✅ 8. Verify scheduled job

crontab -l

---

## ✅ 9. Check output later

cat task_log.txt

---

## 🎉 Done

Your task is now running automatically using cron.
