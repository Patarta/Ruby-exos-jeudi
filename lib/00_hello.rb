def ask
  puts " Quel est ton prénom"
  print "> "
  name = gets.chomp
  return name
end

def say_hello(name)
  puts "Bonjour, #{name} !"
end

def perfom
  name = ask
  say_hello(name)
end

perfom
