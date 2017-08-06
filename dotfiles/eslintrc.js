// Per project setup:
//   yarn add --dev prettier eslint eslint-plugin-{react,prettier} eslint-config-prettier
var OFF = 0, WARN = 1, ERROR = 2;
module.exports = {
  'parserOptions': {
    'ecmaVersion': 6,
    'sourceType': 'module',
    'ecmaFeatures': {
      'jsx': true
      'experimentalObjectRestSpread': true
    }
  },
  'env': {
    'browser': true,
    'node': true,
    'es6': true
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
