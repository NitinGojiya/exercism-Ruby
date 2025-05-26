class ETL
  def self.transform(old)
    new = {}
    old.each_pair do |key,value|
      value.each do |ar_value|
        new[ar_value.downcase] = key
      end
    end
    new
  end
end
 old = {
      1 => ["A"]
    }
ETL.transform(old)