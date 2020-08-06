# PowerBoarding
 A Powershell Onboarding script/installer.
----

This script will install multiple (own choice) applications via PowerShell, you will either have the installers downloaded already and put into a zip file or you will be prompted to download the zip file from your company servers (you will have to add the address into the code)

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

To run PowerBoarding please ensure you have downloaded the script to your /Downloads folder (of somewhere you feel comfortable being able to access on your machine via the command line)

Type the following command to run the script and press Enter:

>& "C:\PATH\TO\SCRIPT\PowerBoarding.ps1"

In the above command, make sure to change "PATH\TO\SCRIPT" to the location of your script.

For example, this command runs a script stored in the Downloads folder:

>& "C:\Users\username\Downloads\first_script.ps1"

![Run PowerShell script on Windows 10](https://www.windowscentral.com/sites/wpcentral.com/files/styles/w830/public/field/image/2020/07/running-script-filies-powershell-windows-10_2020.jpg)
Source: Windows Central

After you complete the steps, the script will run, and if it was written correctly, you should see its output without issues and be taken through the menu interface:

# Issues

Placeholder McPlaceholder.

# Requests


----

This readme will be updated as the project moves forward.

Tasks: 

- [x] Initial push of project, outline readme.
- [x] Learn better githubbing.
- [x] Initial push of 'Hello World' test.
- [x] Removed history from Readme.md and started an more in depth blog post on [ha3ks.tech](http://ha3ks.tech).
- [ ] Test installing an .exe
- [ ] Test installing an .msi
- [ ] Log install process/Dispaly it? (Install progress bar)
- [ ] Make it install more then one file.
- [x] QUERY : GUI interface and select options to install certain things?
- [x] QUERY : How do you like your apps? all individual or a compressed .zip of goodies to extract and install.
- [ ] Upgrades?
- [x] Make it pretty (More GUI faffing).
- [x] Write some instructions.
- [ ] Add example screenshots.
- [ ] ...
- [ ] Profit?

