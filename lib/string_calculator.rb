module StringCalculator

  def self.add(string_numbers)
    return 0 if string_numbers.empty?
    get_number_from_string(string_numbers)
  end

  def self.get_number_from_string(string_numbers)
    string_numbers.split(", ").map(&:to_i).sum
  end

end
