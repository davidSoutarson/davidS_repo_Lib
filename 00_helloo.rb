def say_hello
print "hello"
end

def ask_first_name
 print " #{say_hello}wate your first name :"
	prenom=gets.chomp
puts "#{say_hello} #{prenom}"
end

ask_first_name

