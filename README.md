# Digest::Trip [![Build Status](https://travis-ci.org/beyond/digest-trip.png?branch=master)](https://travis-ci.org/beyond/digest-trip) [![Code Climate](https://codeclimate.com/github/beyond/digest-trip.png)](https://codeclimate.com/github/beyond/digest-trip)

トリップキーから、2ちゃんねるのトリップ（ひとり用キャップ）を生成します。

10桁および12桁に対応しています。生キーには対応していません。

名前とトリップキー（#以降の文字列）は、自分でパースしてください。

## Usage

    require "digest/trip"
    
    name= "name#password"
    name, key = name.split "#", 2
    trip = Digest::Trip.digest key
    [name, trip].join "◆"  #=> "name◆ozOtJW9BFA"

## Installation

Add this line to your application's Gemfile:

    gem 'digest-trip'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install digest-trip

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
