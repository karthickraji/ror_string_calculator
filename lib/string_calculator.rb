module StringCalculator

  def self.add(string_numbers)
    numbers = get_numbers_from_string(string_numbers)
    negative_num_arr = find_negative_numbers(numbers)
    if not negative_num_arr.empty?
      "The negative numbers are not allowed: #{negative_num_arr.join(',')}"
    else
      numbers.sum
    end
  end

  def self.find_negative_numbers(numbers)
    arr = []
    return arr if numbers.empty?
    numbers.map{|x| arr.push(x) if x.negative?}
    arr
  end

  def self.get_numbers_from_string(string_numbers)
    string_numbers.scan(/\-?\d+/).map(&:to_i)
  end
end
