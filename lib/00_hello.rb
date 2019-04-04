def say_hello
  puts " Quel est ton prénom?"
  print "> "
  first_name = gets.chomp
  return first_name
end

def greet(first_name)
  puts "Coucou, #{first_name} !"
end

def perfom
  first_name = say_hello
  greet(first_name)
end

perfom
