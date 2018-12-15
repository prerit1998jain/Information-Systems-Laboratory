class Employee:

    def __init__(self,first,last,pay):
        self.first = first
        self.last = last
        self.pay = pay
        self.email = first + last + "@company.com"

    def annual_income(self):
        return self.pay*10



emp_1 = Employee('Het','Shah',200000)
emp_2 = Employee('Nachiketa','Vaghela',100000)

print(emp_1)
print(emp_1.pay)
print(emp_1.email)
print(Employee)
print(Employee.annual_income(emp_1))
print(emp_1.annual_income())
