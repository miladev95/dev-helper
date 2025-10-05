# Development Helper

## Bash aliases and commands
### some commands for `git`, `laravel`, `shell`, `golang`, `curl`,...
how to use :

`echo bashrc >> ~/.bashrc`

`source ~/.bashrc`

---

##  Ubuntu System Initialization Script

This script installs essential tools, development environments, and common desktop applications on a fresh Ubuntu system.

## 📦 Included Packages

### 🧰 System Utilities
- Updates package lists
- Installs **tmux** for terminal multiplexing
- Installs **indicator-multiload** for system monitoring
- Installs **Thunar** as a lightweight file manager

### 💬 Communication & Media
- Installs **Telegram Desktop**
- Installs **Audious** (audio player)

### 💻 Development Tools
- Installs **GoLand** IDE and **Golang** runtime
- Installs **PHP**, required PHP extensions, and **PhpStorm** IDE

### 🌐 Browser
- Downloads and installs **Google Chrome (Stable)**

## 🚀 Usage

Run the script with:
```bash
bash init.sh
```
---


## Remote MySQL Table Export & Local Import Script

This Bash script automates exporting a specific MySQL table from a remote Docker container and importing it into a local MySQL database.

## ⚙️ Features
- SSH into a remote server automatically (using `sshpass` if needed).
- Runs `mysqldump` inside a Docker container on the remote server.
- Copies the exported `.sql` file back to the local machine.
- Imports the SQL dump into a local MySQL database.
- Supports interactive and non-interactive mode for database/table selection.

## 🧩 Requirements
- `sshpass` (for password-based SSH access)
- `docker` on the remote server
- MySQL client installed locally
- SSH access to the remote server

## 🚀 Usage

### 1. Configure Variables
Edit the script and update:
```bash
SERVER="root@your-server-ip"
MYSQL_USER="your_mysql_user"
MYSQL_PASSWORD="your_mysql_password"
LOCAL_MYSQL_USER="your_local_user"
LOCAL_MYSQL_PASSWORD="your_local_password"
```
### 2. Make Script Executable
```bash
chmod +x export-import.sh
```
### 3. Run the Script
Interactive mode:
```bash
./exdb.sh
```

### 4. After Execution

- The SQL dump is created remotely.

- It’s copied locally as output.sql.

- Automatically imported into your local database.

### 🧾 Notes

- Ensure SSH keys or sshpass credentials are correctly set.

- The script uses --no-tablespaces to avoid MySQL privilege errors.

- Works best for one-table exports; can be extended for full database dumps.

---