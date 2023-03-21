### Enumerating Information From Windows and Samba Systems


![/banner.png](https://github.com/TNRooT/WinSamba_Enumerator/blob/master/banner.png)
#### Description :
```
WinSamba Enumerator is a Bash script designed for red teamers, penetration testers, and security professionals who need to perform automated enumeration of Windows and Samba systems. 
The script prompts the user for input, including the IP address or hostname of the system to enumerate, the number of usernames to try, and the full path to the output file. 
It then attempts to authenticate with each username/password combination and checks for valid authentication before proceeding with enumeration. 
The script can enumerate system information from Windows and Samba shares, including the operating system version, architecture, hostname, and share name, path, and access rights. 
The results of the enumeration are saved to a specified output file, making it easy to review and analyze the information collected. 
The script includes error handling to detect and report any errors that occur during the enumeration process, and it can be customized to add additional enumeration modules or modify existing modules to suit specific enumeration requirements.
```

#### Key Features :
```
   - User input: The script prompts the user for input, including the IP address or hostname of the system to enumerate, the number of usernames to try, the usernames and passwords for each user, and the full path to the output file.
   - Authentication testing: The script attempts to authenticate with each username/password combination provided by the user and checks for valid authentication before proceeding with enumeration.
   - Windows enumeration: The script enumerates system information from the Windows system if valid authentication is found, including the operating system version, architecture, and hostname.
   - Samba enumeration: The script enumerates information about Samba shares if valid authentication is found, including the share name, path, and access rights.
   - Output file: The script saves the enumeration results to a specified output file, making it easy to review and analyze the information collected.
   - Error handling: The script includes error handling to detect and report any errors that occur during the enumeration process, such as invalid credentials or network errors.
   - Customizable: The script can be customized to add additional enumeration modules or modify existing modules to suit specific enumeration requirements.
   - Automation: The script can be automated using tools such as cron to run enumeration tasks on a scheduled basis or as part of a larger security assessment.
```
  

#### Usage instructions :

```
    1-  Open a terminal on your Linux system.

    2-  Download the script file (e.g., WinSambaEnumerator.sh) to a directory of your choice. You can use wget or curl to download the script from a URL, or copy and paste the script into a text editor and save it as a file.

    3-  Make the script executable by running the command chmod +x WinSambaEnumerator.sh.

    4-  Run the script by typing ./WinSambaEnumerator.sh followed by Enter.

    5-  The script will prompt you to enter the IP address or hostname of the Windows or Samba system you want to enumerate, as well as the number of usernames you want to enter.

    6-  Enter the usernames and passwords for each user you want to try to authenticate with. You will be prompted for each username and password separately.

    7-  Enter the full path to the output file where you want to save the enumeration results.

    8-  The script will attempt to authenticate with each username/password combination and enumerate information from the Windows and Samba system if valid authentication is found.

    9-  When the enumeration is complete, the script will display a message indicating where the results were saved.
```
#### Note :
```
This script is intended for use by red teamers, penetration testers, and other security professionals who have the necessary permission and legal authorization to conduct security assessments on computer systems. 
Unauthorized access or enumeration of information from computer systems is illegal and can result in serious consequences. Always obtain the necessary permission and legal authorization before using this script or any other security tool.
```
  

#### Usage options :

```
    $ git clone https://www.github.com/TNRooT/WinSamba_Enumerator
    $ cd WinSamba_Enumerator
    $ chmod +x WinSambaEnumerator.sh
    $./WinSambaEnumerator.sh
Enter the IP address or hostname of the Windows or Samba system to enumerate: 192.168.X.X
Enter the number of usernames to try: 3
Enter username 1: alice
Enter password for alice: 
Enter username 2: bob
Enter password for bob: 
Enter username 3: charlie
Enter password for charlie: 
Enter the full path to the output file: /home/user/WinSamba_results.txt
Testing authentication...
Valid authentication found with username alice and password 12345!
Starting enumeration...
Enumerating Windows system information...
Enumerating Samba shares...
Finished enumeration. Results saved to /home/user/WinSamba_results.txt.
```
```
#### My Twitter :
```

**Say hello** : [TNRooT](https://github.com/TNRooT)
```
#### My Youtube Channel :
```
**Say hello** : [TNRooT](https://youtube.com/@The_Ethical_TN)

