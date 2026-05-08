# `DATA 730 assignment repository`

<!--toc:start-->
- [`DATA 730 assignment repository`](#data-730-assignment-repository)
  - [Instructions](#instructions)
    - [Working in a GitHub Codespace (recommended)](#working-in-a-github-codespace-recommended)
    - [Working locally with conda (fallback)](#working-locally-with-conda-fallback)
    - [Troubleshooting](#troubleshooting)
<!--toc:end-->

> :warning: **Do not clone this repository directly!**
> Use the invite link instead: <https://github.com/UNC-DATA-730/assignments>
>
## Instructions

Complete the assignment [Jupyter notebook 📓](assignment6.ipynb) and
push your completed copy to your assignment repository.

### Working in a GitHub Codespace (recommended)

1. From your personal assignment repository on GitHub, click
   **Code → Codespaces → Create codespace on main**.
2. Wait for the codespace to finish starting. On first launch it will
   resolve the environment with [pixi](https://pixi.sh); expect this to
   take a few minutes.
3. JupyterLab will open automatically in a new browser tab (via the
   forwarded port 8888). **Use that tab** — do not click the GitHub
   "Open in JupyterLab" button; it uses a different Jupyter server
   that cannot see this repository's R kernel.
4. Open `assignment6.ipynb` and, when prompted, choose the **R** kernel.

Everything you need (R, tidyverse, palmerpenguins, tidymodels, scikit-learn,
etc.) is pre-installed in the codespace.

### Working locally with conda (fallback)

If you prefer to work on your own machine with conda:

```bash
# Make sure your prompt is located in your assignment repository directory
conda env update --name data730 --file environment.yml
```

Then launch JupyterLab as you normally would from your `data730` environment.

### Troubleshooting

- **JupyterLab didn't open automatically.** Open a terminal in the codespace
  and run `pixi run lab`. The forwarded port (8888) should then open. If you
  already have a tab from GitHub's "Open in JupyterLab" button, close it —
  it's a different server without the R kernel.
- **The R kernel is not listed.** Run `pixi run jupyter kernelspec list` in
  a codespace terminal to confirm `ir` is registered. If it is missing, run
  `pixi run Rscript -e 'IRkernel::installspec(user = FALSE)'` and reload.
- **Environment install failed.** Try `pixi install` again from a terminal.
  If that also fails, report the error in the class channel.
