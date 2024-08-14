## What Filesystem Should I Use Today?

> Do you want to guarantee your data is free of corruption?

ZFS for your data you care about (`/home`) and XFS on LVM for anything else.

> Do you want to avoid mucking about with kernel modules?

XFS on LVM

Use btrfs on your root (`/`) volume. But at least make /home xfs.
And have backups. [borg backup is good](https://www.borgbackup.org/).

Source: [blackhats.net.au](https://fy.blackhats.net.au/blog/2024-08-13-linux-filesystems/)