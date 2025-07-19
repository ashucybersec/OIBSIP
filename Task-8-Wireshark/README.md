Task 8 - Capture Network Traffic with Wireshark

Objective -
Capture and analyze network traffic to the target web server https://www.timt.ac.in using Wireshark.

Tools Used -
- Wireshark v4.x
- Target: https://www.timt.ac.in

Findings -
The Wireshark capture revealed the following:

- TCP handshake observed between client (192.168.1.7) and server (119.18.54.94).
- TLSv1.3 Client Hello and Server Hello packets exchanged.
- Encrypted Application Data (no plaintext credentials visible).
- DNS queries resolving www.timt.ac.in.
- IPv6 and QUIC traffic also captured.

Recommendations -
- Enforce HTTPS (HSTS) and secure cookies.
- Monitor for abnormal traffic or packet loss.
- Regularly scan for vulnerabilities on endpoints.

Conclusion -
Wireshark successfully captured encrypted traffic to timt.ac.in, showing the importance of secure communication protocols.
