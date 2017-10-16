// Per project setup:
//   yarn add --dev \
//      babel-eslint prettier eslint eslint-plugin-{react,prettier} eslint-config-prettier
var OFF = 0, WARN = 1, ERROR = 2;
module.exports = {
  'parser': 'babel-eslint',
  'parserOptions': {
    'ecmaVersion': 2017,
    'sourceType': 'module',
    'ecmaFeatures': {
      'jsx': true,
      'experimentalObjectRestSpread': true
    }
  },
  'env': {
    'browser': true,
    'node': true,
    'es6': true,
    'jest': true
  },
  'plugins': [
    'react',
    'prettier',
  ],
  'extends': [
    'eslint:recommended',
    'plugin:react/recommended'
  ],
  'rules': {
    // Allow console logs.
    'no-console': OFF
  }
}