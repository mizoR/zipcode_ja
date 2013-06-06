# ZipcodeJa

ZipcodeJa allows you to convert Japanese zipcode into a region.

## Installation

Add this line to your application's Gemfile:

    gem 'zipcode_ja'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install zipcode_ja

## Usage

##### Convert a zipcode to region info.

```
'1310045'.to_region #=> ["13107", "131  ", "1310045", "トウキョウト", "スミダク", "オシアゲ", "東京都", "墨田区", "押上", "0", "0", "1", "0", "0", "0"]
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
