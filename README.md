# sphinx-pages
github pages based on sphinx


#### project notes

##### install (apt-get & pip precondition)

```
apt-get install python-sphinx #sudo apt-get install python-sphinx
pip install sphinx_rtd_theme #sudo -H pip install sphinx_rtd_theme
#optional
pip install sphinx-autobuild #sudo -H pip install sphinx-autobuild
```

##### project setup

```
sphinx-quickstart # followed all default but set names and author
# conf.py edits as described in https://github.com/rtfd/sphinx_rtd_theme#via-package
# a sample index.rst file
# .gitignore from https://github.com/sphinx-doc/sphinx/blob/master/.gitignore
# generate docs locally
sphinx-autobuild . _build --open-browser
```
