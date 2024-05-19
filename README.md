# pyproject-base

Python projects' base structure with files.

    git clone --depth 1 https://github.com/the-citto/pyproject-base <new-project-name>
(get only the last commit with `--depth 1`)

or, for bare repos (in folders)
    
    git clone --depth 1 file://<full>/<path>/<bare-repo-name>.git <new-project-name>

(if wanted, double check with `git remote` for `origin`)

detach the remote repo

    cd <new-project-name>
    git remote remove origin

add the remote repo for the new project

    git remote add <path-to-new-remote-repo>

with `<path-to-new-remote-repo>` being the empty repo for the new python project

#

**rename folder** `python/pyproject_base/` to `python/<new-project-name>`

**amend project name in** `python/<new-project-name>/__init__.py`

**amend project name and python _version_ in** `pyproject.toml`

**amend as needed** `README.md` **and** `LICENSE`

**amend python version in** `Makefile`

_**TODO**: in Makefile, check OS to use py (Windows launcher) or pyenv (Linux) automatically - python **version** will still need manual intervention_

