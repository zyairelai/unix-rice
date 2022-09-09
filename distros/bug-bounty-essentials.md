# Bug Bounty Essentials

### RustScan
- https://doc.rust-lang.org/cargo/getting-started/installation.html
- `curl https://sh.rustup.rs -sSf | sh`
- `cargo install rustscan`
- `sudo cp ~/.cargo/bin/rustscan /usr/bin/rustscan`

### ExploitDB
- `sudo git clone https://github.com/offensive-security/exploitdb.git /opt/exploitdb`
- `sudo ln -sf /opt/exploitdb/searchsploit /usr/local/bin/searchsploit`

### Metasploit Framework
```
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall
```

### Wordlists
- `sudo mkdir /usr/share/wordlists`
```
wget https://raw.githubusercontent.com/v0re/dirb/master/wordlists/common.txt
wget https://raw.githubusercontent.com/v0re/dirb/master/wordlists/big.txt
wget https://github.com/daviddias/node-dirbuster/raw/master/lists/directory-list-2.3-medium.txt
wget https://github.com/praetorian-inc/Hob0Rules/raw/master/wordlists/rockyou.txt.gz
```
- `sudo gzip -d /usr/share/wordlists/rockyou.txt.gz`


### Firefox Extensions
- Go to `about:config`  
- set `True` for `toolkit.tabbox.switchByScrolling`
- set `False` for `ui.key.menuAccessKeyFocuses`
- https://addons.mozilla.org/en-US/firefox/addon/wappalyzer/
- https://addons.mozilla.org/en-US/firefox/addon/traduzir-paginas-web/
- https://addons.mozilla.org/en-US/firefox/addon/hacktools/
- https://addons.mozilla.org/en-US/firefox/addon/shodan-addon/
- https://addons.mozilla.org/en-US/firefox/addon/cookie-editor/
- https://addons.mozilla.org/en-US/firefox/addon/uaswitcher/

### Chrome Extensions
- https://chrome.google.com/webstore/detail/wappalyzer-technology-pro/gppongmhjkpfnbhagpmjfkannfbllamg
- https://chrome.google.com/webstore/detail/hack-tools/cmbndhnoonmghfofefkcccljbkdpamhi
- https://chrome.google.com/webstore/detail/trufflehog/bafhdnhjnlcdbjcdcnafhdcphhnfnhjc
- https://chrome.google.com/webstore/detail/shodan/jjalcfnidlmpjhdfepjhjbhnhkbgleap
- https://chrome.google.com/webstore/detail/cookie-editor/hlkenndednhfkekhgcdicdfddnkalmdm
- https://chrome.google.com/webstore/detail/dotgit/pampamgoihgcedonnphgehgondkhikel?hl=en

### VMware Workstation
- https://www.vmware.com/asean/products/workstation-pro/workstation-pro-evaluation.html
```
curl https://appnee.com/vmware-workstation-pro-universal-license-keys-collection/ | grep -i -A 20 'Workstation 16.x'
```

### Burp Suite Pwofessional
- https://portswigger-cdn.net/burp/releases/download?product=pro
- https://www.jython.org/jython-old-sites/downloads.html
```
git clone git@github.com:zyairelai/burp-loader.git burp
cd burp
echo "LOADER_LOCATION=" >> burp
echo "BURP_SUITE_PRO_LOCATION=" >> burp
echo "java -noverify -javaagent:\$LOADER_LOCATION -jar \$BURP_SUITE_PRO_LOCATION" >> burp

chmod a+x burp

java -noverify -javaagent:loader.jar -jar BURP_SUITE_PRO_VERSION.jar
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

### Add Pentest Repository (DANGER ZONE)
```
sudo nano /etc/apt/sources.list
deb http://http.kali.org/kali kali-last-snapshot main contrib non-free
sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com ED444FF07D8D0BF6

sudo apt install wifite golang

go install github.com/OJ/gobuster/v3@latest
go install github.com/ffuf/ffuf@latest

sudo apt install gobuster golang-go kali-grant-root debootstrap squashfs-tools seclists feroxbuster impacket-scripts nbtscan oscanner redis-tools snmp sipvicious tnscmd10g wkhtmltopdf && sudo python3 -m pip install git+https://github.com/Tib3rius/AutoRecon.git
```

# Reverse Shell over WAN
- https://stackoverflow.com/questions/71621855/how-can-i-use-a-reverse-shell-over-global-internet
- https://www.sitepoint.com/use-ngrok-test-local-site/
- https://ngrok.com/