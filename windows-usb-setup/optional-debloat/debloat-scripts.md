# 🧼 Optional Debloat Scripts

> [!WARNING]
> These scripts modify system behavior. Use responsibly and always create a restore point first.

---

## 📘 Overview

This set of modular scripts is designed to **customize and debloat Windows 10/11** during or after installation. Ideal for tech-savvy users, multi-OS setups, and clean system prep.

> Scripts were tested during a dual-boot system cleanup phase and verified in **Windows PowerShell (Administrator)** mode.

---

## 📜 Script Index

### `01-run-titus-tool.ps1`
Launches [Chris Titus Tech's Windows Utility Tool](https://github.com/ChrisTitusTech/winutil).

- Interactive GUI
- Debloat presets
- App installation and privacy tweaks  
**Credit:** Chris Titus Tech — GPL-3.0 License

---

### `02-disable-telemetry.ps1`
Disables telemetry/tracking services including:

- DiagTrack  
- CEIP  
- Connected User Experiences  
- Data Collection policies  

> Works best on Pro/Enterprise editions. Limited success on Windows Home.

---

### `03-remove-preinstalled-apps.ps1`
Uninstalls default apps like:

- Xbox
- Weather
- News
- Groove Music, etc.

Customize list via the `$apps` array in the script.

---

### `04-enable-classic-context.ps1`
Restores full, classic right-click context menu (Windows 11 only).

> This script does nothing on Windows 10.

---

### `09-set-privacy-policies.ps1`
Sets multiple registry and Group Policy values to reinforce a **privacy-first baseline**.

- Disables online speech recognition  
- Prevents app launch tracking  
- Restricts diagnostic data sent to Microsoft

---

## ⚠️ Usage Guidelines

- Run scripts with **Administrator privileges**
- Create a **restore point** or system image before applying
- Windows Home may silently ignore some registry or policy tweaks
- These scripts **do not block updates** unless explicitly designed to

---

## 📄 License

**MIT License** — © 2025 [sabrinaderose](https://github.com/sabrinaderose)  
**Chris Titus Tech Utility** — [GPL-3.0 License](https://github.com/ChrisTitusTech/winutil/blob/master/LICENSE)

You may use, modify, and distribute these scripts freely — just preserve original credit.
