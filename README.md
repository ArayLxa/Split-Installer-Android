split APK Installer (KernelSU Module + ncurses UI)

A lightweight TUI (Terminal User Interface) tool to install **split APKs** on Android devices with **root access**.  
This project provides a **KernelSU module** and a **ncurses-based installer** that lets you pick which APK splits to install, then commits them into one installation session.

I created this project for myself since the split apk won't install normally with the help of applications like SAI and i like to work with TUI apps as well

---

## ✨ Features
- 📱 Install **split APKs** (multiple `.apk` files) in one session  
- 🖥️ Simple **ncurses menu** for selecting optional splits  
- 🔒 Works with **KernelSU** (root required)  
- ⚡ No extra dependencies beyond `cmd package`  
- 🧹 Automatic cleanup of temp files in `/data/local/tmp`  
- 🛑 Session handling is safe (abandoned automatically on failure)

---

## 📖 Usage

1. **Create a session manually** (required due to Android’s restrictions):
   ```sh
      su
         cmd package install-create -r
   ```
exmaple output:
```sh
Success: created install session [ID:123456]
```

2. **Run the installer**
```sh
./splitinstaller <apk_folder> <session_id>
```
example:
```sh
./splitinstaller /sdcard/Download/app_splits 123456
```

3. Pick your APKs:
- Navigate with up/down arrow keys
- Toggle selection with 'Space'
- View APK info with 'i'
- Confirm and install with 'Enter'

## 📂 Project Structure
```sh
.
├── META-INF
│   └── com
│       └── google
│           └── android
│               └── update-binary
├── README.md
├── module.prop
├── system
│   └── bin
│       ├── aapt2
│       └── split-installer
└── uninstall.sh
```

## ⚠️ Requirements
- Android root solution KernelSU/or it's forks (Magisk is Not tested)
- Working cmd package service

## 🤝 Credits
- Developed and maintained by ArayLxa
- Applicatin code generated with the help of ChatGPT
