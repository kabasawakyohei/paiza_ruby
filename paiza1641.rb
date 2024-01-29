class Employee
  attr_reader :number, :name
  def initialize(number, name)
      @number = number
      @name = name
  end
  
  def self.create_employee(number, name)
      Employee.new(number, name)
  end
end

employees = []

N = gets.chomp.to_i

N.times do
  input = gets.chomp.split
  case input[0]
  when 'make'
      number = input[1].to_i
      name = input[2]
      employee = Employee.create_employee(number, name)
      employees << employee
  when 'getnum'
      n = input[1].to_i
      puts employees[n - 1].number
  when 'getname'
      n = input[1].to_i
      puts employees[n - 1].name
  end
end
