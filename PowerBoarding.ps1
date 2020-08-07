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

    Welcome to PowerBoarding

    To Continue press y
    To exit and close press x
"
    $menuresponse = read-host [Enter Selection]
    Switch ($menuresponse) {
        "y" {sub-menu1}
        "x" {Exit}
    }
}
    until (1 -contains $menuresponse) 
}

function sub-menu1 ## Test menu, this will get updated for now it is testing functionality
{
    do
        {
        Clear
    Write-Host "
    Do you already have your installer file or zip?
        
    y = yes
    n = no
    x = Return to Main Menu
    "
    $menuresponse = read-host [Enter Selection]
    Switch ($menuresponse) {
        "Y" {Option-1}
        "N" {Option-2}
        "X" {Main-Menu}
        }
    }
    until (1..3 -contains $menuresponse) 
}
function Option-1 ## Next menu Idea.
{
    do
    {
        Clear
        Write-Host "
        Please Select, something
        
        y = yes
        n = no
        x = Return to Main Menu
        " 
        $menuresponse = read-host [Enter Selection]
        Switch ($menuresponse) {
            "Y" {O1Option-1}
            "N" {01Option-2}
            "X" {Main-Menu}
        }
    }
    until (1..3 -contains $menuresponse) 
} 

function Option-2
{
    do
    {
        Clear
        Write-Host "" ## I have kept the coding as multiple write hosts so I can leave notes on this particular sub menu.
        Write-Host "Would you like to download this file now?"
        Write-Host ""
        Write-Host "y = yes" ## Ideally this will shoot off another menu and go to a company server to grab the file.
        Write-Host "n = no (Go Back)" ## Returns to sub-menu1 asking if you have the installer.
        Write-Host "x = Return to Main Menu" ## As stated
        Write-Host ""
        $menuresponse = read-host [Enter Selection]
        Switch ($menuresponse) {
            "Y" {02Option-1}
            "N" {sub-menu1}
            "X" {Main-Menu}
        }
    }
    until (1..3 -contains $menuresponse) 
} 

##function 02Option-1
##{
##    Do Magic and get files direct or a compressed zip, probably going to go with zip and durinf the install it will self extract to somewhere (/temp)? and then remove the artifacts.
##}
Main-Menu