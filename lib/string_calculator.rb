class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = ","

    # Check for custom delimiter at the beginning
    if numbers.start_with?("//")
      parts = numbers.split("\n", 2)
      delimiter = parts[0][2..]  # Extract delimiter
      numbers = parts[1]
    end

    num_array = numbers.gsub("\n", delimiter).split(delimiter).map(&:to_i)

    # Collect negative numbers
    negatives = num_array.select { |n| n < 0 }

    unless negatives.empty?
      raise "negative numbers not allowed: #{negatives.join(', ')}"
    end

    num_array.sum
  end
end

