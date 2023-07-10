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
        form: '#031830',
        lavender: {
          500: '#D195FE',
          700: '#BC86E5',
          900: '#A777CB',
          100: '#7D5998'
        },
        
      },
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
        headline: ['Niramit', 'sans-serif'],
        body: ['Mulish', 'sans-serif'],
        sans: ['Mulish', 'sans-serif'],
      },
      borderRadius: {
        'smd': '0.25rem',
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}
