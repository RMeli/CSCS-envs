#!/bin/bash

# Spack
source $HOME/spack/share/spack/setup-env.sh
export PATH=$HOME/git/stackinator/bin/:$PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/users/rmeli/mambaforge/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/users/rmeli/mambaforge/etc/profile.d/conda.sh" ]; then
        . "/users/rmeli/mambaforge/etc/profile.d/conda.sh"
    else
        export PATH="/users/rmeli/mambaforge/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/users/rmeli/mambaforge/etc/profile.d/mamba.sh" ]; then
    . "/users/rmeli/mambaforge/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

# configure the user-environment (uenv) utility
source /users/rmeli/.local/bin/activate-uenv
