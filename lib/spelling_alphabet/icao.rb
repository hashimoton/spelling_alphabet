# coding: utf-8

module SpellingAlphabet

  # Word set for ICAO Radiotelephony Alphabet.
  # http://www.icao.int/Pages/AlphabetRadiotelephony.aspx
  class ICAO
  
    WORD_TABLE =<<EOD
A	Alfa
B	Bravo
C	Charlie
D	Delta
E	Echo
F	Foxtrot
G	Golf
H	Hotel
I	India
J	Juliett
K	Kilo
L	Lima
M	Mike
N	November
O	Oscar
P	Papa
Q	Quebec
R	Romeo
S	Sierra
T	Tango
U	Uniform
V	Victor
W	Whiskey
X	X-ray
Y	Yankee
Z	Zulu
EOD

    LETTER_WORD = WORD_TABLE.split("\n").map {|r| r.split("\t")}.to_h
    WORD_LETTER = LETTER_WORD.invert
    
    # Converts each letter to the corresponding word.
    def self.spellout(text)
      text.delete(" ").chars.map {|c| LETTER_WORD.fetch(c.upcase, c)}.join(" ")
    end
    
    # Converts each word to the original letter.
    def self.interpret(text)
      text.split(" ").map {|w| WORD_LETTER.fetch(w, w)}.join("")
    end

  end # class

end # module

# EOF
