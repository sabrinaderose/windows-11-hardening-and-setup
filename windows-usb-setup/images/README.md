# 🪟 Windows Setup Process – Image Documentation

> [!NOTE]
> This folder contains annotated screenshots from a real-world troubleshooting session involving dual-booting **Arch Linux** and **Windows 11**.

---

## 📸 Image Breakdown

| Filename                                 | Description                                                                 |
|------------------------------------------|-----------------------------------------------------------------------------|
| `windows_boot_error_bcd_missing.png`     | Boot error `0xc000014c` – missing or corrupted BCD (Boot Configuration Data) |
| `diskpart_partition_inspection.png`      | Using `DISKPART` to inspect partitions before wiping the Nobara install    |
| `driver_installation_no_listed_hardware.png` | Windows installer error – no listed hardware drivers from faulty USB       |
| `woeusb_failure_terminal_output.png`     | WoeUSB terminal output showing failure due to read-only device state and FAT32 limitations |
| `rufus_creating_bootable_usb.png`        | Rufus creating a new Windows USB from scratch on a different device        |

---

## 💡 Context & Use

These images support recovery documentation and serve as a **visual record** of:
- Troubleshooting a corrupted dual-boot environment
- Windows installer behavior under broken USB conditions
- Why Rufus is preferred over WoeUSB in this scenario

Use them in portfolio repos, case studies, or recovery write-ups.

---

## 🔗 Related Repositories

- [`arch-linux-nuke-and-recovery`](https://github.com/sabrinaderose/arch-linux-nuke-and-recovery)
- [`arch-linux-kde-daily-driver`](https://github.com/sabrinaderose/arch-linux-kde-daily-driver)
