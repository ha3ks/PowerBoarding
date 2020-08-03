# PowerBoarding
 A Powershell Onboarding script/installer.

Something I have wanted for some time is a simple one script wonder for installing multiple apps.

I understand there are websites such as Ninite.com which act as a multiple app installer however I have a very particular set of applications I like to install including things like VMWare which are not a part of the Ninite loadout.

I took inspiration after seeing [Nick Cravers](https://stackoverflow.com/users/13249/nick-craver) post on [Twitter](https://twitter.com/Nick_Craver/status/1273379596545798145) regarding his new work Macbook and needing to get his development environment set up. Handily StackOverflow have been doing development for years and already have a powershell and now also apple compatable script to handle quick setup and until they are able to write up about the onboarding process, I wanted to try it out myself both good and bad to see how it works.

Inspiration.png 

![Glorious and Simple](https://pbs.twimg.com/media/Eavz2imXsAIcb58?format=jpg&name=small)

(yes I know it's on the Mac, mine may never look good but half the battle is knowing what you want to do and then 25% is blue lasers and the other 25% is red ones)

----

This readme will be updated as the project moves forward.

Tasks: 

- [x] Initial push of project, outline readme
- [ ] Learn better githubbing
- [x] Initial push of 'Hello World' test.
- [ ] Test installing an .exe
- [ ] Test installing an .msi
- [ ] Log install process/Dispaly it?
- [ ] Make it install more then one file.
- [ ] QUERY : Staged installer?
- [ ] QUERY : How do you like your apps? all individual or a compressed .zip of goodies.
- [ ] Upgrades?
- [ ] Make it pretty
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

