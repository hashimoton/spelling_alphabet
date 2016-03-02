# SpellingAlphabet

SpellingAlphabet is a conversion module for spelling alphabet (phonetic alphabet).

Supports [Latin alphabets](https://en.wikipedia.org/wiki/Spelling_alphabet) and [Japanese kana](https://en.wikipedia.org/wiki/Japanese_radiotelephony_alphabet).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'spelling_alphabet'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install spelling_alphabet


## Usage

### Gem

In your ruby source, write the line below:

```ruby
require "spelling_alphabet"
```

#### Letters to Words

```ruby
SpellingAlphabet::ITU.spellout("ABC") #=> "Alfa Bravo Charlie"
SpellingAlphabet::Japanese.spellout("イロハ") #=> "いろはのイ ローマのロ はがきのハ"
```

#### Words to letters

```ruby
SpellingAlphabet::ITU.interpret("Yankee Zulu Nadazero")).to eq("YZ0")
SpellingAlphabet::Japanese.interpret("朝日のア いろはのイ 上野のウ") # => "アイウ"
```

### Command

SpellingAlphabet gem also includes "spellout" command which converts given words to a sequence of spelling alphabet.

```
> spellout -h
Usage: spellout [options] WORDS
Convert WORDS to a sequence of spelling alphabet(phonetic alphabet)

Options:
    -w, --word-set=WORD_SET          Speify the word set for conversion (default: ITU)
    -i, --interpret                  Interpret WORDS instead of spellingout

Supported word sets:
   ITU       ITU Phonetic Alphabet and Figure Code
   ICAO      ICAO Radiotelephony Alphabet
   Japanese  Japanese radiotelephony alphabet (encoding is UTF-8 only)
```

Here are some examples:

```
> spellout a b 1
Alfa Bravo Unaone

> spellout -i Alfa Bravo Unaone
AB1

> spellout -w Japanese 1
数字のひと
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

