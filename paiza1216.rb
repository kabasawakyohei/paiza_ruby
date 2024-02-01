class Employee
  attr_accessor :number, :name
  
  def initialize(number, name)
      @number = number
      @name = name
  end
  
end

N = gets.chomp.to_i

employees = []

N.times do
  input = gets.chomp.split
  if input[0] == "make"
      number = input[1].to_i
      name = input[2]
      employee = Employee.new(number, name)
      employees << employee
  elsif input[0] == "getnum"
      array_num = input[1].to_i
      puts employees[array_num - 1].number
  elsif input[0] == "getname"
      array_num = input[1].to_i
      puts employees[array_num - 1].name
  end
end
