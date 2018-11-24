def substrings(string, dictionary)
  string_array = string.downcase.split(/\W+/)
  substring_hash = Hash.new(0)
  substring_array = []
  dictionary.each do |x|
    string_array.each do |e|
      y = 0
      while y <= e.length
        substr = e[y..-1]
        if substr == x
          substring_array.push(substr)
          break
        elsif x == e[0..(e.length - y)]
          substring_array.push(e[0..(e.length - y)])
        end
        
        y += 1
      end
    end
    
  end
  substring_array.each {|word| substring_hash[word] += 1}
  
  puts substring_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)

