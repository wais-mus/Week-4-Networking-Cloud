# 🌐 Section 1 — Networking Fundamentals

🎯 **Goal:** Understand IP addressing, DNS, subnets, and use essential network diagnostic commands.

---

## 1️⃣ What is Networking?
Networking connects computers and devices to share data and resources.

🧠 **Key Concepts**
- **LAN (Local Area Network):** Small network (e.g., home, office)
- **WAN (Wide Area Network):** Large network (e.g., Internet)
- **Router:** Directs traffic between networks
- **Switch:** Connects multiple devices on the same network
- **Firewall:** Controls network traffic based on rules

---

## 2️⃣ IP Addressing (IPv4 / IPv6)

| Type | Example | Description |
|------|----------|--------------|
| IPv4 | 192.168.1.10 | 32-bit address (most common) |
| IPv6 | 2001:0db8:85a3::8a2e:0370:7334 | 128-bit address, newer standard |

🧩 **Command Practice**
```bash
ip addr show      # Linux: shows your IP
ipconfig          # Windows equivalent
hostname -I       # Quick view of local IPs
