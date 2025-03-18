require_relative './delimiter_parser'
require_relative './number_processor'

class StringCalculator
  def initialize
    @delimiter_parser = DelimiterParser.new
    @number_processor = NumberProcessor.new
  end

  def add(input)
    return 0 if input.empty?

    # Parse delimiters and extract numbers
    delimiter, numbers = @delimiter_parser.parse(input)

    # Split and process numbers
    num_array = @number_processor.process(numbers, delimiter)

    num_array.sum
  end
end
