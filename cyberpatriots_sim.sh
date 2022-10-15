menu()
{
    echo "Hello! This is script that will simulate a Cyber Patriots Ubuntu 20 Scenario. Please select an option:"
    echo "This script was made by Rohan Bhargava"

    echo "Menu:"
    echo "1. Setup scenario - Will run a script which makes the computer 'unscecure'. You then try fixing the faults."
    echo "2. Uninstall scenario - Will remove all the settings, user accounts and programs installed by the setup script. This feature is experimental may run into errors."
    echo "3. Check forensics questions - This option is not setup right now but will be coming soon."
    echo "4. Exit"
}

if [ $EUID -ne 0 ];then
    echo 'Run this with "sudo bash cyberpatriots_sim.sh"'
    exit
fi

menu

while true
do
    echo "Enter in the number of the menu of the item you want:"
    read choice

    case $choice in

    1)
        bash setup_scene.sh
        clear
        echo "All done! Scenario is setup! Best of luck!"
        exit
    ;;

    2)
        bash uninstall_scene.sh
        clear
        echo "All done! Scenaro is removed"
        exit
    ;;

    3)
        echo "Feature coming soon! Press enter to continue."
        read
        clear
        menu
    ;;

    4)
        exit
    ;;
    
    *)
        echo "Incorrect option. Please enter in a number that is shown in the menu. Press enter to continue"
        read
        clear
        menu
    ;;

    esac

done
