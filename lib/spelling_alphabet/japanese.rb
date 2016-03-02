# coding: utf-8

module SpellingAlphabet

  # Word set for Japanese radiotelephony alphabet.
  # based on:
  #   無線局運用規則
  #   別表第五号 通話表（第１４条関係）
  #   1.和文通話表 ＋ 2.欧文通話表(数字は和文通話表)
  #   http://law.e-gov.go.jp/htmldata/S25/S25F30901000017.html
  class Japanese
  
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
0	数字のまる
1	数字のひと
2	数字のに
3	数字のさん
4	数字のよん
5	数字のご
6	数字のろく
7	数字のなな
8	数字のはち
9	数字のきゆう
ア	朝日のア
イ	いろはのイ
ウ	上野のウ
エ	英語のエ
オ	大阪のオ
カ	為替のカ
キ	切手のキ
ク	クラブのク
ケ	景色のケ
コ	子供のコ
サ	桜のサ
シ	新聞のシ
ス	すずめのス
セ	世界のセ
ソ	そろばんのソ
タ	煙草のタ
チ	ちどりのチ
ツ	つるかめのツ
テ	手紙のテ
ト	東京のト
ナ	名古屋のナ
ニ	日本のニ
ヌ	沼津のヌ
ネ	ねずみの
ノ	野原のノ
ハ	はがきのハ
ヒ	飛行機のヒ
フ	富士山のフ
ヘ	平和のヘ
ホ	保険のホ
マ	マツチのマ
ミ	三笠のミ 
ム	無線のム
メ	明治のメ
モ	もみじのモ
ヤ	大和のヤ
ユ	弓矢のユ
ヨ	吉野のヨ
ラ	ラジオのラ
リ	りんごのリ 
ル	るすいのル
レ	れんげのレ
ロ	ローマのロ
ワ	わらびのワ
ヰ	ゐどのヰ
ヱ	かぎのあるヱ
ヲ	尾張のヲ
ン	おしまいのン
ガ	為替のカに濁点
ギ	切手のキに濁点
グ	クラブのクに濁点
ゲ	景色のケに濁点
ゴ	子供のコに濁点
ザ	桜のサに濁点
ジ	新聞のシに濁点
ズ	すずめのスに濁点
ゼ	世界のセに濁点
ゾ	そろばんのソに濁点
ダ	煙草のタに濁点
ヂ	ちどりのチに濁点
ヅ	つるかめのツに濁点
デ	手紙のテに濁点
ド	東京のトに濁点
バ	はがきのハに濁点
ビ	飛行機のヒに濁点
ブ	富士山のフに濁点
ベ	平和のヘに濁点
ボ	保険のホに濁点
パ	はがきのハに半濁点
ピ	飛行機のヒに半濁点
プ	富士山のフに半濁点
ペ	平和のヘに半濁点
ポ	保険のホに半濁点
ー	長音
EOD

    LETTER_WORD = WORD_TABLE.split("\n").map {|r| r.split("\t")}.to_h
    WORD_LETTER = LETTER_WORD.invert
    
    # Converts hiragana letters and small letters to katakana letters.
    def self.normalize(text)
      if text =~ /[a-z]+/
        text.upcase
      elsif text =~ /\w+/
        text
      else
        text.tr('ぁ-ん', 'ァ-ン').tr(
          'ァィゥェォヵヶッャュョヮ', 'アイウエオカケツヤユヨワ')
      end
    end
    
    # Converts each letter to the corresponding word.
    def self.spellout(text)
      text.delete(" ").chars.map do |c|
        LETTER_WORD.fetch(self.normalize(c), c)
      end.join(" ")
    end
    
    # Converts each word to the original letter.
    def self.interpret(text)
      text.split(" ").map {|w| WORD_LETTER.fetch(w, w)}.join("")
    end

  end # class

end # module

#  EOF
