# 🧮 OS Compatibility

> [!NOTE]
> This file documents which scripts work on which OS, and how to adapt them across environments.

---

## ✅ Script Compatibility Matrix

| Script/File                     | OS Required      | Description / Notes                                                              |
|--------------------------------|------------------|----------------------------------------------------------------------------------|
| `usb_prep.sh`, `verify_iso.sh` | ✅ Linux (tested on Arch) | Uses `dd`, `parted`, `mkfs`, `sha256sum` — common across most Linux distros      |
| `*.bat`                        | ✅ Windows only   | Requires `cmd.exe` with standard CLI tools                                       |
| `*.ps1`                        | ✅ Windows 10/11  | Requires PowerShell 5.0+ (admin rights may be required)                          |

---

## 🔄 Adapting the Scripts

### 🐧 Linux ➜ Windows

Use **Rufus** to replace raw `dd` flashing. Tool substitutions:

- `dd` ➜ Rufus GUI  
- `sha256sum` ➜ `CertUtil -hashfile FILE SHA256`

---

### 🪟 Windows PowerShell ➜ Linux

> [!TIP]
> There's no 1:1 PowerShell-to-Bash translation, but here's how to mirror functionality:

- Services → `systemctl`  
- Package managers → `apt`, `pacman`, or `flatpak`  
- Settings/UI tweaks → `gsettings`, `dconf`, or `.config` edits  

---

## 📁 Best Practice

Keep scripts in **platform-specific folders**:

```
/scripts/
  ├── linux/
  │   └── usb_prep.sh
  ├── windows/
  │   ├── prep_usb.bat
  │   └── install.ps1
```

Make sure folder structure and README labeling reflect platform needs.
