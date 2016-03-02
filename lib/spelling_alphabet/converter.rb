# coding: utf-8

module SpellingAlphabet

  # Text converter which holds the given word set (conversion table).
  class Converter

    # Generates an instance.
    def initialize(word_set = SpellingAlphabet::ITU)
      @word_set = word_set
    end
    
    # Converts each letter to the corresponding word.
    def spellout(text)
      @word_set.spellout(text)
    end
    
    # Converts each word to the original letter.
    def interpret(text)
      @word_set.interpret(text)
    end
    
  end # class
  
end # module

# EOF
