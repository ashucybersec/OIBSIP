Network Security Assessment Report -

Introduction -
This report documents the findings of a security assessment performed on the network host 119.18.54.94. The goal was to identify open ports, services, and potential vulnerabilities using Nmap and analyze network traffic captured via Wireshark.

Methodology -

Tools Used:
- Nmap: For port scanning and service enumeration.
- Wireshark: For packet capture and network traffic analysis.

Findings -

Nmap Scan Results -

The following services were discovered running on the host:

| Port     | Service   | Version/Details                          |
|----------|-----------|-------------------------------------------|
| 21/tcp   | FTP       | Pure-FTPd                                |
| 22/tcp   | SSH       | OpenSSH 7.4 (protocol 2.0)               |
| 25/tcp   | SMTP      | Exim smtpd 4.98.1                        |
| 53/tcp   | DNS       | ISC BIND 9.11.4-P2 (RedHat EL 7)         |
| 80/tcp   | HTTP      | Apache httpd                             |
| 110/tcp  | POP3      | Dovecot pop3d                            |
| 143/tcp  | IMAP      | Dovecot imapd                            |
| 443/tcp  | HTTPS     | Apache httpd (SSL enabled)               |
| 3306/tcp | MySQL     | MySQL 5.7.23-23                          |
| 2222/tcp | SSH Alt   | OpenSSH 7.4 (protocol 2.0)               |

Observations:
- FTP (Port 21): Unencrypted protocol; vulnerable to sniffing.
- HTTP (Port 80): Unencrypted web traffic.
- Open MySQL (Port 3306): Could allow unauthorized DB access.
- Multiple filtered ports: Possible firewall activity detected.

Wireshark Analysis -

- Captured unencrypted HTTP traffic (potential credentials exposure).
- Observed DNS traffic.
- No SSL/TLS issues detected for HTTPS.
- Regular ARP broadcasts; no clear evidence of ARP spoofing but mitigation recommended.

Recommendations -

| Issue                        | Recommendation                                   |
|------------------------------|---------------------------------------------------|
| FTP unencrypted              | Replace with SFTP or FTPS.                       |
| HTTP unencrypted             | Enforce HTTPS site-wide.                         |
| Open MySQL port              | Restrict access to internal IPs only.            |
| Outdated SSH version         | Upgrade to latest OpenSSH and disable weak ciphers.|
| ARP broadcast vulnerability  | Implement Dynamic ARP Inspection (DAI).          |

Conclusion -

The network assessment revealed multiple open services, some of which use insecure protocols. We recommend implementing the above security measures to strengthen the network’s security posture.

Attachments -
- nmap_results.txt - Full Nmap scan output.
- wireshark_capture.pcap - Captured packet data for analysis.
