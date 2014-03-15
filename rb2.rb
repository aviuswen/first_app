# Making a revision
# Dan Q. Nguyen
# March 15, 2014
# Test Area for ruby classes

class Animal
	attr_accessor :name, :age, :trait
end
first_animal = Animal.new
first_animal.name = "Floyd"
first_animal.age = 14
first_animal.trait = "annoying"
puts "Animal name = " + first_animal.name + ", trait = " + first_animal.trait + "\n"

class MyClass
	@@classVariable = 0
	def initialize(id, name, addr)
		@obj_id = id
		@obj_name = name
		@obj_addr = addr
		@@classVariable += 1
	end 
	def getClassVar
		puts "Number of objects = #@@classVariable"
	end
	def methodFoo
		puts "methodFoo Runs"
	end 

end #MyClass

obj = MyClass.new("22", "John", "3777 Depot Rd")
puts "Calling class method"
obj.methodFoo
obj1 = MyClass.new(nil, nil, nil)
obj2 = MyClass.new(nil, nil, nil)
obj.getClassVar


END {
	puts "\tEND rb2.rb"
}
BEGIN {
	puts "\tSTART rb2.rb"
}


