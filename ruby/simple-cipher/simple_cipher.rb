class Cipher
  attr_reader :key, :key_bytes

  def initialize(key = nil, key_length = 100)
    if key
      @key = check_key_validity(key)
      key_bites = to_bytes(@key)
    else
      @key_bytes = []
      key_length.times { @key_bytes << Random.rand(0...26) }
      @key = to_string(@key_bytes)
    end
  end

  def encode(plaintext)

  end

  private

  def to_bytes(string)
    string.unpack('c*').map { |c| c - 97 }
  end

  def to_string(bytes)
    bytes.map { |c| c + 97 }.pack('c*')
  end

  def check_key_validity(key)
    if key =~ /[A-Z]/
      fail ArgumentError.new('Keys must not contain capital letters')
    elsif key =~ /[0-9]/
      fail ArgumentError.new('Keys must not contain numbers')
    elsif key.empty?
      fail ArgumentError.new('Keys must contain at least one letter')
    else
      key
    end
  end
end
