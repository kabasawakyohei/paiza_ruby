# 配列Aの要素を受け取る
N = gets.to_i
A = gets.split.map(&:to_i)

# 配列を降順にソートする
A.sort!.reverse!

# プレイヤー2人の得点を記録する配列
v = [0, 0]

# 各要素をプレイヤーに交互に割り当てる
N.times do |i|
  v[i % 2] += A[i]
end

# 答えを計算して出力
ans = v[0] - v[1]
puts ans
