## Virtualbox Guest Addition iso permission
```
mount -v | grep cdrom0
sudo mount -o remount,exec,ro /media/cdrom0
```

## VirtualBox Issues Fixed
Error: `Cannot install Guest Additions on Debian`  
Edit `/etc/fstab`  
Change from this line  
```
/dev/sr0        /media/cdrom0   udf,iso9660 user,noauto     0       0
```

To  
```
/dev/sr0        /media/cdrom0   udf,iso9660 user,exec     0       0
```

## Ubuntu 20.04 boots to black screen with flashing cursor
https://www.py4u.net/discuss/1121744
