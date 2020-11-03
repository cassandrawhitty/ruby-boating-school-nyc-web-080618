require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# student seeds
anna = Student.new("Anna")
johnny = Student.new("Johnny")
gerard = Student.new("Gerard")
elyse = Student.new("Elyse")
spongebob= Student.new("Spongebob")
patrick= Student.new("Patrick")

# instrucor seeds
alicia = Instructor.new("Alicia")
jenny = Instructor.new("Jenny")
ted = Instructor.new("Ted")
silas = Instructor.new("Silas")
puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")

# boating test seeds
test1= spongebob.add_boating_test("Don't Crash 101", "pending", puff)
test2 = patrick.add_boating_test("Boating 101", "failed", alicia)
test3 = anna.add_boating_test("Boating", "passed", puff)
test4 = anna.add_boating_test("Boating 202", "passed", krabs)
test5 = anna.add_boating_test("Don't Crash 101", "failed", puff)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

