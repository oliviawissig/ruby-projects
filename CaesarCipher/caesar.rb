## Ruby program that mimics Caesar's Cipher, a simple encryption technique
## https://en.wikipedia.org/wiki/Caesar_cipher It uses a number to shift every
## character by a set value to display an encrypted version of the entered 
## phrase.
def caesar_cipher(phrase="What a string!", shift=5)
  print "Phrase: ",phrase,"\n"
  chars = phrase.chars

  chars = chars.map do |value|
    ascii = value.ord
    new_ascii = ascii + shift
    
    if ascii>=65 && ascii<=90
      #uppercase
      if new_ascii > 90
        temp = new_ascii - 90
        new_ascii = 64 + temp
      end
      value = new_ascii
    elsif ascii>=97 && ascii<=122
      #lowercase
      if new_ascii > 122
        temp = new_ascii - 122
        new_ascii = 96 + temp
      end
      value = new_ascii
    else
      #nothing
      value = value
    end
  end

  chars = chars.map {|value| value = value.chr}
  phrase = chars.join
end

encrypted_phrase = caesar_cipher()
#caesar_cipher("Olivia", 10)
print "Encrypted phrase: ",encrypted_phrase,"\n"