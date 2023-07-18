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
      alert: '#E73943',
      form: {
        primary: '#031830',
        secondary: '#97A0AC'
      },
      violet: {
        light: {
          primary: '#FAF4FF',
          hover: '#F8EFFF',
          active: '#F1DEFF'
        },
        primary: '#D195FE',
        hover: '#BE76F4',
        active: '#9452C6',
        dark: {
          primary: '#6E349A',
          hover: '#402455',
          active: '#3D155A'
        },
        border: '#2B0845'
      },
      periwinkle: {
        light: {
          primary: 'EFF2FE',
          hover: 'E6ECFE',
          active: 'CCD8FC'
        },
        primary: '#5B81F6',
        hover: '#5274DD',
        active: '#4967C5',
        dark: {
          primary: '#4461B9',
          hover: '#374D94',
          active: '#293A6F'
        },
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
