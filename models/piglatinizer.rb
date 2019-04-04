class PigLatinizer
    attr_accessor :string
    attr_reader :piglatinize

    def initialize(str = "")
        @string = str
    end

    def piglatinize(string)
        str_arr = @string.split(" ")
        first_vowel = word.index(/[aeiouAEIOU]/)
        if word.length > 1 && first_vowel != 0
            return word.slice(first_vowel..word.length) + word[0..(first_vowel-1)] + "ay"
        else
            return word + "way"
        end
    end
    # def piglatinize(str)
    #     str_arr = @string.split(" ")
    #     str_arr.collect! {|str|
    #         str.slice(2..str.length) + str.slice(0..2) + "ay"
    #     }
    #     str_arr.join(" ")
    # end

end