# SpellingAlphabet

SpellingAlphabet is a conversion module for spelling alphabet (phonetic alphabet).

Supports [Latin alphabets](https://en.wikipedia.org/wiki/Spelling_alphabet) and [Japanese kana](https://en.wikipedia.org/wiki/Japanese_radiotelephony_alphabet).

## Installation

TBD

## Usage

In your ruby source, write the line below:

```ruby
require "spelling_alphabet"
```

### Letters to Words

```ruby
SpellingAlphabet::ITU.spellout("ABC") #=> "Alfa Bravo Charlie"
SpellingAlphabet::Japanese.spellout("イロハ") #=> "いろはのイ ローマのロ はがきのハ"
```

### Words to letters

```ruby
SpellingAlphabet::ITU.interpret("Yankee Zulu Nadazero")).to eq("YZ0")
SpellingAlphabet::Japanese.interpret("朝日のア いろはのイ 上野のウ") # => "アイウ"
```

## Development

### Test

Run the tests in spec directory:

```
$ cd spelling_alphabet
$ rake spec
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/hashimoton/spelling_alphabet.
## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

