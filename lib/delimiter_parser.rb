class DelimiterParser
  def parse(input)
    delimiter = ','

    if input.start_with?('//')
      parts = input.split("\n", 2)
      delimiter = parts[0][2..] # Extract delimiter
      input = parts[1]
    end

    [delimiter, input]
  end
end
