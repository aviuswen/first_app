# Dan Q. Nguyen
# March 15, 2014
# Test Area for ruby classes

$global_variable = 0
# note: unitialized variables are set to null

class Animal
	attr_accessor :name, :age, :trait
end
first_animal = Animal.new
first_animal.name = "Floyd"
first_animal.age = 14
first_animal.trait = "annoying"
puts "Animal name = " + first_animal.name + ", trait = " + first_animal.trait + "\n"

class MyClass
	CONSTAT1 = 100		#all uppercase, cannot change
	@@classVariable = 0	#class variables must be initalized before method use
	def initialize(id, name, addr)
		@obj_id = id
		@obj_name = name
		@obj_addr = addr
		@@classVariable += 1
	end 
	def getClassVar
		# Use the '#' char before variables to include in string	
		puts "Number of objects = #@@classVariable"
	end
	def methodFoo
		puts "methodFoo Runs with ID: #{@obj_id} and const = #{CONSTAT1}"
	end 

end #MyClass

obj = MyClass.new("22", "John", "3777 Depot Rd")
puts "Calling class method"
obj.methodFoo
obj1 = MyClass.new(nil, nil, nil)
obj2 = MyClass.new(nil, nil, nil)
obj.getClassVar

puts "self is #{self}" #receiver object of the current method
puts "__FILE__ is #{__FILE__}" #gives file name
puts "__LINE__ is #{__LINE__}" #gives line number
END {
	puts "\tEND rb2.rb"
}
BEGIN {
	puts "\tSTART rb2.rb"
}

arr = [ "blah", 10, 023, ?a, 0b101011, 4E20 ]
puts "  Looping through array"
arr.each do |i|
	puts i
end

hsh = Hash.new
hsh["foo"] = "bar"
hsh[1] = "bubles"

puts "hsh[\"foo\"] = #{hsh["foo"]}"
puts "hsh[1] = #{hsh[1]}"

a, b, c = 10, 20, 30 #parallel assignment
a, b = b, c #parallel assignment in a swap

puts "#{defined? arr}" #ask if hsh is defined and tells what it is
puts "#{defined? $global_variable}"
puts defined? blbl
puts defined? obj.methodFoo
