class CurryRecipe
    attr_accessor :name, :kakushiaji, :vegitable, :water, :beef, :spiciness
    def initialize(name:, kakushiaji:)
        @name = name
        @kakushiaji = kakushiaji
        @vegitable = ['玉ねぎ','にんじん','じゃがいも']
        @beef = '豚肉'
        @water = 1000
        @spiciness = '中辛'
    end

    def self.menus
        p [{"普通のカレー": "880円"},{"悪魔カレー": "1800円"}]
    end

    def yummy?
        if self.kakushiaji == "チョコ"
            p "#{self.name}は普通に美味しい!"
        elsif self.kakushiaji == "ビール" || self.kakushiaji == "リンゴジュース"
            p "#{self.name}は悪魔的だーッッ!!!"
        else
            p "悪魔的なまずさだッッ！！！"
        end
    end
end

#元々のレシピ
standard_curry = CurryRecipe.new(name: "普通のカレー", kakushiaji: "チョコ")
#美味しいか確認
standard_curry.yummy?
#メニュー表
CurryRecipe.menus
