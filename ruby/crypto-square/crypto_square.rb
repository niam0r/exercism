class Crypto
  def initialize(plaintext)
    @normalized = plaintext.downcase.gsub(/[^a-z0-9]\s*/, '')
  end

  def ciphertext
    @normalized
  end
end
