// Example `tailwind.config.js` file
const colors = require('tailwindcss/colors')

module.exports = {
  theme: {
    colors: {
      black: colors.black,
      gray: colors.coolGray,
      blue: colors.lightBlue,
      red: colors.rose,
      pink: colors.fuchsia,
      white: colors.white
    },
    fontFamily: {
      sans: ['Graphik', 'sans-serif'],
      serif: ['Merriweather', 'serif'],
    },
    extend: {
      spacing: {
        '128': '32rem',
        '144': '36rem',
      },
      borderRadius: {
        '4xl': '2rem',
      }
    }
  },
  variants: {
    extend: {
      borderColor: ['focus-visible'],
      opacity: ['disabled'],
    }
  },
  plugins: [
    require('@tailwindcss/forms')
  ],
}
