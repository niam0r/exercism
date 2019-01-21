class PigLatin
  def self.translate(input)
    input.split(' ').map { |word| "#{word}ay" }.join(' ')
  end
end
