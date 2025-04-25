#!/usr/bin/env bash

EXTENSIONS=(
    # Theme
    # Languages
    "antfu.slidev"
    "sysoev.language-stylus"
    "marlon407.code-groovy"
    "raynigon.nginx-formatter"
    "redhat.vscode-xml"
    "redhat.vscode-yaml"
    "mrmlnc.vscode-scss"
    "ahmadalli.vscode-nginx-conf"
    "unifiedjs.vscode-mdx"
    # Docker
    "docker.docker"
    "ms-azuretools.vscode-docker"
    # JavaScript
    "octref.vetur"
    "vue.volar"
    "vitest.explorer"
    # Linting
    "esbenp.prettier-vscode"
    "dbaeumer.vscode-eslint"
    "davidanson.vscode-markdownlint"
    # Code Utility
    "NathanRidley.autotrim"
    "mitchdenny.ecdc"
    "samverschueren.final-newline"
    "mike-co.import-sorter"
    "wix.vscode-import-cost"
    "codeque.codeque"
    "github.copilot"
    "github.copilot-chat"
    "mechatroner.rainbow-csv"
    "meganrogge.template-string-converter"
    "moshfeu.compare-folders"
    "nidu.copy-json-path"
    "pnp.polacode"
    "tyriar.lorem-ipsum"
    "unional.vscode-sort-package-json"
    "yoavbls.pretty-ts-errors"
    "yzane.markdown-pdf"
    # Editor
    "shd101wyy.markdown-preview-enhanced"
    "christian-kohler.npm-intellisense"
    "christian-kohler.path-intellisense"
    "gruntfuggly.todo-tree"
    "dariofuzinato.vue-peek"
    "codezombiech.gitignore"
    "eamodio.gitlens"
    "editorconfig.editorconfig"
    "ms-vsliveshare.vsliveshare"
    "streetsidesoftware.code-spell-checker"
)

for i in "${EXTENSIONS[@]}"
do
   : 
   code --install-extension $i
done
