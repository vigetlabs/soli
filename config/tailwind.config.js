const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      colors: {
        transparent: 'transparent',
        current: 'currentColor',
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
      fontFamily: {
        // sans: ['Inter var', ...defaultTheme.fontFamily.sans],
        headline: ['Niramit', 'sans-serif'],
        body: ['Mulish', 'sans-serif'],
        sans: ['Mulish', 'sans-serif']
      },
      borderRadius: {
        smd: '0.25rem'
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
