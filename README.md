# Pusher unified

This rails project is simply a model of a modern rails app demoing how I ([Jon Heslop](https://www.github.com/jonheslop/)) aspire us to build out the frontend of https://github.com/pusher/dash as we modernise it.

The project has live reloading of all changes.

To run the project run:

- `rails server -e development` to start rails
- `./bin/webpack-dev-server --watch --colors --progress` to get live reloading of CSS/JS
- `guard` to run guard which looks for `.rb/.erb` and reloads the page (relies on the [guard](https://github.com/guard/guard) gem being installed too)

## Components

A component is a piece of our UI, a button for example.
We are using partials as components, in a similar fashion to [GOV.UK](https://github.com/alphagov/govuk_publishing_components/blob/master/app/views/govuk_publishing_components/components/_input.html.erb).

Although recently [found out](https://twitter.com/tvararu/status/1228314643988459531) it would be better to use https://github.com/github/actionview-component. But until we upgrade to rails 5.2 this isn’t possible.

[See all components](/app/views/application)

## CSS

This project uses atomic CSS classes (each class, on the whole, represents one css property declaration). The system is based on https://github.com/tachyons-css/tachyons-custom. The CSS is generated with PostCSS via Webpack.

[See all CSS](/app/javascript/css)

## Deployment

On merge to master a Heroku deploys the app
