def caesar_cipher(phrase="What a string!", shift=5)
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
  puts phrase

end

caesar_cipher()
#caesar_cipher("Olivia", 10)