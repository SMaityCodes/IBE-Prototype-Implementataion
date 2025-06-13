<div align="center">
<img src="ProjectSupportFiles/ASM-IBE-Logo.png" width="500"/>
</div>

# 📦 ASM-IBE: An Open-Access IBE Encryption Tool 
This is a prototype implementation of Identity-based Encryption System (IBE) proposed by [Boneh et. al](https://doi.org/10.1007/3-540-44647-8_13). IBE is a public-key encryption technology which does not require public-key certificates for public key authentication, rather, the public-key of an user is derived (usually by hashing) from the public information (like the uique ID) of the user. Apart from the users of the system, the protocol uses two types of trusted authorities, viz., a globally trusted Admin, and a Key Generation Center (KGC) authorized by the Admin. Users are registered by a KGC. It can be noted that there may me multiple KGCs authorized by the global Admin creating a hirearchy of registrataion as shown below:-

<div align="center">
<img src="ProjectSupportFiles/Tree1.svg" width="500"/>
</div>



It consists of the following four algorithms:-

- Setup: this algo. is executed by a globally trusted Admin which generates the following items:-
    - a master-secret-key (MSK) 
- KeyGen
- Encrypt
- Decrypt

Additionally, it also provides the following algorithm

- VrifyKey
 
# 📦 Prerequisite:
- ✅ Platform : UNIX OS
- ✅ Install PBC from [here](https://github.com/wellsaid/pbc-0.5.14.git): A Pairing Based Cryptography Libaray
- ✅ [Documentation](https://your-docs-link.com): Please go through the documentataion to know about IBE protocol in brief.



[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
![Version](https://img.shields.io/badge/version-1.0.0-green)
![Build](https://img.shields.io/badge/build-passing-brightgreen)

## 🚀 Demo

[Live Demo](https://your-demo-link.com) 

## 📸 Screenshots

![Screenshot](link-to-screenshot.png)

## 🧰 Features

- ✅ Feature 1
- ✅ Feature 2
- ✅ Feature 3

## 🛠️ Installation

```bash
# Clone the repository
git clone https://github.com/your-username/your-repo.git

# Go into the project directory
cd your-repo

# Install dependencies
npm install

# Start the development server
npm start
