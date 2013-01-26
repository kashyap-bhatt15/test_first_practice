def translate(words)
	word = words.split(' ')
	w2 = Array.new

	word.each_with_index do |w,i|
		match = w.match(/\A[^aeiou]{1,}u|\A[^aeiou]{1,}/i).to_s || ""
		punc = w.match(/\W{1,}\z/).to_s || ""
		if w == w.capitalize
			w2[i] = w.start_with?("a","e","i","o","u") ? w.concat("ay").capitalize : w.gsub(/\A[^aeiou]{1,}u|\A[^aeiou]{1,}/i,'').gsub(/\W{1,}\z/,'').concat(match + "ay" + punc).capitalize
		else
			w2[i] = w.start_with?("a","e","i","o","u") ? w.concat("ay") : w.gsub(/\A[^aeiou]{1,}u|\A[^aeiou]{1,}/i,'').gsub(/\W{1,}\z/,'').concat(match + "ay" + punc)
		end

	end
	
	w2.join(' ')
end
