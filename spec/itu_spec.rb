# coding: utf-8
require 'spec_helper'

describe SpellingAlphabet do

  describe 'ITU' do
    
    it 'converts upper letters to the corresponding words' do
      expect(SpellingAlphabet::ITU.spellout("ABC")).to eq("Alfa Bravo Charlie")
    end
    
    it 'converts lower letters to the corresponding words' do
      expect(SpellingAlphabet::ITU.spellout("def")).to eq("Delta Echo Foxtrot")
    end
    
    it 'converts figures to the corresponding words' do
      expect(SpellingAlphabet::ITU.spellout("123")).to eq("Unaone Bissotwo Terrathree")
    end
    
    it 'keeps unsupported letters intact and separate them with a space' do
      expect(SpellingAlphabet::ITU.spellout("!?&%")).to eq("! ? & %")
    end
    
    it 'deletes extra spaces' do
      expect(SpellingAlphabet::ITU.spellout("   ")).to eq("")
    end
    
    it 'converts words to the original letters' do
      expect(SpellingAlphabet::ITU.interpret("Yankee Zulu Nadazero")).to eq("YZ0")
    end
    
  end
  
end

# EOF
