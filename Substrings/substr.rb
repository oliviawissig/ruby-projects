def substrings(word, dict)
  puts "Word: " + word
  puts(dict.reduce( {} ) do |count, str|
    if word.include?(str)
      if count[str] == nil
        count[str] = 1
      else
        count[str]+=1
      end
    end
    count
  end)
end

#dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
dictionary = ["cats","catastrophe","lo","hello","low","below","be","cat","at","dog","hotdog","hot","do"]
substrings("hotdog", dictionary)