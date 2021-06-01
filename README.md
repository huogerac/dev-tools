# DEV-TOOLS

> This is a collection of scripts to help you AVOID the DRY (Don't Repeat Yourself) to setup your environment (local/production)

## WHY?

It helps me to setup my developer environment in few minutes. (for example, after formatting or switching the linux distro)

## LINUX

First, I like to create partitions manually, this help me formatting my computer without losing my files or requiring backup.

```bash
Partitions to my 256GB SSD Hard drive:

/dev/sda1        75 GB  /           ---> SO (I can change any time)
/dev/sda2         8 GB  swap
/dev/sda3       170 GB  /home       ---> My files, keys and settings
/dev/sda4         1 GB  /boot/efi
/dev/sda5       1,5 GB  /boot
```

Then, open each script (inside your distro) and install just what you need...

## Distros

- [Elementary OS](https://github.com/huogerac/dev-tools/tree/master/elementaryos5)
- Ubuntu 18/20 [Working in progress]
- Mint [Working in progress]
