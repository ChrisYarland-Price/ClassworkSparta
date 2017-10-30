class StringCalculator
  
  def self.add(string)
    if string != "" && nums = string.split(",")
        nums.map! {|n| n.to_i }
        nums.reduce(:+)
    else
       string.to_i
    end
  end

end