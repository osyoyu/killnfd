# KillNFD

Ever have seen cool filenames like `ま〜ふ゛るMake up a-ha-ha!` or `ケ゛ンキトリッハ゜ー` on your Linux system? Just run `killnfd` and convert them into their correct form.

## Installation

    $ gem install killnfd

## Usage

    $ killnfd
    mv "ケ゛ンキトリッハ゜ー.flac" "ゲンキトリッパー.flac"
    mv "ま〜ふ゛るMake up a-ha-ha!" "ま〜ぶるMake up a-ha-ha!"

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/osyoyu/killnfd.
