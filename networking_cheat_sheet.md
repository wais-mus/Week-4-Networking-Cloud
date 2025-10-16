# 🌐 Networking Cheat Sheet  
**Week 4: Networking Fundamentals**

---

## 🧠 Overview
This cheat sheet covers essential networking commands, tools, and concepts for Linux and general IT troubleshooting.  
Includes IP configuration, connectivity testing, port checks, DNS queries, and routing.

---

## 📡 Basic Commands

| Command | Meaning | Example |
|----------|----------|----------|
| `ip a` | Display IP addresses and network interfaces | `ip a` |
| `ifconfig` | Legacy command to show interface info | `ifconfig eth0` |
| `ping <host>` | Test connectivity to a host | `ping google.com` |
| `traceroute <host>` | Trace path packets take to host | `traceroute 8.8.8.8` |
| `nslookup <domain>` | DNS lookup | `nslookup github.com` |
| `dig <domain>` | Advanced DNS query | `dig openai.com` |
| `hostname` | Show current hostname | `hostname` |
| `curl -I <url>` | Get HTTP headers | `curl -I https://google.com` |
| `wget <url>` | Download file from web | `wget https://example.com/file.zip` |

---

## 🔌 Ports & Connections

| Command | Meaning | Example |
|----------|----------|----------|
| `netstat -tuln` | Show listening TCP/UDP ports | `netstat -tuln` |
| `ss -tuln` | Modern replacement for netstat | `ss -tuln` |
| `nc -zv <host> <port>` | Test if port is open | `nc -zv 192.168.1.10 22` |
| `telnet <host> <port>` | Test connectivity to a TCP port | `telnet 192.168.1.10 80` |

---

## 🌍 Routing & Interfaces

| Command | Meaning | Example |
|----------|----------|----------|
| `route -n` | View routing table | `route -n` |
| `ip route` | Show routing info | `ip route show` |
| `ifconfig eth0 up` | Enable network interface | `sudo ifconfig eth0 up` |
| `ifconfig eth0 down` | Disable network interface | `sudo ifconfig eth0 down` |
| `nmcli` | Manage NetworkManager connections | `nmcli device status` |
| `systemctl restart networking` | Restart network service | `sudo systemctl restart networking` |

---

## 🔍 Troubleshooting

| Command | Meaning | Example |
|----------|----------|----------|
| `ping -c 4 <host>` | Ping host 4 times | `ping -c 4 8.8.8.8` |
| `traceroute <host>` | Trace route to host | `traceroute github.com` |
| `curl <url>` | Test web request | `curl https://google.com` |
| `dig +short <domain>` | Get just the IP | `dig +short openai.com` |
| `nslookup <domain>` | DNS resolution | `nslookup example.com` |
| `arp -a` | Show ARP table | `arp -a` |
| `tcpdump` | Capture network packets (requires sudo) | `sudo tcpdump -i eth0` |

---

## 🧱 Common Ports

| Service | Port | Protocol |
|---------|------|----------|
| HTTP | 80 | TCP |
| HTTPS | 443 | TCP |
| SSH | 22 | TCP |
| FTP | 21 | TCP |
| DNS | 53 | TCP/UDP |
| SMTP | 25 | TCP |

---

## 💡 Tips

- Use `|` (pipe) to filter output:  
  ```bash
  netstat -tuln | grep 22
Use ping before assuming network is down.

Combine traceroute with ping to identify routing issues.

Always check your interface status before changing configs:

bash
Copy code
ip a
Use sudo for commands that require administrative privileges.
