# coding: utf-8
require 'spec_helper'

describe SpellingAlphabet do

  describe 'ICAO' do
    
    it 'converts upper letters to the corresponding words' do
      expect(SpellingAlphabet::ICAO.spellout("ABC")).to eq("Alfa Bravo Charlie")
    end
    
    it 'converts lower letters to the corresponding words' do
      expect(SpellingAlphabet::ICAO.spellout("def")).to eq("Delta Echo Foxtrot")
    end
    
    it 'keeps unsupported letters intact and separate them with a space' do
      expect(SpellingAlphabet::ICAO.spellout("!?&%")).to eq("! ? & %")
    end
    
    it 'deletes extra spaces' do
      expect(SpellingAlphabet::ICAO.spellout("   ")).to eq("")
    end
    
    it 'converts code words to the original letters' do
      expect(SpellingAlphabet::ICAO.interpret("X-ray Yankee Zulu")).to eq("XYZ")
    end
    
  end
  
end

# EOF
