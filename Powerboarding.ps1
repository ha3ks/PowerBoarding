	############################################################################"                      
	#                                  |      _   _        _____ _             #"
	# Title        : PowerBoarding     |     | | | |      |____ | |            #"
	# Author       : Ha3ks             |     | |_| | __ _     / / | _____      #"
	# Version      : 1.0               |     |  _  |/ _' |    \ \ |/ / __|     #"
	# Category     : Tooling           |     | | | | (_| |.___/ /   <\__ \     #"
	# Target       : Windows 7,10,11   |     \_| |_/\__,_|\____/|_|\_\___/     #"
	#__________________________________|_______________________________________#"
	#                                                                          #"  
	#  github.com/ha3ks                                                        #"  
	#  twitter.com/ha3ks                                                       #"   
	#  instagram.com/ha3ks                                                     #"  
	#  youtube.com/@ha3ks                                                      #"   
	#                                                                          #"  
	############################################################################"
	
function Install-Software {
    
	# Banner	
	Write-Host "______                      _                         _ _             "
	Write-Host "| ___ \                    | |                       | (_)            "
	Write-Host "| |_/ /____      _____ _ __| |__   ___   __ _ _ __ __| |_ _ __   __ _ "
	Write-Host "|  __/ _ \ \ /\ / / _ \ '__| '_ \ / _ \ / _' | '__/ _' | | '_ \ / _' |"
	Write-Host "| | | (_) \ V  V /  __/ |  | |_) | (_) | (_| | | | (_| | | | | | (_| |"
	Write-Host "\_|  \___/ \_/\_/ \___|_|  |_.__/ \___/ \__,_|_|  \__,_|_|_| |_|\__, |"
	Write-Host "                                                                 __/ |"
	Write-Host "                                                                |___/ "
	Write-Host "______________________________________________________________________"
	Write-Host "                                                                      "  
	Write-Host "     Welcome to PowerBoarding.                                        "  
	Write-Host "     Mass install your .exe and .msi files with ease.                 "   
	Write-Host "                                                                      "  

    # Get the current directory
    $scriptDir = Get-Location

    # Get a list of all .exe and .msi files in the directory
    $installFiles = Get-ChildItem -Path $scriptDir | Where-Object { $_.Extension -eq ".exe" -or $_.Extension -eq ".msi" } | ForEach-Object { $_.FullName }

    # Display menu options
    Write-Host "Menu:"
    Write-Host "1. Install all files"
    Write-Host "2. Exit"

    # Get user's choice
    $choice = Read-Host "Enter your choice (1/2)"

    # Process user's choice
    if ($choice -eq '1') {
        Write-Host "Installing all files:"
        
        # Loop through each install file and install it
        foreach ($file in $installFiles) {
            Write-Host "Installing $($file)"
            
            # Check the file extension and install using appropriate method
            if ($file -match '\.exe$') {
                $installArgs = '/silent /norestart'
                $installerName = $file
            }
            elseif ($file -match '\.msi$') {
                $installArgs = "/i `"$($file)`" /qn /norestart"
                $installerName = 'msiexec.exe'
            }
            else {
                Write-Host "Unsupported file format: $($file)"
                continue
            }
            
            # Start the installation process
            $installProcess = Start-Process -FilePath $installerName -ArgumentList $installArgs -PassThru
            
            Write-Host "Installing..." -NoNewline
            
            # Initialize counter for dots
            $dotCount = 0
            
            # Loop until the installation process completes
            while (-not $installProcess.HasExited) {
                if ($dotCount -lt 20) {
                    Write-Host "." -NoNewline
                    $dotCount++
                } else {
                    Write-Host "`b." -NoNewline
                    Start-Sleep -Milliseconds 500
                }
            }
            
            # Determine if the installation was successful
            if ($installProcess.ExitCode -eq 0) {
                Write-Host " Install Complete"
            } else {
                Write-Host " Install Failed"
            }
        }
        
        Write-Host "All installations completed."
    }
    elseif ($choice -eq '2') {
        Write-Host "Exiting script."
    }
    else {
        Write-Host "Invalid choice. Exiting script."
    }
}

# Call the function to start the installation process
Install-Software