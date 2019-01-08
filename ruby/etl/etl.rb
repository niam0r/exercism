class ETL
  def self.transform(old)
    new_h = {}
    old.each do |k, values|
      values.each do |v|
        new_h[v.downcase] = k
      end
    end
    return new_h
  end
end
