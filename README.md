# pyproject-base

follow [Creating a repository from a template](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template)

_GitHub CLI snippets coming soon_

#

rename folder `python/pyproject_base/` to `python/<new-project-name>`
#
in `pyproject.toml`
 - amend occurencies of `pyproject_base`
 - amend metadata
    - version of `requires-python`
    - `authors`
    - `classifiers`
 - verify LSPs and linters settings
#
amend 
#
verify python version in `Makefile`
#
amend `README.md` and `LICENSE`
#

# References

[pyproject dynamic optional-dependencies](https://stackoverflow.com/a/76771725/15446311)

[pip-tools constraint optional dependencies](https://github.com/jazzband/pip-tools/issues/1020)


