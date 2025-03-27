# 🟣 NetworkManager Quick Reset 🔄

Simple bash scripts to automate restarting the NetworkManager and checking the network status on Linux 🐧.

---

## ⚡ The Problem

On some Linux distributions, it's common to face random network issues, especially when dealing with proprietary drivers or certain Wi-Fi cards 📡. A usual quick fix is to manually run:

```bash
sudo systemctl restart NetworkManager
nmcli device status
```
But in the most part of the resets, you need to do this multiple times (at least at my case).
Remembering these hard commands and doing multiple times becomes annoying.

# ✅ The Solution
**I created small and handy scripts to automate this process, making it faster and easier 💡.**

# 📜 Included Scripts
`network-reset.sh` 🔄 – Automatically restarts the NetworkManager infinite times until you press Ctrl + C to stop when it works.

`network-status.sh` 📊 – Shows the current network status using nmcli infinite times until you press Ctrl + C to stop when you're done.

# 🛠️ Requirements
- Linux distro with systemd and NetworkManager 🐧;
- Bash or Zsh installed;
- `nmcli` installed (usually comes with NetworkManager).

# 💡 Usage
1. Normally, you should create a `bin/` directory in your $HOME for downloading the scripts. But this is optional;
2. Install the scripts;
3. Go to the directory where the scripts were installed:
```
cd ~/bin/
```
(Or another directory)

4. Allow execution of the scripts:
```
chmod +x network-reset-zsh.sh network-status-zsh.sh
```

5.1. Just run the scripts directly:
```bash
./network-reset.sh
./network-status.sh
```

5.2. Or, create aliases in your `.zshrc` / `.bashrc` to make them even faster ⚡:
```
alias net-r="$HOME/bin/network-reset-zsh.sh"
alias net-s="$HOME/bin/network-status-zsh.sh"
```
