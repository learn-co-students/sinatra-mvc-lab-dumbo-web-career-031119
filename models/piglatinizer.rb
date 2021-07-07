class PigLatinizer

	attr_accessor :word
	@@VOWEL = %w(a e i o u)


	def initialize(blockoftext = "")
		@texts = blockoftext
	end

	def latinize
		arrVersionOfText = @texts.split(" ")
		latinized = []
		arrVersionOfText.each do |word|
			temp = word.split("")
			if isVowel(temp[0].downcase)
				temp << "way"
				temp = temp.join
			else
				counter = 0
				temp.each do |ltr|
					if !isVowel(ltr)
						counter += 1
					else
						break
					end
				end
				counter.times do
					temp << temp.shift
				end
				temp << "ay"
				temp = temp.join
			end
			latinized << temp
		end
		latinized.join(" ")
	end


	def piglatinize(word)
		temp = word.split("")
		nuword = []
		if temp.size == 1
			tempword = temp[0].split("")
			if isVowel(tempword[0].downcase)
				nuword << (temp[0] + "way")
			else
				counter = 0
				tempword.each do |ltr|
					if !isVowel(ltr)
						counter += 1
					else
						break
					end
				end
				counter.times do
				tempword << tempword.shift
				end
				nuword << tempword
			end

		else
			nuword << latinizewrds(word)
		end
		nuword.join(" ")
	end

	def isVowel (ltr)
	@@VOWEL.include?(ltr)
	end

	def latinizewrds (wrds)
		arrVersionOfText = wrds.split(" ")
		latinized = []
		arrVersionOfText.each do |word|
			temp = word.split("")
			if isVowel(temp[0].downcase)
				temp << "way"
				temp = temp.join
			else
				counter = 0
				temp.each do |ltr|
					if !isVowel(ltr)
						counter += 1
					else
						break
					end
				end
				counter.times do
					temp << temp.shift
				end
				temp << "ay"
				temp = temp.join
			end
			latinized << temp
		end
		latinized.join(" ")
	end

end