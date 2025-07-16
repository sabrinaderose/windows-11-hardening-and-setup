# Windows 11 Hardening and Setup – USB Recovery & Dual Boot Fix

**Author:** [sabrinaderose](https://github.com/sabrinaderose)  
**Date:** June 17, 2025  
**Repository:** https://github.com/sabrinaderose/windows-11-hardening-and-setup  
**Category:** System Recovery | Dual Boot Repair | Windows Privacy Hardening  
**Certifications Aligned:** Indirect support for CompTIA A+, Linux+, Security+

---

## 🎯 Objective

This project involved **rebuilding a working Windows 11 installation** after encountering failed USB creation tools, bootloader corruption, and dual-boot conflicts with Arch Linux. It documents the full recovery process from Linux, Windows boot image creation, GRUB repair, and post-install telemetry hardening.

The resulting setup includes a secure, dual-boot configuration between Arch Linux and Windows 11, with detailed recovery steps and image references for future troubleshooting.

---

## 🛠️ Environment & Tools Used

### Hardware & Platforms
- **Primary System:** Arch Linux Desktop (used for USB creation and repair)
- **Target OS:** Windows 11 22H2 (UEFI system, AMD CPU)
- **USB Media:** Memorex 32GB USB 2.0 Flash Drive

### Software
- `Rufus` (on Windows)  
- `WoeUSB`, `Ventoy`, `dd`, `udisksctl`, `os-prober` (on Arch Linux)  
- `Chris Titus Tech Debloat Utility` (for post-install telemetry removal)

### Network
- Wi-Fi enabled for ISO downloads and patch verification

### Repo Artifacts
- **Screenshots:** `windows-setup-images/` (Rufus usage, error screens, GRUB entries)
- **Logs:** `logs/troubleshooting-logs.md`, GRUB reinstall output, PowerShell scripts

---

## 🚧 Project Assumptions & Requirements

- USB must support large file sizes — NTFS preferred over FAT32
- Dual-boot with Arch Linux already in place
- Willingness to manually repair EFI boot entries
- Working Linux system available for initial recovery

---

## 🔧 Execution Steps

### 🔹 1. System Prep
- Verified USB state with `dmesg`, `lsblk`, and `udisksctl`
- **Ventoy and WoeUSB failed** to create a bootable ISO
- Switched to `Rufus` from a secondary Windows system — succeeded

### 🔹 2. Configuration
- Booted successfully into Windows 11 setup via Rufus USB
- Installed manually using UEFI targeting
- Reinstalled GRUB from Arch using UUID mapping
- Used `os-prober` to detect and re-enable Windows in boot menu

### 🔹 3. Post-Install Testing
- Verified Windows booted without overwriting Linux GRUB entries
- Confirmed telemetry blocking, debloat success, and DNS verification
- Used `timedatectl set-local-rtc 1` to fix time sync issues between OSes

---

## 🧠 Troubleshooting & Errors

| Error                        | Cause                         | Resolution                           |
|-----------------------------|-------------------------------|--------------------------------------|
| ISO not booting             | Bad USB / Device I/O error    | Swapped USB and validated with `dd`  |
| GRUB missing Windows entry  | EFI overwritten by Windows    | Used `os-prober` and `grub-mkconfig` |
| Install failure             | Missing drivers               | Created new USB with Rufus           |
| Timezone issues             | RTC offset post-dual boot     | Fixed with `timedatectl`             |

---

## ✅ Final Outcome

- **Dual-boot Success:** Both Arch and Windows boot reliably via GRUB  
- **Windows Privacy Hardened:** Used PowerShell tools to remove bloat, telemetry, and ads  
- **System Restore Ready:** USB recovery images tested across multiple systems  
- **Time Drift Solved:** Adjusted hardware clock to avoid Windows-Linux sync conflicts

---

## 📂 Logs & Key Files

| File / Tool                     | Purpose                                  |
|----------------------------------|------------------------------------------|
| `logs/troubleshooting-logs.md`  | Full error and fix log                   |
| `windows-setup-images/`         | Screenshots of setup, disk, Rufus usage |
| `GRUB reinstall logs`           | Dual boot repair documentation          |
| PowerShell scripts              | Debloat and telemetry cleanup           |

---

## 🧾 STAR Summary (Resume-Ready)

**Situation:** Windows install failed due to bad USB media and erased GRUB bootloader  
**Task:** Recover and secure Windows 11 setup from Linux while maintaining dual boot  
**Action:** Created new USB via Rufus, repaired bootloader manually, applied system-level telemetry blocks  
**Result:** Fully functional dual-boot system with secure Windows 11 installation, recoverable and hardened

---

## 📚 References

- Arch Wiki: GRUB + os-prober troubleshooting  
- Rufus Docs: ISO flashing with GPT/UEFI  
- Chris Titus Tech: Debloat PowerShell Suite  
- WoeUSB / Ventoy GitHub issues

---

## 💡 Final Notes

This project highlights practical, **cross-platform system administration** — solving real-world bootloader conflicts and hardware inconsistencies using both Linux and Windows toolchains. It’s not just recovery — it’s evidence of **adaptability, documentation discipline, and hands-on OS troubleshooting.**
