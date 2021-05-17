# Login Shell

function __init__ {
    sudo apt-get update
    sudo apt-get upgrade

    sudo apt-get install -y \
        git \
        vim
}

function config_git {
    git config --global user.email "onsoim@gmail.com"
    git config --global user.name  "onsoim"
}

function install_python36 {
    # init to install python3
    sudo apt-get install python3
    sudo apt-get update
    sudo apt-get upgrade python3

    # install python3.6
    sudo add-apt-repository ppa:fkrull/ppa -y
    sudo apt-get update
    sudo apt-get install -y python3.6

    # python3 version settings
    sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.5 1
    sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 2
    # sudo update-alternatives --config python3
}