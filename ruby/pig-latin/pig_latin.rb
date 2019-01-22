class PigLatin
  def self.translate(input)
    input.split(' ').map { |word| process_word(word) }.join(' ')
  end

  def self.process_word(word)
    vowels = ['a','e','i','o','u']
    consonants = [*'a'..'z'] - vowels
    if word.start_with?(*vowels, 'xr','yt')
      "#{word}ay"
    elsif word.=~(/\A[^aeiouy]qu/)
      "#{word[3..-1]}#{word[0]}quay"
    elsif word.start_with?(*consonants) && word[1].start_with?(*consonants) && word[2].=~(/\A[^aeiouy]/)
      "#{word[3..-1]}#{word[0..2]}ay"
    elsif word.start_with?(*consonants) && word[1].=~(/\A[^aeiouy]/) || word.start_with?('qu')
      "#{word[2..-1]}#{word[0..1]}ay"
    elsif word.start_with?(*consonants)
      "#{word[1..-1]}#{word[0]}ay"
    end
  end

  def vowel?(letter)
    ['a','e','i','o','u'].include?(letter)
  end
end
