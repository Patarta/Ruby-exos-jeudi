def signup
	puts "Bonjour, veuillez indiquer un mots de passe ?"
	print ">"
	@mdp = gets.chomp
end

def login(signup)
	puts "Merci de confirmer votre mots de passe pour vous connecter"
	print ">"
	confirmation = gets.chomp

		if confirmation == @mdp
			puts "vous êtes connecté !"
			return @mdp

		else
			puts "Mots de passe erroné, veuillez réessayer !"
			confirmation2 = gets.chomp
				if confirmation2 != @mdp
					puts "2ème tentative erroné, fin de connexion, bannissement à vie"
					return confirmation2
				else
					puts "Vous êtes connecté dans votre zone secrète. Il a été écrit à 12h03 par Jacques ....etc"

				end
		end
end

def perform
	login(signup)
end

perform
