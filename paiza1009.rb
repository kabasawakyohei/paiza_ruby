# ==============================================================
eiza 国の大衆居酒屋で働きながらクラスの勉強をしていたあなたは、お客さんをクラスに見立てることで店内の情報を管理できることに気付きました。
全てのお客さんは、ソフトドリンクと食事を頼むことができます。
paiza 国の法律では、 20 歳以上のお客さんは成人とみなされ、お酒を頼むことができます。
20 歳未満のお客さんは未成年とみなされ、お酒を頼もうとした場合はその注文は取り消されます。
また、お酒を頼んだ場合、以降の全ての食事の注文 が毎回 200 円引きになります.

店内の全てのお客さんの数と注文の回数、各注文をしたお客さんの番号とその内容が与えられるので、各お客さんの会計を求めてください。
# ==============================================================

# 未成年の基本クラス
class Custommer
    attr_accessor :total_amount
    def initialize(age)
        @age = age
        @total_amount = 0
    end
    
    def order(order_type, price)
        if order_type == "alcohol"
            return
        else
            @total_amount += price
        end
    end
end

# 成人のクラス、未成年クラスを継承
class AdultCustommer < Custommer
    def initialize(age)
        super(age)
        @discount = false
    end
    
    def order(order_type, price)
        if order_type == "alcohol"
            @discount = true
            @total_amount += price
        elsif @discount && order_type == "food"
            @total_amount += price - 200
        else
            @total_amount += price
        end
    end
end

# 入力の処理
custommer_num, order_count = gets.split.map(&:to_i)

# お客さんのリストを作成
custommer_arry = []
custommer_num.times do
    age = gets.to_i
    if age >= 20
        custommer_arry << AdultCustommer.new(age)
    else
        custommer_arry << Custommer.new(age)
    end
end

# 注文の処理
order_count.times do ||
    index, order_type, price = gets.split(" ")
    custommer_index = index.to_i - 1
    price = price.to_i
    custommer_arry[custommer_index].order(order_type, price)
end

# トータル金額の出力
custommer_arry.each do |custommer|
    puts custommer.total_amount
end
