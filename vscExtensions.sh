#!/usr/bin/env bash

EXTENSIONS=(
    "AdamCaviness.theme-monokai-dark-soda"
    "vscoss.vscode-ansible"
    "sharat.vscode-brewfile"
    "wholroyd.jinja"
    "sysoev.language-stylus"
    "dawhite.mustache"
    "shanoor.vscode-nginx"
    "robinbentley.sass-indented"
    "marcostazi.vs-code-vagrantfile"
    "octref.vetur"
    "xabikos.javascriptsnippets"
    "dbaeumer.vscode-eslint"
    "esbenp.prettier-vscode"
    "eg2.tslint"
    "formulahendry.auto-close-tag"
    "formulahendry.auto-rename-tag"
    "NathanRidley.autotrim"
    "mitchdenny.ecdc"
    "samverschueren.final-newline"
    "wix.vscode-import-cost"
    "shd101wyy.markdown-preview-enhanced"
    "eg2.vscode-npm-script"
    "christian-kohler.npm-intellisense"
    "christian-kohler.path-intellisense"
    "mrmlnc.vscode-scss"
    "mrmlnc.vscode-attrs-sorter"
    "wayou.vscode-todo-highlight"
    "gruntfuggly.todo-tree"
    "mike-co.import-sorter"
    "dariofuzinato.vue-peek"
    "codezombiech.gitignore"
    "eamodio.gitlens"
    "msjsdiag.debugger-for-chrome"
    "orta.vscode-jest"
    "firsttris.vscode-jest-runner"
    "compulim.vscode-clock"
    "editorconfig.editorconfig"
    "ms-vsliveshare.vsliveshare"
    "shyykoserhiy.vscode-spotify"
)

for i in "${EXTENSIONS[@]}"
do
   : 
   code --install-extension $i
done