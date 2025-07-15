Task 3 - SQL Injection on DVWA 

Objective
Demonstrate SQL Injection vulnerability on DVWA

Tools Used -
- DVWA 
- LAMP
- Browser

Steps
1. Install DVWA on localhost.
2. Set security level
3. Performed SQL Injection:
```
Username: admin
Password: ' OR '1'='1
```
4. Successfully logged in as admin without knowing the actual password.
