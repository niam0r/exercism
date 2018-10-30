class Isogram
  def self.isogram?(input)
    processed = input.gsub(/\W/, '').downcase.chars.sort
    processed.uniq == processed
  end
end
