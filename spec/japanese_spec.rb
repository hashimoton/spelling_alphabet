# coding: utf-8
require 'spec_helper'

describe SpellingAlphabet do

  describe 'Japanese' do
    
    it 'converts katakana to the corresponding words' do
      expect(SpellingAlphabet::Japanese.spellout("イロハ")).to eq(
        "いろはのイ ローマのロ はがきのハ")
    end
    
    it 'converts hiragana to the corresponding words' do
      expect(SpellingAlphabet::Japanese.spellout("にほへと")).to eq(
        "日本のニ 保険のホ 平和のヘ 東京のト")
    end
    
    it 'converts small kana to the corresponding words' do
      expect(SpellingAlphabet::Japanese.spellout("ォヵヶッャヮ")).to eq(
        "大阪のオ 為替のカ 景色のケ つるかめのツ 大和のヤ わらびのワ")
      expect(SpellingAlphabet::Japanese.spellout("ぁぃぅぇゅょ")).to eq(
        "朝日のア いろはのイ 上野のウ 英語のエ 弓矢のユ 吉野のヨ")
    end
    
    it 'converts upper letters to the corresponding words' do
      expect(SpellingAlphabet::Japanese.spellout("ABC")).to eq("Alfa Bravo Charlie")
    end
    
    it 'converts lower letters to the corresponding words' do
      expect(SpellingAlphabet::Japanese.spellout("def")).to eq("Delta Echo Foxtrot")
    end
    
    it 'converts figures to the corresponding words' do
      expect(SpellingAlphabet::Japanese.spellout("123")).to eq(
        "数字のひと 数字のに 数字のさん")
    end
    
    it 'keeps unsupported letters intact and separate them with a space' do
      expect(SpellingAlphabet::Japanese.spellout("漢字!")).to eq("漢 字 !")
    end
    
    it 'deletes extra spaces' do
      expect(SpellingAlphabet::Japanese.spellout("   ")).to eq("")
    end
    
    it 'converts code words to the original letters' do
      expect(SpellingAlphabet::Japanese.interpret(
        "朝日のア いろはのイ 上野のウ 数字のきゆう")).to eq("アイウ9")
      expect(SpellingAlphabet::Japanese.interpret("X-ray Yankee Zulu")).to eq("XYZ")
    end
    
  end
  
end

# EOF
