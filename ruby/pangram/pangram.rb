class Pangram
  def self.pangram?(sentence)
    'abcdefghijklmnopqrstuvwxyz' == sentence.gsub(/[\s+_\d\W]/, "").downcase.chars.uniq.sort.join('')
  end
end
