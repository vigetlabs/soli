# Soli

Soli is a web app that allows solo travelers to create and share solo-friendly itineraries, called Guides, with each other. These Guides encourage travelers to go out an explore different cities by following curated itineraries made by travelers like themselves.

## Development

Soli is a Rails app built using [Vite Ruby](https://vite-ruby.netlify.app/) and deployed using [Fly](https://fly.io/). We use a [PostgreSQL](https://www.postgresql.org/) database, along with [TailwindCSS](https://tailwindcss.com/) for styling and [Stimulus](https://stimulus.hotwired.dev/) as our JavaScript framework.

## Running the project locally

From the root directory of the project, run the following commands:

```
bundle install
yarn
rails db:setup
./bin/dev
```

Follow the prompt in the terminal to open a localhost page in your browser.
