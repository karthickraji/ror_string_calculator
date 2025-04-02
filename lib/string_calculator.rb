module StringCalculator

  def self.add(string_numbers)
    numbers = get_number_from_string(string_numbers)
    numbers.sum
  end

  def self.get_number_from_string(string_numbers)
    string_numbers.scan(/\-?\d+/).map(&:to_i)
  end
end
