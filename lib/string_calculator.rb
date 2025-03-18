class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = ","

    # Check for custom delimiter at the beginning
    if numbers.start_with?("//")
      parts = numbers.split("\n", 2)
      delimiter = parts[0][2..]
      numbers = parts[1]
    end

    # Replace new lines with the delimiter and split by it
    numbers.gsub("\n", delimiter).split(delimiter).map(&:to_i).sum
  end
end

