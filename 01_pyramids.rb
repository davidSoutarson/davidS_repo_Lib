def wtf_pyramid
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  print "> "
  number=gets.chomp.to_i
  if number.even?
    puts "Retry Bien Essayé ;)"
    wtf_pyramid
  else
  puts "Voici la pyramide : "
  i=number
  u=1

while i <= number
    puts " "*i + "#"*u
    i -= 1
    u = u + 2
    if u >= number
      while i >= 1
      puts " "*i + "#"*u
      i += 1
      u = u - 2
      if u < 0
        break
      end
      end
      break
    end
  end
end
end

wtf_pyramid
