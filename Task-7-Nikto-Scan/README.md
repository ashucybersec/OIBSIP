Task 7 - Vulnerability Scanning with Nikto

Objective -
Perform a vulnerability scan on a target web server using Nikto and analyze the findings.

Tools Used - 
- Nikto v2.5.0
- Target: https://www.timt.ac.in

Summary of Findings -
Nikto identified several issues on the target web server:

Missing Security Headers -
  - X-Frame-Options header not present (prone to Clickjacking)
  - Strict-Transport-Security header not set (missing HSTS)
  - X-Content-Type-Options header missing (MIME type sniffing possible)

Cookie Issues -
  - PHPSESSID cookie set without Secure and HttpOnly flags

Sensitive Files and Directories -
  - Found `/robots.txt` with entries to be manually reviewed.
  - Found multiple exposed CGI scripts that may allow information disclosure or remote code execution.

Potential Vulnerabilities -
  - BREACH attack possible due to "deflate" content encoding.
  - Several outdated CGI scripts with known exploits.

Recommendations -
- Add missing security headers (HSTS, X-Frame-Options, X-Content-Type-Options).
- Secure cookies with Secure and HttpOnly flags.
- Remove or secure unnecessary CGI scripts.
- Regularly update server software and apply patches.
- Conduct a full vulnerability assessment and penetration test.

Conclusion -
The Nikto scan revealed multiple security misconfigurations and potential vulnerabilities. Addressing these issues will help in strengthening the server’s security posture.
