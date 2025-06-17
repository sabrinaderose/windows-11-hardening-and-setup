# 🧾 Unified Debug & Troubleshooting Logs  
*Simulated session logs with timestamps, shell outputs, and commentary.*

---

## [1] USB Boot Failures – ISO Not Booting Properly  
**Timestamp:** 2025-06-17T10:14:00  
**Shell:** `tty1`

```shell
[sabrina@archbtw ~]$ dmesg | grep sdc
[ 123.456789] sdc: sdc1 sdc2
[ 123.457123] sd 6:0:0:0: [sdc] No caching mode page found
[ 123.457456] sd 6:0:0:0: [sdc] Assuming drive cache: write through
[ 124.000000] mount: /dev/sdc1: wrong fs type, bad option, bad superblock
```

**Commentary:**  
The USB showed I/O errors and failed to mount. Likely physical damage or bad formatting. Ventoy failed to boot ISO properly from this device.

---

## [2] GRUB Entry Debugging – Windows Not Detected  
**Timestamp:** 2025-06-17T11:02:00  
**Shell:** `tty2`

```shell
sudo os-prober
/dev/sda1:Windows Boot Manager:Windows:chain

sudo grub-mkconfig -o /boot/grub/grub.cfg
```

**Commentary:**  
Windows boot manager wasn't visible until `os-prober` was installed. Once executed, it found the Windows partition and added it to GRUB.

---

## [3] Windows Install Failure – Missing Drivers  
**Timestamp:** 2025-06-17T12:12:00  
**Environment:** Windows Setup

```text
Error code: 0xc000914c  
A required device isn't connected or can't be accessed.
```

**Commentary:**  
Likely caused by a corrupted USB, improperly mounted ISO, or UEFI/Legacy boot mismatch. Media failed to load disk drivers.

---

## [4] Disk Identification to Prevent Arch Wipe  
**Timestamp:** 2025-06-17T12:23:00  
**Shell:** `tty3`

```shell
lsblk
```

**Commentary:**  
Used `lsblk` to confirm Arch was on `/dev/sda`, avoiding accidental formatting. Always verify drive layout before installations.

---

## [5] Time Sync Issues – Dual Boot Clock Drift  
**Timestamp:** 2025-06-17T13:03:00  
**Shell:** `tty1`

```shell
timedatectl
sudo timedatectl set-local-rtc 1 --adjust-system-clock
```

**Commentary:**  
Clock drift occurs due to Windows using local time and Linux expecting UTC. Resolved by syncing RTC to local time.

---

## [6] GRUB Theme Testing – Lain Theme Errors  
**Timestamp:** 2025-06-17T14:00:00  
**Shell:** `tty2`

```shell
grub-mkconfig -o /boot/grub/grub.cfg
# WARNING: Unable to load 'banner.png'
```

**Commentary:**  
The Lain GRUB theme failed to load because `banner.png` was either missing or improperly sized. Replacing it fixed the issue.

---

## [7] Debloat Script Output  
**Timestamp:** 2025-06-17T14:25:00  
**Tool:** `TweakTool.ps1`

```powershell
[+] Disabling Cortana...
[+] Uninstalling Xbox services...
[+] Disabling Telemetry (Basic)
[+] Turning off Windows Tips & Notifications
[+] Windows Defender Tamper Protection: OFF
```

**Commentary:**  
Used Chris Titus Tech’s tool to debloat Windows safely. Most settings are reversible and don’t break system updates.

---

## [8] Telemetry Block Verification  
**Timestamp:** 2025-06-17T15:10:00  
**Shell:** Windows PowerShell

```powershell
netstat -ano | findstr "connected"
Get-WinEvent -LogName Microsoft-Windows-Diagnostics-Performance/Operational
```

**Commentary:**  
Confirmed telemetry domains like `vortex.data.microsoft.com` were blocked. Validated via DNS sinkhole and event logs.

---

## [9] Corrupted USB Recovery Attempt  
**Timestamp:** 2025-06-17T15:32:00  
**Shell:** `tty3`

```shell
sudo dd if=/dev/zero of=/dev/sdc bs=4M
# error writing '/dev/sdc': Input/output error
```

**Commentary:**  
Original USB was physically damaged. Failed `dd` operation and was replaced.

---

## [10] Bootloader Repair Post-Windows Install  
**Timestamp:** 2025-06-17T16:03:00  
**Shell:** `tty1`

```shell
sudo grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
sudo grub-mkconfig -o /boot/grub/grub.cfg
```

**Commentary:**  
Windows overwrote UEFI entries. GRUB had to be reinstalled and reconfigured to detect both Arch and Windows via `os-prober`.

---

*End of log.*
