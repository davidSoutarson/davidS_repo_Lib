def utilisateur
	puts "entre vortre prenom"
	prenom = gets.chomp
	return prenom
end 


def signup
	puts "entrer votre mots de passe :"
	motsdepasse = gets.chomp 
	return motsdepasse
end 

def login
 prenom=utilisateur
mdp= signup
puts signup 
	puts "verrifier votre mots de passe :" 
	verrifier = gets.chomp
        while   verrifier!= mdp

	puts "verrifier votre mots de passe :"
	verrifier = gets.chomp

	end

	puts "bonjour #{prenom}"

end
  

def welcome_screem 
     puts "================================ "
     puts "=                              = "
     puts "=                              = "  
     puts "=                              = "
     puts "=         Bienvenue            = "
     puts "=            NASA              = "
     puts "=                              = "
     puts "=                              = "
     puts "=                              = "
     puts "================================ "
end

login
welcome_screem
