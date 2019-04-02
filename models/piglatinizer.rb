  class PigLatinizer

  @@vowels = "aeiou"
  @@vowels_array = @@vowels.split('')

  def piglatinize(text)
    word_arr = text.split
    word_arr.map do |word|
      if @@vowels.include?(word[0].downcase)
        word + "way"
      else
        letters = word.split('')
        first_vowel = letters.find {|letter|
          @@vowels.include?(letter)}
        fv_position = letters.find_index(first_vowel)
        first_consonants = word[0..fv_position-1]
        word[0..fv_position-1] = ''
        word + first_consonants + "ay"
      end
    end.join(" ")
    
  end
  
end   