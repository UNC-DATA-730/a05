# DATA 730 assignment #6 repository

> :warning: **Do not clone this repository directly.**
> Use the 🍴 fork link on the assignment page in Canvas, then work in your own copy.

Full step by step instructions, including how to submit, are on Canvas. See the
**📋 Working on assignments** page in the Toolbox module of our course.

## Quick version

1. Fork this repository from the link on the Canvas assignment page.
2. From **your** copy on GitHub, click **Code → Codespaces → Create codespace on main**.
   The first launch takes a few minutes while it installs R and the course packages.
3. Open the codespace in JupyterLab: from your list of codespaces at
   [github.com/codespaces](https://github.com/codespaces), open the **...** menu next to
   the codespace and choose **Open in JupyterLab**.
4. Open [`assignment6.ipynb`](assignment6.ipynb) and pick the **R (pixi)** kernel.
5. Commit and push your work back to your copy. **Pushing is what turns it in.**
6. Paste the URL of your copy of the repository into the Website URL box on the Canvas
   assignment page.

Everything you need (R, tidyverse, tidymodels, palmerpenguins, scikit-learn and the rest)
is already installed in the codespace. There is nothing to set up on your own machine.

## Working locally instead

If you would rather work on your own computer, install [pixi](https://pixi.sh) and run:

```bash
pixi install
pixi run -e lab jupyter lab
```

## Codespaces will stop on their own

A codespace stops after 30 minutes of inactivity. Saved files are still there when you
start it again, but **anything you have not committed and pushed stays inside that
codespace**, and GitHub deletes codespaces that go unused for 30 days. Push your work at
the end of every session.
