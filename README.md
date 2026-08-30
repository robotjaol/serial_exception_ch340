# CH340 and CH341 Serial-Port Troubleshooting

A troubleshooting archive for serial-port configuration failures involving CH340/CH341 USB-to-serial adapters on Windows and Linux.

> **Project status:** support note with bundled third-party driver archive; prefer current operating-system or vendor-supported drivers.

## What this repository contains

- A diagnostic checklist for port enumeration, permissions, cable quality, and driver conflicts.
- CH341SER.ZIP, a bundled Windows driver archive of unverified provenance.
- linux.bash, a Linux-side helper that must be reviewed before use.

## Quick start

1. Disconnect the adapter and record the current error message and operating-system version.
2. Check Device Manager on Windows or kernel logs and device permissions on Linux.
3. Try a known data-capable USB cable and another port.
4. Install only a current, signed driver obtained from the chip vendor or device manufacturer.
5. Reconnect the adapter and verify the port with a non-destructive serial terminal.

## Engineering notes

- A SerialException can result from permissions, a busy port, a disconnected device, invalid baud settings, cable faults, or driver problems.
- Windows driver packages should have a valid digital signature and publisher.
- Linux systems often need group membership or a udev rule rather than an out-of-tree driver.

## Repository map

| Path | Purpose |
| --- | --- |
| CH341SER.ZIP | Legacy third-party Windows driver archive. |
| linux.bash | Linux troubleshooting helper. |
| README.md | Platform-neutral diagnostic workflow. |

## Safety and limitations

Do not run unsigned installers or shell scripts from an unverified archive. Create a restore point where appropriate, scan binaries, and obtain drivers from the official hardware source.

## Contributing

Open an issue before a large change. Keep changes focused, document assumptions, and include a reproducible verification step.

## License

Repository documentation may be reused only where permitted; the bundled third-party driver remains under its vendor's separate licence and redistribution terms.
