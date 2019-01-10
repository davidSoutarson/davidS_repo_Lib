class Monte


	def pyramide(chiffre = 2)# methode pyramide
		dimension = 10
		dim_pyramide = dimension * 2
		dim_espace = dimension + 1
		for dimensions in 1..dim_pyramide # permet de gere les lignes/animation
			if dimensions % 2 != 0 then 
				dieze = "#"*dimensions
				dim_espace -= 1
				if dim_espace == chiffre then # permet de gere les espaces
					espace = " "*(dim_espace-1)+"H" 
					puts "#{espace}#{dieze}"
				else
					espace = " "*dim_espace 
					puts "#{espace}#{dieze}"
				end
			end	
 		end
	end



	def jouer
		# appel methode pyramide sans paramètre
		pyramide
		# Fin
		position = 2
		verification = true
		loop do
			puts "======================================="
			print "Appuyer sur entrer pour lancé le dé"
			bals = gets.chomp
			chiffre = rand(1..6) # pour [entre] les dé au "azard" et incrementer la positiom et stoquer dans chifre
				if chiffre == 5 || chiffre == 6 then
					position += 1 #pour monter
					if position == 11 then #si position egale 11 ganier 
						# appel methode pyramide avec paramètre position
						pyramide(position)
						# Fin
						puts " ========================"
						puts "| Voila tu a gagner!!!!! |"
						puts " ========================"
						verification = false
					else	
						# appel methode pyramide avec paramètre position
						pyramide(position)
						# Fin
						puts "Vous êtes à la #{position}ème position"
					end
				elsif chiffre == 1 then
					position -= 1 #pour desendre
					if position < 2 then # si psition iferieur a 2 predu
						puts " =================="
						puts "| GAME OVER !!!!!! |"
						puts " =================="
						verification = false
					else
						# appel methode pyramide avec paramètre position
						pyramide(position)
						# Fin
						puts "Vous êtes à la #{position}ème position"
					end
				else
					# appel methode pyramide avec paramètre position
						pyramide(position)
						# Fin
					puts "Vous êtes à la #{position}ème position"
				end
			break if verification == false
		end
	end
end

pyramide = Monte.new
pyramide.jouer
