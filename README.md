# PowerBoarding
----
A Script to install applications

This script will install multiple applications contained in the same directory as the script via PowerShell.

## Installation Instructions

Simply place this .ps1 file in the directory containing the .exe or .msi files you wish to install.

## How to run PowerShell script file on Windows
If you wish to run a script file with PowerShell, you have to change the execution policy on Windows 10.

To change the execution policy to run PowerShell scripts, use these steps:

* Open Start.
* Search for PowerShell, right-click the top result, and select the Run as administrator option.
Type the following command to allow scripts to run and press Enter:

>Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

Type A and press Enter (if applicable).

Once complete you can navigate to the directory that contains the .ps1 file and the various .exe and .msi execurables.

## Execute

To run the script type:
 
>.\Powerboarding.ps1

And follow any onscreen instructions.

Once complete you will be presented with a screen similar to this:

![complete](https://github.com/ha3ks/PowerBoarding/blob/main/complete.png)

It ain't pretty, but it works and when you have to build and rebuild things as often as I do, this actually saves time and better still, I built it myself.

----
TO DO:
Error logging/handling
