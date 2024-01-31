# 入力を受け取る
input = gets.chomp.split
a = input[0].to_i
b = input[1].to_i

# AND演算を実行して結果を出力
result = (a == 1 && b == 1) ? 1 : 0
puts result
