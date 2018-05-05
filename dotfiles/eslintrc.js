var OFF = 0,
  WARN = 1,
  ERROR = 2;
module.exports = {
  parser: 'babel-eslint',
  parserOptions: {
    ecmaVersion: 2018,
    sourceType: 'module',
    ecmaFeatures: {
      jsx: true
    }
  },
  env: {
    browser: true,
    node: true,
    jest: true
  },
  plugins: ['prettier'],
  extends: ['airbnb', 'prettier'],
  rules: {
    // Allow console logs.
    'no-console': OFF,

    // Allow .js and .jsx files to contain JSX.
    'react/jsx-filename-extension': [WARN, { extensions: ['.js', '.jsx'] }]
  }
};
