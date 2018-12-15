class Employee:

    no_of_employees = 0
    raise_factor = 1.20

    def __init__(self,first,last,pay):
        self.first = first
        self.last = last
        self.pay = pay
        self.email = first + last + "@company.com"

        Employee.no_of_employees +=1 

    def annual_income(self):
        return self.pay*10

    def raise_amount(self):
        self.pay = int(self.pay*Employee.raise_factor)
        return self.pay

    
emp_1 = Employee('Het','Shah',200000)
emp_2 = Employee('Nachiketa','Vaghela',100000)
emp_3 = Employee('Kumar','Aniket',150000)
print(emp_1.pay,emp_2.pay,emp_3.pay)
Employee.raise_amount(emp_1)
print(emp_1.pay,emp_2.pay,emp_3.pay)

#print(emp_1.pay)
#print(emp_1.email)
#print(Employee)
#print(Employee.annual_income(emp_1))
#print(emp_1.annual_income())
print(Employee.no_of_employees)

print(emp_1.__dict__)
