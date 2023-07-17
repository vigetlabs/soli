const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    colors: {
      transparent: 'transparent',
      current: 'currentColor',
      white: '#FFFFFF',
      black: '#000000',
      form: {
        primary: '#031830',
        secondary: '#97A0AC'
      },
      lavender: {
        primary: '#D195FE',
        hover: '#BC86E5',
        active: '#A777CB',
        border: '#7D5998'
      },
      periwinkle: {
        primary: '#6B8FFC',
        hover: '#5274DD',
        active: '#4461B9',
        border: '#293A6F'
      }
    },
    extend: {
      fontFamily: {
        headline: ['Niramit', 'sans-serif'],
        body: ['Mulish', 'sans-serif'],
        sans: ['Mulish', 'sans-serif']
      }
    }
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries')
  ]
}
