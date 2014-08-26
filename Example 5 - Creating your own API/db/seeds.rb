tom = Student.create(name: "Tom", age: 26)
bob = Student.create(name: "Bob", age: 24)
joe = Student.create(name: "Joe", age: 30)
mary = Student.create(name: "Mary", age: 28)
anne = Student.create(name: "Anne", age: 28)
jane = Student.create(name: "Jane", age: 28)
marcus = Student.create(name: "Marcus", age: 28)
alex = Student.create(name: "Alex", age: 32)

english = Course.create(name: "English")
shop = Course.create(name: "Shop")
geography = Course.create(name: "Geography")
algebra = Course.create(name: "Algebra")
science = Course.create(name: "Science")

elie = Instructor.create(name: "Elie")
del = Instructor.create(name: "Del")
anil = Instructor.create(name: "Anil")
tim = Instructor.create(name: "Tim")

elie.students << tom
del.students << bob
del.students << joe
tim.students << mary
tim.students << anne
anil.students << jane
anil.students << marcus
elie.students << alex

tom.courses << english
tom.courses << shop
bob.courses << geography
bob.courses << algebra
bob.courses << science
joe.courses << geography
joe.courses << algebra
joe.courses << science
mary.courses << geography
mary.courses << algebra
mary.courses << science
anne.courses << geography
anne.courses << algebra
anne.courses << science
jane.courses << geography
jane.courses << algebra
jane.courses << science
marcus.courses << geography
marcus.courses << algebra
alex.courses << science