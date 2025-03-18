class NumberProcessor
  def process(numbers, delimiter)
    num_array = numbers.gsub("\n", delimiter).split(delimiter).map(&:to_i)

    # Collect negative numbers
    negatives = num_array.select { |n| n < 0 }

    raise "negative numbers not allowed: #{negatives.join(', ')}" unless negatives.empty?

    num_array
  end
end
