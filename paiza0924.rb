# student クラスを定義する
class Student
  attr_accessor :name, :old, :birth, :state
  def initialize(name, old, birth, state)
      @name = name
      @old = old
      @birth = birth
      @state = state
  end
end

N = gets.to_i

student_arry = []

N.times do |x|
  name, old, birth, state = gets.split
  student_arry << Student.new(name, old, birth,state)
end

seach_num = gets.chomp.to_i

student_arry.each do |x|
  if x.old = seach_num
      puts x.name
  end
end