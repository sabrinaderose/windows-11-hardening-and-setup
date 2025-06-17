# 🧰 Windows USB Creation & Setup Recovery Project

> [!IMPORTANT]
> A real-world recovery walkthrough: rebuilding a Windows 11 setup from Arch Linux after multiple failures with conventional imaging tools.

---

## 📁 Repository Structure

```
windows-usb-setup-recovery/
├── LICENSE
├── README.md
├── logs/
│   ├── README.md
│   └── troubleshooting-logs.md
├── docs/
│   ├── README.md
│   └── compatibility.md
├── scripts/
│   ├── 01-verify-usb.sh
│   ├── 02-mount-disk.sh
│   ├── 03-run-grub-prober.sh
│   ├── 03-README.md
│   └── setup-scripts.md
├── optional-debloat/
│   ├── 01-run-titus-tool.ps1
│   ├── README.md
│   ├── 02-disable-telemetry.ps1
│   ├── 03-remove-preinstalled-apps.ps1
│   ├── 04-enable-classic-context.ps1
│   ├── 05-set-privacy-policies.ps1
│   ├── debloat-scripts.md
│   └── README.md
└── windows-setup-images/
    ├── diskpart_partition_inspection.png
    ├── driver_installation_no_listed_hardware.png
    ├── rufus_creating_bootable_usb.png
    ├── windows_boot_error_bcd_missing.png
    ├── woeusb_failure_terminal_output.png
    └── README.md
```

---

## 💻 Purpose

This repository was built to:

- ✅ Demonstrate real recovery of a broken Windows install using **Arch Linux**
- ⚠️ Document edge-case failures from **Ventoy**, **WoeUSB**, and improper ISO media
- 🧠 Show common pitfalls during Windows setup:
  - Bootloader corruption (BCD missing)
  - USB misformatting errors
  - Driver installation failures
- 🛠️ Provide shell scripts for **safe USB prep + ISO transfer**
- 🧼 Offer optional post-install **Windows debloat scripts** while keeping updates intact

---

## 🔧 Compatibility Notes

### 🐧 Linux Requirements

- Built/tested on **Arch Linux**
- Requires: `bash`, `parted`, `mkfs`, `dd`, `udisksctl`
- Adjustments for other distros:
  - Replace `pacman` with your package manager
  - Confirm `ntfs-3g`, `exfat-utils`, and `udisks2` are installed

### 🪟 Windows Compatibility

- `Rufus` is recommended for flashing Windows ISOs from Windows
- `Chris Titus Tech` tool supports Win 10 & 11 for debloating

---

## 📸 Visual Documentation

Check `/windows-setup-images` for annotated screenshots, including:

- Partition layouts from `DISKPART`
- BCD error 0xc000014c
- Driver load failures
- Failed USB attempts (Ventoy, WoeUSB)
- Successful Rufus write

Each screenshot is explained in the subdirectory README.

---

## 📜 License

MIT License – © 2025 [sabrinaderose](https://github.com/sabrinaderose)

For license details, see [LICENSE](./LICENSE).
