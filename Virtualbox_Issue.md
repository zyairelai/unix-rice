Cannot install Guest Additions on Debian

```
sudo /etc/fstab
```

Change from this line  
```
/dev/sr0        /media/cdrom0   udf,iso9660 user,noauto     0       0
```

To
```
/dev/sr0        /media/cdrom0   udf,iso9660 user,exec     0       0
```
