#!/usr/bin/env bash

EXTENSIONS=(
    # Theme
    "AdamCaviness.theme-monokai-dark-soda"
    "thenikso.github-plus-theme"
    # Languages
    "vscoss.vscode-ansible"
    "sharat.vscode-brewfile"
    "wholroyd.jinja"
    "sysoev.language-stylus"
    "dawhite.mustache"
    "shanoor.vscode-nginx"
    "syler.sass-indented"
    "marcostazi.vs-code-vagrantfile"
    # JavaScript
    "octref.vetur"
    "xabikos.javascriptsnippets"
    # Linting
    "esbenp.prettier-vscode"
    "dbaeumer.vscode-eslint"
    "eg2.tslint"
    "tombonnike.vscode-status-bar-format-toggle"
    # Code Utility
    "formulahendry.auto-close-tag"
    "formulahendry.auto-rename-tag"
    "NathanRidley.autotrim"
    "mitchdenny.ecdc"
    "samverschueren.final-newline"
    "mike-co.import-sorter"
    "wix.vscode-import-cost"
    "mrmlnc.vscode-scss"
    "mrmlnc.vscode-attrs-sorter"
    # Editor
    "shd101wyy.markdown-preview-enhanced"
    "eg2.vscode-npm-script"
    "christian-kohler.npm-intellisense"
    "christian-kohler.path-intellisense"
    "wayou.vscode-todo-highlight"
    "gruntfuggly.todo-tree"
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
    "alefragnani.bookmarks"
    "streetsidesoftware.code-spell-checker"
    "cssho.vscode-svgviewer"
    "visualstudioexptteam.vscodeintellicode"
)

for i in "${EXTENSIONS[@]}"
do
   : 
   code --install-extension $i
done