# PowerBoarding
 A Powershell Onboarding script/installer.
----
This readme will be updated as the project moves forward.

Tasks: 

- [x] Initial push of project, outline readme.
- [ ] Learn better githubbing.
- [x] Initial push of 'Hello World' test.
- [x] Removed history from Readme.md and started an more in depth blog post on [ha3ks.tech](http://ha3ks.tech).
- [ ] Test installing an .exe
- [ ] Test installing an .msi
- [ ] Log install process/Dispaly it?
- [ ] Make it install more then one file.
- [ ] QUERY : GUI interface and select options to install certain things?
- [ ] QUERY : How do you like your apps? all individual or a compressed .zip of goodies to extract and install.
- [ ] Upgrades?
- [ ] Make it pretty (More GUI faffing).
- [ ] Write some instructions.
- [ ] ...
- [ ] Profit?


----

# Installation Instructions

Ideally this will be download file/files/zip, grab script and run it. This section will be updated in the future so for now I am leaving this placeholder.

# How to run PowerShell script file on Windows 10
If you wish to run a script file with PowerShell, you have to change the execution policy on Windows 10.

To change the execution policy to run PowerShell scripts, use these steps:

* Open Start.
* Search for PowerShell, right-click the top result, and select the Run as administrator option.
Type the following command to allow scripts to run and press Enter:

>Set-ExecutionPolicy RemoteSigned

Type A and press Enter (if applicable).

![PowerShell enable policy to run script](https://www.windowscentral.com/sites/wpcentral.com/files/styles/w830/public/field/image/2020/07/powershell-set-executionpolicy-run-script-windows-10_.jpg)
Source: Windows Central

Type the following command to run the script and press Enter:

>& "C:\PATH\TO\SCRIPT\first_script.ps1"

In the above command, make sure to change "PATH\TO\SCRIPT" to the location of your script.

For example, this command runs a script stored in the Downloads folder:

>& "C:\Users\username\Downloads\first_script.ps1"

![Run PowerShell script on Windows 10](https://www.windowscentral.com/sites/wpcentral.com/files/styles/w830/public/field/image/2020/07/running-script-filies-powershell-windows-10_2020.jpg)
Source: Windows Central

After you complete the steps, the script will run, and if it was written correctly, you should see its output without issues.

# Issues

Placeholder McPlaceholder.

# Requests

