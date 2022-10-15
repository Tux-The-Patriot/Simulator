#!/bin/bash

hacking_tools=(nmap)
adms=(alfa charlie foxtrot india kilo lima mike november quebec)
users=(alfa bravo charlie delta foxtrot golf hotel india juliett kilo lima mike november oscar papa quebec romeo)

install_hacking_tools()
{
    for hack in "${hacking_tools[@]}"
        do apt install "$hack" -y
    done
}

create_users()
{
    #useradd <username> -s /bin/bash
    for user in "${users[@]}"
        do useradd -m -s /bin/bash "$user"
    done
}

create_sudoers()
{
    for ad in "${adms[@]}"
        do adduser "$ad" sudo
    done
}

setup_ssh()
{
    apt install openssh-server -y
}

add_unneccessary_services()
{
    apt install vsftpd -y
    apt install apache -y
}

install_hacking_tools
create_users
create_sudoers
setup_ssh
add_unneccessary_services
