
# mount

需要导入注册表解决无法写入和乱码问题，见 reg 项目 feature\mount 文件夹
```cmd
mount -o mtype=hard nolock timeout=6 casesensitive=yes fileaccess=6 \\192.168.1.3\home k:
```

```cmd
mount [-o <Option>[...]] [-u:<UserName>] [-p:{<Password> | *}] {\\<ComputerName>\<ShareName> | <ComputerName>:/<ShareName>} {<DeviceName> | *}
```

## docs
- -o rsize=<buffersize>

    Sets the size in kilobytes of the read buffer. Acceptable values are 1, 2, 4, 8, 16, and 32; the default is 32 KB.

- -o wsize=<buffersize>

    Sets the size in kilobytes of the write buffer. Acceptable values are 1, 2, 4, 8, 16, and 32; the default is 32 KB.

- -o timeout=<seconds>

    Sets the time-out value in seconds for a remote procedure call (RPC). Acceptable values are 0.8, 0.9, and any integer in the range 1-60; the default is 0.8.

- -o retry=<number>

    Sets the number of retries for a soft mount. Acceptable values are integers in the range 1-10; the default is 1.

- -o mtype={soft	hard}
- -o anon

    Mounts as an anonymous user.

- -o nolock

    Disables locking (default is enabled).

- -o casesensitive

    Forces file lookups on the server to be case sensitive.

- -o fileaccess=<mode>

    Specifies the default permission mode of new files created on the NFS share. Specify mode as a three-digit number in the form ogw, where o, g, and w are each a digit representing the access granted the file's owner, group, and the world, respectively. The digits must be in the range 0-7 with the following meaning:
    - 0: No access
    - 1: x (execute access)
    - 2: w (write access)
    - 3: wx
    - 4: r (read access)
    - 5: rx
    - 6: rw
    - 7: rwx

- -o lang={euc-jp

    euc-tw

- -u:<UserName>

    Specifies the user name to use for mounting the share. If username is not preceded by a backslash (\), it is treated as a UNIX user name.

- -p:<Password>

    The password to use for mounting the share. If you use an asterisk (*), you will be prompted for the password.
