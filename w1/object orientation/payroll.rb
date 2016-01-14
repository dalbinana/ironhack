# STEP1 Weekly salary calculation

class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
    end
end

# Design the HourlyEmployee, the SalariedEmployee, and the MultiPaymentEmployee classe

class HourlyEmployee < Employee
    attr_reader :name, :email,:hourly_rate, :hours_worked
    def initialize(name, email, hourly_rate, hours_worked)
        @name = name
        @email = email
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
      #returns the hours worked * hourly_rate
      # puts "#{@hourly_rate*@hours_worked} €/week"
      @hourly_rate*@hours_worked

    end
end

class SalariedEmployee < Employee
    attr_reader :name, :email,:yearly_salary
    def initialize(name, email, yearly_salary)
        @name = name
        @email = email
        @yearly_salary = yearly_salary
    end

    def calculate_salary
      #returns the hours worked * hourly_rate
      # puts "#{@yearly_salary/52} €/week"
      @yearly_salary/52
    end
end
class MultiPaymentEmployee < Employee
    attr_reader :name, :email,:yearly_salary, :hourly_rate, :hours_worked
    def initialize(name, email, yearly_salary, hourly_rate, hours_worked)
        @name = name
        @email = email
        @yearly_salary = yearly_salary
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked

    end

    def calculate_salary
      total=@yearly_salary
      if @hours_worked > 40
        total += (@hours_worked-40)*@hourly_rate
      end
      # puts "#{weekly_salary=total/52} €/week"
      weekly_salary=total/52

    end
end


josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
dani = HourlyEmployee.new('Dani', 'dani@example.com', 15, 50)
alexandre = HourlyEmployee.new('Alexandre', 'alex@example.com', 15, 50) 

# puts "josh"
# josh.calculate_salary

# puts "nizar"
# nizar.calculate_salary

# puts "ted"
# ted.calculate_salary

# puts "DUMB calculation"
# puts payroll_week=josh.calculate_salary+nizar.calculate_salary+ted.calculate_salary+dani.calculate_salary+alexandre.calculate_salary

# puts "employee array"
# print employees = [josh.name, nizar.name, ted.name, dani.name, alexandre.name]

# puts "payroll week"
# puts payroll_week=employees.each{|name| name.calculate_salary}

# puts "total payroll week"
# puts total_payroll_week=payroll_week.reduce(0){|sum,name| sum+name}

# STEP2
class Payroll
    def initialize(employees)
        @employees = employees

    end

    def pay_employees
      
      @employees.each do |weekly|
        puts "#{weekly.name} earns #{weekly.calculate_salary}"
      end
      total_payroll_week=@employees.reduce(0){|sum,name| sum+name.calculate_salary}
      puts total_payroll_week
    end
end

employees = [josh, nizar, ted, dani, alexandre]
payroll = Payroll.new(employees)
payroll.pay_employees