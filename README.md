# 🐧 Linux Task Scheduler using Bash

A simple yet powerful **menu-driven Task Scheduler** built using **Bash scripting** and **Linux cron (crontab)**.

This project allows you to **automate, schedule, and manage recurring tasks** directly from the terminal without manually editing crontab.

It is designed for beginners learning **Linux, Bash, and DevOps automation**.

---

## 🚀 Features

✅ List all scheduled tasks  
✅ Add tasks (Hourly / Daily / Weekly)  
✅ Remove existing tasks  
✅ Interactive CLI menu  
✅ Uses Linux cron internally  
✅ Lightweight and beginner-friendly  
✅ Real-world automation use case  

---

## 🛠 Tech Stack

- Bash (Shell Scripting)
- Linux
- Cron (crontab)

---

## 📂 Project Structure

```
linux-task-scheduler-bash/
│
├── task_scheduler.sh   → Main scheduler program
├── ben.sh              → Example scheduled task
├── task_log.txt        → Auto-generated log file
├── README.md
├── SETUP.md
└── .gitignore
```

---

## ⚙️ Installation

### Install cron

```bash
sudo apt update
sudo apt install cron -y
sudo service cron start
```

Check:

```bash
crontab -l
```

---

## ▶️ Usage

### Make scripts executable

```bash
chmod +x task_scheduler.sh
chmod +x ben.sh
```

---

### Run scheduler

```bash
./task_scheduler.sh
```

Menu:

```
1 List Tasks
2 Add Task
3 Remove Task
4 Exit
```

---

## 🧪 Example Task

### ben.sh

```bash
#!/bin/bash
echo "Task executed at $(date)" >> task_log.txt
```

This script logs the execution time whenever it runs.

---

## 🕒 Cron Time Format

```
* * * * * command
│ │ │ │ │
│ │ │ │ └── Day of week
│ │ │ └──── Month
│ │ └────── Day of month
│ └──────── Hour
└────────── Minute
```

### Examples

```
0 * * * * script.sh   → Every hour
0 9 * * * script.sh   → Daily 9 AM
0 9 * * 1 script.sh   → Weekly Monday
*/5 * * * * script.sh → Every 5 minutes
```

---

## 🔍 How It Works

1. User selects an option from the menu  
2. Script interacts with `crontab`  
3. Adds/removes scheduled jobs  
4. Cron automatically execu
