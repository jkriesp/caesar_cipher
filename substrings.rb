def substrings(string, dictionary)
  string_array = string.downcase.split(/\W+/)
  substring_hash = Hash.new(0)
  substring_array = []
  dictionary.each do |x|
    string_array.each do |e|
      if e.include?x
        substring_array.push(x)
      end
    end
  end
  substring_array.each {|word| substring_hash[word] += 1}  
  puts substring_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)

