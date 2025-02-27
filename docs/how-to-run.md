# ⚡ Executable Index (Run Scripts & Binaries Remotely)

This section allows you to execute scripts, binaries, and commands from remote locations using `curl`, `Invoke-WebRequest`, or `wget`. This simplifies deployment and automation of tasks across different operating systems.

---

## 🖥️ Windows | 🐧 Linux | 🍏 macOS

Easily run scripts and executables with the following commands:

### 🔹 Windows PowerShell Execution
Run a PowerShell script directly from our repository:

```powershell
iex (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/michaelbolanos/offthegridit-core/main/scripts/windows/setup.ps1')
```

Alternative (Using `Invoke-WebRequest`):

```powershell
Invoke-Expression (Invoke-WebRequest -Uri "https://raw.githubusercontent.com/michaelbolanos/offthegridit-core/main/scripts/windows/setup.ps1" -UseBasicParsing).Content
```

### 🔹 Linux & macOS Shell Execution
Run a shell script directly from our repository:

```bash
curl -sSL https://raw.githubusercontent.com/michaelbolanos/offthegridit-core/main/scripts/linux/setup.sh | bash
```

For macOS-specific installations:

```bash
curl -sSL https://raw.githubusercontent.com/michaelbolanos/offthegridit-core/main/scripts/mac/setup.sh | bash
```

---

## 📂 Download and Execute Binaries

### 🖥️ **Windows Binary Execution**
```powershell
Start-Process -FilePath "https://raw.githubusercontent.com/michaelbolanos/offthegridit-core/main/bin/windows/tool.exe"
```

### 🐧 **Linux Binary Execution**
```bash
wget -O /usr/local/bin/tool https://raw.githubusercontent.com/michaelbolanos/offthegridit-core/main/bin/linux/tool
chmod +x /usr/local/bin/tool
/usr/local/bin/tool
```

### 🍏 **macOS Binary Execution**
```bash
curl -o /usr/local/bin/tool https://raw.githubusercontent.com/michaelbolanos/offthegridit-core/main/bin/mac/tool
chmod +x /usr/local/bin/tool
/usr/local/bin/tool
```

---

## 🔗 References & Additional Resources
- 📜 [PowerShell Documentation](https://learn.microsoft.com/en-us/powershell/)
- 🐧 [Linux Shell Scripting Guide](https://linuxcommand.org/tlcl.php)
- 🍏 [macOS Terminal User Guide](https://support.apple.com/guide/terminal/welcome/mac)
- 🚀 [GitHub Repository](https://github.com/michaelbolanos/offthegridit-core)
