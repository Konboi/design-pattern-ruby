require 'observer'

class Payroll
  def update(changed_employee)
    puts("#{changed_employee.name}のために小切手を切ります！")
    puts("彼の給料はいま#{changed_employee.salary}です！")
  end
end

class TaxMan
  def update(changed_employee)
    puts "#{changed_employee.name}に新しい税金の請求書を送ります！"
  end
end

class Employee
  include Observable

  attr_reader :name
  attr_accessor :title, :salary

  def initialize(name, title, salary)
    super()
    @name    = name
    @title   = title
    @salary  = salary
  end

  def salary=(new_salary)
    @salary = new_salary
    changed
    notify_observers(self)
  end

end

fred = Employee.new("Fred Flintstone", "Crane Operator", 30000.0)
payroll = Payroll.new
fred.add_observer(payroll)
fred.salary = 35000.0

taxman = TaxMan.new
fred.add_observer(taxman)


fred.salary = 45000.0

