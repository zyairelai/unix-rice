# Bug Bounty Essentials

### Add Pentest Repository
```
sudo nano /etc/apt/sources.list
deb http://http.kali.org/kali kali-rolling main contrib non-free

sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com ED444FF07D8D0BF6
sudo apt install wifite golang

go install github.com/OJ/gobuster/v3@latest
go install github.com/ffuf/ffuf@latest
```

### RustScan
- https://doc.rust-lang.org/cargo/getting-started/installation.html
```
curl https://sh.rustup.rs -sSf | sh
cargo install rustscan
```

### VMware Workstation
- https://www.vmware.com/asean/products/workstation-pro/workstation-pro-evaluation.html
- https://appnee.com/vmware-workstation-pro-universal-license-keys-collection/)

### Burp Suite Pwofessional
- https://portswigger.net/burp/documentation/desktop/getting-started/download-and-install
- http://search.maven.org/remotecontent?filepath=org/python/jython-standalone/2.7.0/jython-standalone-2.7.0.jar
```
git clone https://github.com/zyairelai/Burp-Loader burp
echo "java --illegal-access=permit -Dfile.encoding=utf-8 -javaagent:/opt/burp/loader.jar -noverify -jar /opt/burp/burpsuite_pro_v2022.jar" > burp_pro
chmod a+x burp_pro

java --illegal-access=permit -Dfile.encoding=utf-8 -javaagent:loader.jar -noverify -jar burpsuite_pro_v2022.jar
java -jar keygen.jar
```

### Burp Extender
- Active Scan ++
- Additional CSRF Checks
- CSRF Scanner
- CMS Scanner
- Backslash Powered Scanner
- Retire.js
- Logger++
- JSON Web Tokens
- Software Vulnerability Scanner
- XSS Validator
- J2EEScan
- Upload Scanne
- AutoRepeater
- Autorize
