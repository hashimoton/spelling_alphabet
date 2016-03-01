# coding: utf-8

module SpellingAlphabet

  # Code set for ITU Phonetic Alphabet and Figure Code.
  # http://life.itu.int/radioclub/rr/ap14.htm
  class ITU
  
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
0	Nadazero
1	Unaone
2	Bissotwo
3	Terrathree
4	Kartefour
5	Pantafive
6	Soxisix
7	Setteseven
8	Oktoeight
9	Novenine
EOD

    LETTER_WORD = WORD_TABLE.split("\n").map {|r| r.split("\t")}.to_h
    WORD_LETTER = LETTER_WORD.invert

    # Converts each letter to the corresponding word
    def self.spellout(text)
      text.delete(" ").chars.map {|c| LETTER_WORD.fetch(c.upcase, c)}.join(" ")
    end
    
    # Converts each word to the original letter
    def self.interpret(text)
      text.split(" ").map {|w| WORD_LETTER.fetch(w, w)}.join("")
    end

  end # class

end # module

# EOF
