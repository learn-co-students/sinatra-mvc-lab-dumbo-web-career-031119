class PigLatinizer
    attr_accessor :string
    attr_reader :piglatinize

    def initialize(str = "")
        @string = str
    end

    def piglatinize(string)
        str_arr = string.split(" ")
        str_arr.collect! {|word|
            first_vowel = word.index(/[aeiouAEIOU]/)
            if word.length > 1 && first_vowel != 0
                word = word.slice(first_vowel..word.length) + word[0..(first_vowel-1)] + "ay"
            else
                word = word + "way"
            end
        }
        str_arr.join(" ")
    end

end