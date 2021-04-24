## takes in a keyword and an array of strings
## returns a hash which has each substring 
## that was found and how many times it was found
def substrings(word, dict)
  print "List of words: ",dict,"\n"
  puts "Key word: " + word
  print "\nHash: "
  print(dict.reduce( {} ) do |count, str|
    if word.include?(str)
      if count[str] == nil
        count[str] = 1
      else
        count[str]+=1
      end
    end
    count
  end)
  puts
end

#dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
dictionary = ["hotdog","cats","catastrophe","lo","hello","low","below","be","cat","at","dog","hotdog","hot","do"]
substrings("hotdog", dictionary)
