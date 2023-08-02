const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  safelist: [
    'rounded-full',
    {
      pattern: /peer\/\d/
    },
    'peer-checked/1:bg-golden-primary',
    'peer-checked/2:bg-violet-primary',
    'peer-checked/3:bg-violet-light-active',
    'peer-checked/4:bg-golden-light-active',
    'peer-checked/5:bg-limon-active',
    'peer-checked/6:bg-limon-primary',
    'peer-checked/7:bg-periwinkle-light-active',
    'peer-checked/8:bg-periwinkle-light-hover',
    'peer-checked/9:bg-form-secondary'
  ],
  theme: {
    colors: {
      transparent: 'transparent',
      current: 'currentColor',
      white: '#FFFFFF',
      black: '#000000',
      alert: '#E73943',
      form: {
        light: {
          primary: '#E6E8EA',
          hover: '#D9DCE0',
          active: '#B1B7BF'
        },
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
          primary: '#EFF2FE',
          hover: '#E6ECFE',
          active: '#CCD8FC'
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
      },
      golden: {
        light: {
          primary: '#FFF9EB',
          hover: '#FFF6E1',
          active: '#FEEDC0'
        },
        primary: '#FCC534',
        hover: '#E3B12F',
        active: '#D9A316',
        dark: {
          primary: '#BD9427',
          hover: '#97761F',
          active: '#715917'
        },
        border: '#584512'
      },
      limon: {
        light: {
          primary: '#FAFEF8',
          hover: '#F8FDF5',
          active: '#F0FAE9'
        },
        primary: '#CEF0B9',
        hover: '#AEE08F',
        active: '#8BC169',
        dark: {
          primary: '#699B4A',
          hover: '#518432',
          active: '#326312'
        },
        border: '#1F420B'
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
