# 📅 Week 4 — Networking & Cloud Foundations

🎯 **Goal:** Build networking and basic cloud understanding before moving into Infrastructure as Code (Terraform).

⏱ **Time:** 4–6 hours  
📍 **Focus Area:** Azure networking (with AWS comparisons)

---

## 🧠 Study Topics & Progress

### 🌐 Networking Basics
- [x] Learned IP, DNS, subnets, CIDR notation  
- [x] Practiced using `ping`, `traceroute`, `nslookup`, and `ipconfig`  
- [x] Created `notes/networking-basics.md` summarizing commands and key concepts  

### ☁️ Cloud Fundamentals (Azure-Focused)
- [x] Reviewed Azure Resource Groups, VNets, Subnets, and NSGs  
- [x] Compared Azure VNet vs AWS VPC  
- [x] Completed Microsoft Learn modules:
  - *Create and configure an Azure Virtual Network*  
  - *Secure network traffic in Azure*  
- [x] Documented results in `notes/cloud-basics.md`

### ⚙️ Infrastructure as Code Overview
- [x] Learned what “Infrastructure as Code (IaC)” means  
- [x] Reviewed Terraform and ARM Template examples  
- [x] Prepared to automate Azure network setup using Terraform (Week 5)

---

## 🧩 Deliverables

| File / Folder | Description |
|----------------|--------------|
| `/notes/networking-basics.md` | IP, DNS, Subnet & command notes |
| `/notes/cloud-basics.md` | Azure networking notes |
| `/labs/vpc-diagram.png` | VNet diagram showing 2 subnets, 2 VMs, 1 NSG |
| `/reflection.md` | Summary of what was learned this week |

---

## 🧭 Reflection
> This week helped me strengthen my understanding of IP addressing, DNS, and Azure VNets.  
> I practiced using `ping` and `traceroute` to test connectivity and learned how NSGs secure Azure subnets.  
> Subnetting was tricky at first, but visualizing it in Azure Portal made it click.  
> I now understand how cloud networks mimic on-prem networks and am ready to start Terraform automation next week.

---

## 🧑‍💻 Git Commands (from Ubuntu)

```bash
# Navigate to your repo
cd ~/Week-4-Networking-Cloud

# Create folders for organization
mkdir -p notes labs

# Save README.md
nano README.md
# (Paste content above, then Ctrl + O, Enter, Ctrl + X)

# Stage and commit
git add README.md
git commit -m "Add Week 4 Networking & Cloud Foundations README"

# Push to GitHub
git push origin main
