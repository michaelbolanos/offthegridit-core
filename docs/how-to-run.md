## ⚡ Executable Index (Run Scripts & Binaries Remotely)

This section allows you to execute scripts, binaries, and commands from remote locations using `curl`, `Invoke-WebRequest`, or `wget`. This makes it easier to deploy tools or automate tasks.

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

### 🔹 Download and Execute Binary
#### **Windows Binary Execution**
```powershell
Start-Process -FilePath "https://raw.githubusercontent.com/michaelbolanos/offthegridit-core/main/bin/windows/tool.exe"
```

#### **Linux Binary Execution**
```bash
wget -O /usr/local/bin/tool https://raw.githubusercontent.com/michaelbolanos/offthegridit-core/main/bin/linux/tool
chmod +x /usr/local/bin/tool
/usr/local/bin/tool
```

#### **macOS Binary Execution**
```bash
curl -o /usr/local/bin/tool https://raw.githubusercontent.com/michaelbolanos/offthegridit-core/main/bin/mac/tool
chmod +x /usr/local/bin/tool
/usr/local/bin/tool
```

---
