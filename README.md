# Planvine

Ruby lib that wraps the Planvine API.

## Installation

Add this line to your application's Gemfile:

    gem 'planvine'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install planvine

## Usage

Return events

    Planvine.for('My-API-KEY').events

Return categories

    planvine = Planvine.for('MY-API-KEY')
    planvine.categories

    #return events for a category
    category = planvine.categories.first
    category.events

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
