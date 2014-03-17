# Dan Q. Nguyen
# March 16, 2014
# Test Area for ruby classes

# standard if else
x = 1
if x > 2 then  #end the conditional with then or
	puts "x > 2"
elsif x != 0;  #with a semicolin
	puts "x != 0"
else
	puts "Ending of else"
end

$debug = 1
puts "debug is 1" if $debug

# unless is the opposite of if, the conditional false, then do code

#switch statement
$age = 5
case $age
when 0..2;					#uses range which is inclusive of 2
	puts "baby"
when 3...5 then 			#does not include 5
	puts "little child"
when 5
	puts "5 years old"
else
	puts "They are older"
end


