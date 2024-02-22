# Capistrano::Checks

Run some checks before deployment by capistrano.
The gem includes these checks.

* https://github.com/socioart/capistrano-local_branch_check
* https://github.com/socioart/capistrano-push_check
* https://github.com/socioart/capistrano-running_process_check
* https://github.com/socioart/capistrano-zeitwerk_check


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano-checks'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install capistrano-checks

## Usage

in Capfile

    # Enable all checks
    require "capistrano/checks/all"

    # Or enable each check
    require "capistrano/local_branch_check"
    require "capistrano/push_check"
    require "capistrano/running_process_check"
    require "capistrano/zeitwerk_check"

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/labocho/capistrano-checks.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
