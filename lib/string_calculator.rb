module StringCalculator

  def self.add(string_numbers)
    return 0 if string_numbers.empty?
    splitted_num = string_numbers.split(",")
    converted_to_integer = splitted_num.map{|x| x.to_i}
    converted_to_integer.sum
  end

end
