# coding: utf-8

module SpellingAlphabet

  # Text converter which holds the given code set (conversion table).
  class Converter

    # Generates an instance.
    def initialize(code_set = SpellingAlphabet::ITU)
      @code_set = code_set
    end
    
    # Converts each letter to the corresponding word
    def spellout(text)
      @code_set.spellout(text)
    end
    
    # Converts each word to the original letter
    def interpret(text)
      @code_set.interpret(text)
    end
    
  end # class
  
end # module

# EOF
