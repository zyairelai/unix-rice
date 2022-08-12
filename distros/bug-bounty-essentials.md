# Bug Bounty Essentials

### Add Pentest Repository
```
sudo nano /etc/apt/sources.list
deb http://http.kali.org/kali kali-rolling main contrib non-free
deb http://http.kali.org/kali kali-last-snapshot main contrib non-free

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
sudo ln -s ~/.cargo/bin/rustscan /bin/r
```

### AutoRecon
```
sudo apt install gobuster golang-go kali-grant-root debootstrap squashfs-tools seclists feroxbuster impacket-scripts nbtscan oscanner redis-tools snmp sipvicious tnscmd10g wkhtmltopdf && sudo python3 -m pip install git+https://github.com/Tib3rius/AutoRecon.git
```

### Firefox
- Go to `about:config`  
- set `True` for `toolkit.tabbox.switchByScrolling`
- set `False` for `ui.key.menuAccessKeyFocuses`
- https://addons.mozilla.org/en-US/firefox/addon/wappalyzer/
- https://addons.mozilla.org/en-US/firefox/addon/traduzir-paginas-web/
- https://addons.mozilla.org/en-US/firefox/addon/hacktools/
- https://addons.mozilla.org/en-US/firefox/addon/shodan-addon/
- https://addons.mozilla.org/en-US/firefox/addon/cookie-editor/
- https://addons.mozilla.org/en-US/firefox/addon/uaswitcher/

### Chrome
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
echo "java -noverify -javaagent:$LOADER_LOCATION -jar $BURP_SUITE_PRO_LOCATION" >> burp

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

# Reverse Shell over WAN
- https://stackoverflow.com/questions/71621855/how-can-i-use-a-reverse-shell-over-global-internet
- https://www.sitepoint.com/use-ngrok-test-local-site/
- https://ngrok.com/
