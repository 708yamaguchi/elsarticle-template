# elsarticle-template

Latex template for Elsevier article

based on https://www.elsevier.com/authors/author-schemas/latex-instructions

### 1. Prerequisities

```bash
# only for ubuntu 12.04
$ sudo apt-add-repository ppa:texlive-backports/ppa
$ sudo apt-get update

# Even if you can already make https://github.com/jsk-report-template/ieee-report, following is additionally required
$ sudo apt-get install texlive-humanities
```

### 2. Edit LaTeX files

### 3. Make pdf

```bash
$ make
```
### Optional. cleaning

```bash
$ make clean
# or
$ make wipe
```

### Note. Contents of this repo

`elsarticle` directory comes from https://ctan.org/tex-archive/macros/latex/contrib/elsarticle

`Makefile` and `latexmkrc` are modified from original ones in  https://github.com/jsk-report-template/ieee-report

Other files come from [sample manuscript](https://www.elsevier.com/__data/assets/file/0007/56842/elsarticle-template.zip) on https://www.elsevier.com/authors/author-schemas/latex-instructions
