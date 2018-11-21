class Brackets
  def self.paired?(str)
    match = { '(' => ')', '[' => ']', '{' => '}' }
    str.gsub(/({})*(\[\])*(\(\))*/, '').empty?


  end
end
