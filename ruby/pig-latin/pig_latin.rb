class PigLatin
  def self.translate(input)
    input.split(' ').map { |word| process_word(word) }.join(' ')
  end

  def self.process_word(word)
    if word.=~(/\A([aeiou]|xr|yt)/)
      "#{word}ay"
    elsif word.=~(/\A[^aeiouy]qu/)
      "#{word[3..-1]}#{word[0]}quay"
    elsif word.=~(/\A[^aeiouy]/) && word[1].=~(/\A[^aeiouy]/) && word[2].=~(/\A[^aeiouy]/)
      "#{word[3..-1]}#{word[0..2]}ay"
    elsif word.=~(/\A[^aeiouy]/) && word[1].=~(/\A[^aeiouy]/) || word.=~(/\Aqu/)
      "#{word[2..-1]}#{word[0..1]}ay"
    elsif word.=~(/\A[^aeiou]/)
      "#{word[1..-1]}#{word[0]}ay"
    end

  end
end

# p PigLatin.translate("koala")


# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word. Please note that "xr" and "yt" at the beginning of a word make vowel sounds (e.g. "xray" -> "xrayay", "yttria" -> "yttriaay").
# Rule 2: If a word begins with a consonant sound, move it to the end of the word and then add an "ay" sound to the end of the word. Consonant sounds can be made up of multiple consonants, a.k.a. a consonant cluster (e.g. "chair" -> "airchay").
# Rule 3: If a word starts with a consonant sound followed by "qu", move it to the end of the word, and then add an "ay" sound to the end of the word (e.g. "square" -> "aresquay").
# Rule 4: If a word contains a "y" after a consonant cluster or as the second letter in a two letter word it makes a vowel sound (e.g. "rhythm" -> "ythmrhay", "my" -> "ymay").
