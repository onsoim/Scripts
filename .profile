# Login Shell

if [ -n "$BASH_VERSION" ]; then
    if [ -f ".bashrc" ]; then
        . ".bashrc"
    fi
fi

# REF
## https://jongmin92.github.io/2016/12/13/Linux%20&%20Ubuntu/bashrc-bash_profile/