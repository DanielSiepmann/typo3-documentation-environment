# TYPO3 documentation rendering environment setup

## About

Simple bash script to setup an environment to work with TYPO3 documentation.
Will setup Sphinx and all necessary dependencies for rendering.

Will follow http://mbless.de/blog/2015/01/26/sphinx-doc-installation-steps.html

## State

Currently tested on OS X.

## Tips & Tricks

### Speedup build time

To speed up rendering, you can modify the sphinx build options inside
`_make/Makefile`.
Remove the following options, to only render updated files: `-a -E`
For further information, checkout the official documentation:
http://www.sphinx-doc.org/en/stable/invocation.html

NOTE: Keep in mind to not commit the changes to `Makefile`.
