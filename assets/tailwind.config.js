const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  mode: "jit",
  purge: [
    '../lib/temple_example_web/templates/**/*.html.exs',
    '../lib/temple_example_web/templates/**/*.html.eex',
    '../lib/temple_example_web/components/**/*.ex'
  ],
  darkMode: 'class', // or 'media' or 'class'
  theme: {
    extend: {
      colors: {
        grey: defaultTheme.colors.gray
      },
      fontFamily: {
        sans: ["Inter", ...defaultTheme.fontFamily.sans]
      },
    },
  },
  variants: {
    extend: {},
  },
  plugins: [require("@tailwindcss/aspect-ratio")],
}
