module StringCalculator

  def self.add(string_numbers)
    return 0 if string_numbers.empty?
  end

  def get_number_from_string(string_numbers)
    numbers = string_numbers.split(",").map{|x| x.to_i}
    numbers.sum
  end

end
