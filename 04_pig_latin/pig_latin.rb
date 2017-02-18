#write your code here
def vowel?(a)
  #make this global when you learn more about classes later
  hash_vowels = {a: "a", e: "e", i: "i", o: "o", u: "u"}
  flag = false
  hash_vowels.each do |key, value|
    if value == a then
      flag = true
    end
  end
  flag

end

def phoneme_character(phomeme_character, current_phomeme_string)
    # i = current_phomeme_string.length
     #make this global when you learn more about classes later
     array_phomeme = ["sch", "qu"]
     #assume next character is part of a phoneme
     current_phomeme_string += phomeme_character
     i = 0
     is_phoneme = true
     while i < current_phomeme_string.length do
       #prove assumption false
       i2 = 0
       while i2 < array_phomeme.length do
        #if current_phomeme_string.to_a[i] <> array_phomeme[i2].to_a[i] then
    #       is_phoneme = false
  #       else
  #         is_phoneme = true
  #       end

         if is_phoneme then
           #exit early, assumption is still true
           i2 = array_phomeme.length
         else
           #continue to next phomeme from list
           i2 += 1
         end
       end

       if is_phoneme then
         #continue verifying next character is part of a phomeme
         i += 1
       else
         i = current_phomeme_string.length
       end
     end

     if not is_phoneme then
       phomeme_character = ""
     end
     phomeme_character
end

def translate(a)
  b = a.split(" ")
  i = 0
  while i < b.length do
    word = b[i].chars.to_a
    i2 = 0
    consonants = ""
    phoneme_string = ""
    phoneme_string_length = 0
    while i2 < word.length do
      if not vowel?(word[i2]) then
        phomeme_string += phoneme_character(word[i2], phoneme_string)
        phoneme_string_length = phoneme_string.length
        consonants += word[i2]
        word[i2] = ""
      else
        phomeme_string += phoneme_character(word[i2], phoneme_string)
        if phoneme_string_length < phoneme_string.length then
          phoneme_string_length = phoneme_string.length
          #treat phoneme's as consanants
          consonants += word[i2]
          word[i2] = ""
        else
          #exit early.  learn whether ruby has exit sub later.
          i2 = word.length
        end
      end
      i2 += 1
    end
    b[i] = word.join + consonants + "ay"
    i += 1
  end
  a = b.join(" ")
  a
end
