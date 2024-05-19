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

**rename folder** 

    python/pyproject_base/
to

    python/<new-project-name>`

**amend project name and details**

**also verify python version in** `pyproject.toml`

    pyproject.toml
    python/<new-project-name>

**amend as needed**

    README.md
    LICENSE

**verify python version in**

    Makefile

_TODO: in Makefile, check OS to use py (Windows launcher) or pyenv (Linux)_
<br>
      _this is currently manual but the python **version** will still need verifying_

