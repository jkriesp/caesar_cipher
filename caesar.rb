def caesar_cipher(string, key)
str_array = string.split

  str_array.each do |i|
    i.split("").each { |n| 
      #check if capital letters
      if n.ord > 64 && n.ord < 91
        if n.ord + key > 91
          letter_encoded = n.ord + key - 26
        elsif n.ord < 64 || n.ord > 91
          letter_encoded = n.ord
        else
          letter_encoded = n.ord + key       
        end
      else
        if n.ord + key > 123
          letter_encoded = n.ord + key - 26
        elsif n.ord < 97 || n.ord > 123
          letter_encoded = n.ord
        else
          letter_encoded = n.ord + key       
        end
      end
      
      print letter_encoded.chr
    }
    print " "
  end
  puts "" #add a newline before quitting script
end

caesar_cipher("What a string!", 5)