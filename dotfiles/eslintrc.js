var OFF = 0, WARN = 1, ERROR = 2;
module.exports = {
  'parserOptions': {
    'ecmaVersion': 6,
    'sourceType': 'module',
    'ecmaFeatures': {
      'jsx': true
    }
  },
  'env': {
    'browser': true,
    'node': true,
    'es6': true
  },
  'plugins': [
    // https://github.com/yannickcr/eslint-plugin-react
    'react',
    // https://github.com/prettier/eslint-config-prettier
    'prettier',
  ],
  'extends': [
    'eslint:recommended',
    'plugin:react/recommended'
  ],
  'rules': {
    // Use single quotes.
    'quotes': [WARN, 'single', {
      'avoidEscape': true,
      'allowTemplateLiterals': true
    }],
    // Enforce spacing before and after comma.
    'comma-spacing': [WARN, {
      'before': false,
      'after': true
    }],
    // This option sets a specific tab width for your code.
    'indent': [WARN, 2],
    // Disallow mixed spaces and tabs for indentation.
    'no-mixed-spaces-and-tabs': WARN,
    // Disallow trailing whitespace at the end of lines.
    'no-trailing-spaces': WARN,
    // Enforce spacing before and after semicolons.
    'semi-spacing': [WARN, {
      'before': false,
      'after': true
    }],
    // Require use of semicolons instead of ASI.
    'semi': [WARN, 'always'],
    // Prefer const if possible.
    'prefer-const': WARN,
    // Allow console logs.
    'no-console': OFF
  }
}
