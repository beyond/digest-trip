# Digest::Trip

�g���b�v�L�[����A2�����˂�̃g���b�v�i�ЂƂ�p�L���b�v�j�𐶐����܂��B

10�������12���ɑΉ����Ă��܂��B���L�[�ɂ͑Ή����Ă��܂���B

���O�ƃg���b�v�L�[�i#�ȍ~�̕�����j�́A�����Ńp�[�X���Ă��������B

## Usage

    require "digest/trip"
    
    name= "name#password"
    name, key = name.split "#", 2
    trip = Digest::Trip.digest key
    [name, trip].join "��"  #=> "name��ozOtJW9BFA"

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
