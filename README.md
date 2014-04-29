# Haikuable

> Garth: "Does anyone else find this weird? I mean, we're looking down on Wayne's basement. Only that's not Wayne's basement. Isn't that weird?"
>
> Everyone: "That's weird…"
>
> Wayne: "Garth, that was a haiku!"

<cite>[Wayne's World](http://www.imdb.com/title/tt0105793/?ref_=nv_sr_1), 1992</cite>

True to the simplicity and elegance of the [Japanese poetic form](http://en.wikipedia.org/wiki/Haiku), haikuable is a very simple gem. It has a single method. It takes a string, and returns a boolean based on whether or not that string is a haiku.

Currently, `haikuable` only supports the traditional 5, 7, 5 haiku format. If you need configurability, feel free to [file an issue](https://github.com/thenickcox/haikuable).

## Usage

Require the gem, and call `is_haiku?` on a string.

```bash
>> require 'haikuable'
=> true
>> poem = 'at the age old pond a frog leaps into water a deep resonance'
=> "at the age old pond a frog leaps into water a deep resonance"
>> poem.is_haiku?
=> true
```

## Installation

Add this line to your application's Gemfile:

    gem 'haikuable'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install haikuable

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
