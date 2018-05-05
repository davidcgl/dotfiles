#!/bin/zsh

# Script to setup eslint and prettier in a project.

# Install eslint and eslint-config-airbnb, along with peer dependencies.
# https://www.npmjs.com/package/eslint-config-airbnb
PKG=eslint-config-airbnb
npm info "$PKG@latest" peerDependencies --json \
  | command sed 's/[\{\},]//g ; s/: /@/g' \
  | xargs yarn add --dev "$PKG@latest"

# Install babel-eslint because we use it in eslintrc.js
yarn add --dev babel-eslint

# Install prettier
yarn add --dev prettier eslint-plugin-prettier eslint-config-prettier

# Copy ~/.eslintrc.js into the project
cp ${HOME}/.eslintrc.js .

# Copy ~/.prettierrc.js into the project
cp ${HOME}/.prettierrc.js .
