function Main-Menu 
{
    do
    {
        Clear
        Write-Host "
 _______  _______  _     _  _______  ______    _______  _______  _______  ______    ______   ___   __    _  _______ 
|       ||       || | _ | ||       ||    _ |  |  _    ||       ||   _   ||    _ |  |      | |   | |  |  | ||       |
|    _  ||   _   || || || ||    ___||   | ||  | |_|   ||   _   ||  |_|  ||   | ||  |  _    ||   | |   |_| ||    ___|
|   |_| ||  | |  ||       ||   |___ |   |_||_ |       ||  | |  ||       ||   |_||_ | | |   ||   | |       ||   | __ 
|    ___||  |_|  ||       ||    ___||    __  ||  _   | |  |_|  ||       ||    __  || |_|   ||   | |  _    ||   ||  |
|   |    |       ||   _   ||   |___ |   |  | || |_|   ||       ||   _   ||   |  | ||       ||   | | | |   ||   |_| |
|___|    |_______||__| |__||_______||___|  |_||_______||_______||__| |__||___|  |_||______| |___| |_|  |__||_______|
"
        Write-Host "- - - - - -"
        Write-Host "Welcome to PowerBoarding"
        Write-Host "- - - - - -"
        Write-Host "To Continue press y"
        Write-Host "To exit and close press x"
        Write-Host ""
        $menuresponse = read-host [Enter Selection]
        Switch ($menuresponse) {
            "y" {sub-menu1}
            "x" {Exit}
        }
    }
    until (1 -contains $menuresponse) 
}

function sub-menu1 
{
    do
    {
        Clear
        Write-Host ""
        Write-Host "Do you already have your installer file or zip?"
        Write-Host ""
        Write-Host "y = yes"
        Write-Host "n = no"
        Write-Host "x = Return to Main Menu"
        Write-Host ""
        $menuresponse = read-host [Enter Selection]
        Switch ($menuresponse) {
            "Y" {Option-1}
            "N" {Option-2}
            "X" {Main-Menu}
        }
    }
    until (1..3 -contains $menuresponse) 
}

Main-Menu