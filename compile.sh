#!/bin/sh
pdflatex thesis.tex
pdflatex thesis.tex
bibtex thesis
bibtex studies/splu2018/naaclhlt2018
bibtex studies/splu2019/naacl2019_camera_ready
bibtex studies/sc2020/functional-geometric-grounding
bibtex studies/sivl2018/W42P13
bibtex studies/inlg2019/inlgl2019_camera_ready
bibtex studies/iwcs2017/learn_to_compose_iwcs
bibtex studies/stylevar2017/adjs
pdflatex thesis.tex
pdflatex thesis.tex
pdflatex "\def\isprintversion{1} \input{thesis.tex}"
cp thesis.pdf thesis_print.pdf
pdflatex thesis.tex
cp thesis.pdf thesis_digital.pdf
echo "report of undefined citations:"
echo "thesis.aux"
checkcites --undefined thesis | grep -oE -e "Undefined references in your TeX document: ([0-9]+)" | perl -pe 's/.*([0-9]+)/$1/'
echo "studies/splu2018/naaclhlt2018.aux"
checkcites --undefined studies/splu2018/naaclhlt2018 | grep -oE -e "Undefined references in your TeX document: ([0-9]+)" | perl -pe 's/.*([0-9]+)/$1/'
echo "studies/splu2019/naacl2019_camera_ready.aux"
checkcites --undefined studies/splu2019/naacl2019_camera_ready | grep -oE -e "Undefined references in your TeX document: ([0-9]+)" | perl -pe 's/.*([0-9]+)/$1/'
echo "studies/sc2020/functional-geometric-grounding.aux"
checkcites --undefined studies/sc2020/functional-geometric-grounding | grep -oE -e "Undefined references in your TeX document: ([0-9]+)" | perl -pe 's/.*([0-9]+)/$1/'
echo "studies/sivl2018/W42P13.aux"
checkcites --undefined studies/sivl2018/W42P13 | grep -oE -e "Undefined references in your TeX document: ([0-9]+)" | perl -pe 's/.*([0-9]+)/$1/'
echo "studies/inlg2019/inlgl2019_camera_ready.aux"
checkcites --undefined studies/inlg2019/inlgl2019_camera_ready | grep -oE -e "Undefined references in your TeX document: ([0-9]+)" | perl -pe 's/.*([0-9]+)/$1/'
echo "studies/iwcs2017/learn_to_compose_iwcs.aux"
checkcites --undefined studies/iwcs2017/learn_to_compose_iwcs | grep -oE -e "Undefined references in your TeX document: ([0-9]+)" | perl -pe 's/.*([0-9]+)/$1/'
echo "studies/stylevar2017/adjs.aux"
checkcites --undefined studies/stylevar2017/adjs | grep -oE -e "Undefined references in your TeX document: ([0-9]+)" | perl -pe 's/.*([0-9]+)/$1/'
