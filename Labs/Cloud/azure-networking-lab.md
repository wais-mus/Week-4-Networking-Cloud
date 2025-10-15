# 🧪 Azure Networking Lab — VNets and Subnets

## Resource Group
- Name: LabNetworkRG
- Region: West Europe

## Virtual Network
- Name: LabVNet
- Address Space: 10.10.0.0/16

## Subnets
- WebSubnet: 10.10.1.0/24
- AppSubnet: 10.10.2.0/24

## Network Security Group
- Name: LabNSG
- Attached to: WebSubnet
- Inbound rules: SSH (22), HTTP (80)

## Test VM (Optional)
- Name: WebVM
- Subnet: WebSubnet
- Private IP: 10.10.1.4
- Public IP: 4.231.27.189
- OS: Ubuntu 22.04 LTS
- Size: B1s
