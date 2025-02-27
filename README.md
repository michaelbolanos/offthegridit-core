# 🌟 offthegridit Public IT Resources

<p align="center">
  <img src="https://offthegridit.com/wp-content/uploads/2024/05/offthergridit-logo-tree1.jpg" alt="offthegridit logo" width="63">
</p>

**Empowering IT Learning & Support**

Welcome to **offthegridit's** public IT resources. We offer easy-to-understand guides and tools for:

- Aspiring IT Professionals
- STEM Enthusiasts
- Seniors
- General Users
- Managed Service Providers (MSP)
- IT Support Customers

---

## 👵👴 Resources for Seniors

We know technology can be challenging. Our [Senior Tech Tips](docs/senior-tech-tips.md) provide simple guides to help you navigate the digital world.

---

## 📚 What We Offer

- **IT Basics & Tutorials**: Learn about system administration, networking, and security.
- **Scripts & Automation**: Tools to make your tech tasks easier.
- **Home Automation**: Guides on setting up smart home devices.
- **IT Support**: Solutions for common tech problems.
- **STEM Learning**: Hands-on activities to spark your interest in technology.
- **Cybersecurity**: Tips to keep your information safe.
- **Senior Tech Tips**: Special guides tailored for seniors.
- **Future Tech**: Explore new technologies like AI and quantum computing.

---

## 🛠 Installation & Usage

Coming Soon

---

## 🎮 Demo Video

[![Watch the video](https://img.youtube.com/vi/reAXSyYBFM4/maxresdefault.jpg)](https://www.youtube.com/watch?v=reAXSyYBFM4)

---

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

## 📂 Documentation Index

| Section                                                                 | Description                                      |
|-------------------------------------------------------------------------|--------------------------------------------------|
| [Windows](docs/windows.md)                                              | Windows-specific guides                          |
| [Mac](docs/mac.md)                                                      | macOS-specific guides                            |
| [Linux](docs/linux.md)                                                  | Linux-specific guides                            |
| [IT Support](docs/it-support.md)                                        | IT Support Basics                                |
| [Cybersecurity](docs/cybersecurity.md)                                  | Security Best Practices                          |
| [Automation](docs/automation.md)                                        | Scripts & Automation                             |
| [Smart Home](docs/smart-home.md)                                        | Home Automation & HA Setup                       |
| [Senior Tips](docs/senior-tech-tips.md)                                 | IT Tips for Seniors                              |
| [Future Tech](docs/future-tech.md)                                      | Current Trends & Emerging Technologies           |
| [Troubleshooting](docs/troubleshooting.md)                              | Common IT Issues & Fixes                         |

Click on any section to access the relevant documentation. 🚀

---

## 📂 Repository Structure

```bash
/offthegridit-public-it-resources
│── README.md                 # Main Overview
│── docs/                     # Documentation & Guides
│   ├── windows.md            # Windows-specific guides
│   ├── mac.md                # macOS-specific guides
│   ├── linux.md              # Linux-specific guides
│   ├── it-support.md         # IT Support Basics
│   ├── cybersecurity.md      # Security Best Practices
│   ├── automation.md         # Scripts & Automation Guides
│   ├── smart-home.md         # Home Automation & HA Setup
│   ├── senior-tech-tips.md   # IT Tips for Seniors
│   ├── future-tech.md        # Current Trends & Emerging Technologies
│   ├── troubleshooting.md    # Common IT Issues & Fixes
│── scripts/                   # Automation & IT scripts
│   ├── linux/                # Linux scripts
│   ├── mac/                  # macOS scripts
│   ├── windows/              # Windows scripts
│── bin/                      # Compiled binaries & tools
│   ├── linux/                # Linux binaries
│   ├── mac/                  # macOS binaries
│   ├── windows/              # Windows executables
│── images/                   # Logos, screenshots, diagrams
│── videos/                   # Video content & demos
│── files/                    # Miscellaneous (PDFs, config files, templates)
│── .github/                   # GitHub-related configurations (actions, workflows)
│── LICENSE                    # License for open-source compliance
│── CONTRIBUTING.md            # Contribution guidelines
│── CHANGELOG.md               # Release notes and changes
