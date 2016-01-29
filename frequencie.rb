puts "Ecrivez une phrase"
text = gets.chomp
words=text.tr(',.:"\'',' ').downcase.split()
frequencies=Hash.new(0)
words.each{|word|frequencies[word]+=1}
frequencies=frequencies.sort_by{|k,v|v}
frequencies.reverse!
frequencies.each{|k,v| puts "Le mot #{k} apparait #{v} fois"}
