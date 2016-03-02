# coding: utf-8
require 'spec_helper'

describe SpellingAlphabet do

  describe 'Converter' do
    
    context 'when generated without arguments' do
      before do
        @c = SpellingAlphabet::Converter.new
      end
      
      it 'converts letters to the corresponding words with the default word set' do
        expect(@c.spellout("A1")).to eq("Alfa Unaone")
      end
      
      it 'converts words to the original letters with the default word set' do
         expect(@c.interpret("Zulu Nadazero")).to eq("Z0")
      end
      
    end
    
    context 'when generated with a word set' do
      before do
        @c = SpellingAlphabet::Converter.new(SpellingAlphabet::Japanese)
      end
      
      it 'converts letters to the corresponding words with the given word set' do
        expect(@c.spellout("A1")).to eq("Alfa 数字のひと")
      end
      
      it 'converts words to the original letters with the given word set' do
        expect(@c.interpret("Zulu 数字のまる")).to eq("Z0")
      end
    
    end
    
  end
  
end

# EOF
