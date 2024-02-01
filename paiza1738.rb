class Employee
  attr_accessor :number, :name

  def initialize(number, name)
    @number = number
    @name = name
  end
end

class EmployeeManager
  def initialize
    @employees = []
  end

  def make_employee(number, name)
    employee = Employee.new(number, name)
    @employees << employee
  end

  def getnum(n)
    puts @employees[n - 1].number
  end

  def getname(n)
    puts @employees[n - 1].name
  end

  def change_num(n, newnum)
    @employees[n - 1].number = newnum
  end

  def change_name(n, newname)
    @employees[n - 1].name = newname
  end
end

# 入力回数 N を取得
N = gets.chomp.to_i

# EmployeeManager インスタンスを作成
employee_manager = EmployeeManager.new

# N 回の処理を実行
N.times do
  input = gets.chomp.split
  case input[0]
  when 'make'
    number = input[1].to_i
    name = input[2]
    employee_manager.make_employee(number, name)
  when 'getnum'
    n = input[1].to_i
    employee_manager.getnum(n)
  when 'getname'
    n = input[1].to_i
    employee_manager.getname(n)
  when 'change_num'
    n = input[1].to_i
    newnum = input[2].to_i
    employee_manager.change_num(n, newnum)
  when 'change_name'
    n = input[1].to_i
    newname = input[2]
    employee_manager.change_name(n, newname)
  end
end