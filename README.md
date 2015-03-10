# RackInjection

This very simple gem just provides a middleware named RackInjection that
allows you to inject arbitrary key-value pairs into the Rack env on every
request.

## Installation

You know how to install gems...

## Usage

In your config.ru file:
```ruby
use RackInjection, 'rack.logger' => my_special_logger
```
Now env['rack.logger'] will refer to `my_special_logger` in every
request.

## Contributing

If send me a pull request, I promise I'll look at it.
