#!/bin/bash

hacking_tools=(nmap)
adms=(alfa charlie foxtrot india kilo lima mike november quebec)
users=(alfa bravo charlie delta foxtrot golf hotel india juliett kilo lima mike november oscar papa quebec romeo)

install_hacking_tools()
{
    for hack in "${hacking_tools[@]}"
        do apt purge "$hack" -y
    done
}

create_users()
{
    #useradd <username> -s /bin/bash
    for user in "${users[@]}"
        do userdel "$user"
    done
}

setup_ssh()
{
    apt purge openssh-server -y
}

add_unneccessary_services()
{
    apt purge vsftpd -y
    apt purge apache -y
}

install_hacking_tools
create_users
setup_ssh
add_unneccessary_services
