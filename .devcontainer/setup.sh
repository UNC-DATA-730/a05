#!/usr/bin/env bash
set -euxo pipefail

df -h / /workspaces

# Put pixi's cache on the same filesystem as the .pixi env (both under
# /workspaces) so it can hardlink packages into place instead of copying them.
export PIXI_CACHE_DIR=/workspaces/.pixi-cache

# Install pixi via its official script. The binary lands in ~/.pixi/bin; add it
# to PATH for this non-interactive script (the installer's .bashrc edit only
# affects future interactive shells).
curl -fsSL https://pixi.sh/install.sh | bash
export PATH="$HOME/.pixi/bin:$PATH"

# The devcontainer's python feature (installJupyterlab: true) provides the
# JupyterLab frontend. pixi provides the Python and R kernels (the scientific
# stack). We install the default environment only (not the `lab` env, whose
# JupyterLab the feature already supplies). Plain `pixi install` (no --locked)
# reuses the committed lock when it matches the manifest, but re-solves instead
# of hard-failing when the codespace's pixi version differs from the one that
# wrote the lock.
pixi install -e default

# Register both kernels into the user's Jupyter. The kernelspecs carry absolute
# paths into .pixi/envs/default, so the image's JupyterLab launches them directly
# (no PATH activation or shell-hook needed).
pixi run python -m ipykernel install --user --name python3 --display-name "Python 3 (pixi)"
pixi run R -e 'IRkernel::installspec(user = TRUE, displayname = "R (pixi)")'
