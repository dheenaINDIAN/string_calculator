require_relative '../lib/number_processor'

RSpec.describe NumberProcessor do
  let(:processor) { NumberProcessor.new }

  it 'splits and processes numbers correctly' do
    result = processor.process('1,2,3', ',')
    expect(result).to eq([1, 2, 3])
  end

  it 'handles new lines and delimiters' do
    result = processor.process("1\n2,3", ',')
    expect(result).to eq([1, 2, 3])
  end

  it 'raises an exception for negative numbers' do
    expect { processor.process('1,-2,3', ',') }
      .to raise_error('negative numbers not allowed: -2')
  end

  it 'raises an exception for multiple negative numbers' do
    expect { processor.process('1,-2,-3,4', ',') }
      .to raise_error('negative numbers not allowed: -2, -3')
  end
end
