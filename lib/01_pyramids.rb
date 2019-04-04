
def question_etages
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
   print "> "
   number_etages = gets.chomp.to_i
   return number_etages
 end

 def pyramid(number_etages)
   1.upto(number_etages) do |i|

     i.upto(number_etages - 1) { print " " }
     i.times { print " #" }
     print "\n"
   end

   number_etages = number_etages - 1
   number_etages.downto(1) do |i|
     i.upto(number_etages) { print " " }

     i.times { print " #" }

     print "\n"
   end
 end

def perfom
  number_etages = question_etages
  pyramid(number_etages)
end

perfom
