# Rust
export RUSTUP_HOME=$SCRATCH
export CARGO_HOME=$SCRATCH
. "/scratch/e1000/rmeli/env"

# Node.js
export PATH=$SCRATCH/_software/node-v18.14.0-linux-x64/bin/:$PATH

# Spack
source $SCRATCH/spack/share/spack/setup-env.sh
export PATH=$SCRATCH/git/stackinator/bin/:$PATH

# Conda
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/scratch/e1000/rmeli/mambaforge/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/scratch/e1000/rmeli/mambaforge/etc/profile.d/conda.sh" ]; then
        . "/scratch/e1000/rmeli/mambaforge/etc/profile.d/conda.sh"
    else
        export PATH="/scratch/e1000/rmeli/mambaforge/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/scratch/e1000/rmeli/mambaforge/etc/profile.d/mamba.sh" ]; then
    . "/scratch/e1000/rmeli/mambaforge/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

# Starship
export STARSHIP_CONFIG=$SCRATCH/git/dotfiles/starship.toml
eval "$(starship init bash)"
