# csroot

Root your CrystalSky and install SuperSU

### Upload the needed files

```
bash-3.2$ ./copy.sh
checking if adb device is present
List of devices attached
1234567890	device

copying files to device
tmp/: 11 files pushed. 6.8 MB/s (8348440 bytes in 1.173s)
bash-3.2$

```

### Navigate to the /tmp folder on your CrystalSky

```
bash-3.2$adb shell
shell@zs600b:/ $ cd data/local/tmp
```

### Execute the Exploit to gain temp root

```
shell@zs600b:/data/local/tmp $ ./lordroot
sh: ./patch_script.sh: not found
max_:3 min:10 i_ret:0x20

F_SETPIPE_SZ 407
    [+] Done target:dc0df1a0 overflowcheck:200000 map:12670 readv_error:0 
    [+] Done target:dc0df1a0 overflowcheck:deadbeef map:12735 readv_error:0 
get_selinux_state -
 - 0
shellcode_root_self i_pid:1408 ppid:1402 i_thread_info:de9ba000 i_task:db2c5e80 i_cred:dcbfb180 i_init_sid:0 
fwrite is count 1 ./kok
shell@zs600b:/data/local/tmp $ 
```

### Run the script to install su binary and supersu.apk

```
1|shell@zs600b:/data/local/tmp $ ./mkdevsh
2+0 records in
2+0 records out
2 bytes transferred in 0.001 secs (2000 bytes/sec)
4+0 records in
4+0 records out
4 bytes transferred in 0.001 secs (4000 bytes/sec)
12+0 records in
12+0 records out
12 bytes transferred in 0.001 secs (12000 bytes/sec)
root@zs600b:/data/local/tmp #
```

### Reboot and run SuperSU from the App Menu
