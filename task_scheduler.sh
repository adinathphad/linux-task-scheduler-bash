#!/bin/bash

# =============================
# Function: List tasks
# =============================
list_tasks() {
    echo "------ Scheduled Tasks ------"
    crontab -l 2>/dev/null || echo "No tasks scheduled"
    echo "-----------------------------"
}

# =============================
# Function: Add task
# =============================
add_task() {

    echo "Select schedule type:"
    echo "1) Hourly"
    echo "2) Daily"
    echo "3) Weekly"

    read -p "Choice: " choice
    read -p "Enter full command/script path: " command

    case $choice in
        1) schedule="0 * * * *" ;;
        2) schedule="0 9 * * *" ;;
        3) schedule="0 9 * * 1" ;;
        *) echo "Invalid choice"; return ;;
    esac

    (crontab -l 2>/dev/null; echo "$schedule $command") | crontab -

    echo "Task added successfully!"
}

# =============================
# Function: Remove task
# =============================
remove_task() {
    crontab -l
    read -p "Enter text to remove: " text
    crontab -l | grep -v "$text" | crontab -
    echo "Task removed!"
}

# =============================
# Main Menu
# =============================
while true
do
    echo ""
    echo "===== TASK SCHEDULER ====="
    echo "1) List Tasks"
    echo "2) Add Task"
    echo "3) Remove Task"
    echo "4) Exit"

    read -p "Choose option: " option

    case $option in
        1) list_tasks ;;
        2) add_task ;;
        3) remove_task ;;
        4) exit ;;
        *) echo "Invalid option" ;;
    esac
done
