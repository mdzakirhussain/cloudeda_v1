
To check disk space in the command line interface (CLI) on Linux, use:

```
df -h
```

- The `-h` flag shows sizes in a human-readable format (e.g., GB, MB).  
- This will display available, used, and total disk space for all mounted filesystems.

In the context of disk space commands, **`df`** stands for **"disk free"**.  
It is a standard Unix command used to report the amount of available disk space on file systems.

To check the size of a **specific directory** in the CLI, use:

```bash
du -sh /path/to/directory
```

To check the size of a **specific file**, use:

```
du -h /path/to/file
```

- `-s` gives only the total size (for directories).
- `-h` shows sizes in a human-readable format (KB, MB, GB).

In the context of CLI commands, **`du`** stands for **"disk usage"**.  
It is used to estimate and report the file space usage of directories and files.


If you use the `-s` option with `du` on a file, like this:

```
du -sh /path/to/file
```

- The `-s` (**summarize**) option tells `du` to display only the total size, not a breakdown.
- For a file, this means it will simply show the size of that file in a human-readable format (because of `-h`).

**Result:**  
You get a single line showing the total size of the specified file.


To check RAM size in the CLI on Linux, use:

```
free -h
```

- The `-h` flag shows the output in a human-readable format (MB, GB).
- Look for the `Mem:` line to see total, used, and free RAM.

Alternatively, you can use:

```
cat /proc/meminfo
```

This shows detailed memory information.