class Change
  def self.generate(arr, n)
    arr.reject {|coin| coin > n}
    return [n] if arr.include?(n)
    copy = Marshal.load(Marshal.dump(arr))
    return arr if copy.sum == n

  end
end
