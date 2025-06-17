# 🛠️ Setup Scripts

> [!NOTE]
> These optional helper scripts were used during USB setup, disk mounting, and GRUB troubleshooting. They're aimed at advanced users and dual-boot repair scenarios.

---

## 📁 Script Index

### `01-verify-usb.ps1` (Windows)
- Checks if a Windows ISO exists on a USB drive.
- Written in PowerShell for use in Windows environments.

### `02-mount-disk.sh` (Linux)
- Mounts a USB or ISO file manually.
- Replace `/dev/sdX1` with the correct device identifier before running.

### `03-run-grub-prober.sh` (Linux)
- Runs `os-prober` and regenerates the GRUB config.
- Helps detect and add missing operating systems to the bootloader.

---

## ⚠️ Usage Notes

- These scripts are **not required** for setup.
- They are useful in **troubleshooting**, **multi-boot**, and **manual recovery** contexts.
- Always verify the correct disk identifiers before running mount or write operations.

