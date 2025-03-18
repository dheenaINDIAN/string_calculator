require_relative '../lib/delimiter_parser'

RSpec.describe DelimiterParser do
  let(:parser) { DelimiterParser.new }

  it 'uses comma as default delimiter' do
    delimiter, numbers = parser.parse('1,2,3')
    expect(delimiter).to eq(',')
    expect(numbers).to eq('1,2,3')
  end

  it 'parses custom delimiter' do
    delimiter, numbers = parser.parse("//;\n1;2;3")
    expect(delimiter).to eq(';')
    expect(numbers).to eq('1;2;3')
  end
end
