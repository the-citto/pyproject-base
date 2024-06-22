# pyproject-base

1.
create the new repo `https://github.com/<your-account>/<new-project-name>` 
#
2.
clone this repo locally
```
    git clone --depth 1 https://github.com/the-citto/pyproject-base <new-project-name>
```
#
3. 
```
    cd <new-project-name>
    rm -rf .git
    git init
    git remote add origin https://github.com/<your-account>/<new-repo-name>
```
#
4. 

rename folder `python/pyproject_base/` to `python/<new-project-name>`

amend `pyproject_base` in `pyproject.toml`

verify python version in `pyproject.toml` and `Makefile`

#

amend as needed `README.md` and `LICENSE`

#

_**TODO**: in Makefile, check OS to use py (Windows launcher) or pyenv (Linux) automatically - this will pick default python **version**_

