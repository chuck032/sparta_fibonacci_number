require 'fibonacci'

describe Fibonacci do
  before(:each) do
    @fib = Fibonacci.new
  end

  it 'should have the first 10 terms of the fibonacci sequence' do
    @fib.create_fibonacci_array(8)
    expect(@fib.fibonacci_array[2]).to eq 3
    expect(@fib.fibonacci_array.last).to eq 89
    expect(@fib.fibonacci_array.count).to eq 10
  end

  it 'should give the even terms of the first 10 fibonacci numbers' do
    @fib.create_fibonacci_array(8)
    expect(@fib.even[0]).to eq 2
    expect(@fib.even.last).to eq 34
    expect(@fib.even.count).to eq 3
  end

  it 'should sum even terms of first 10 fibonacci numbers' do
    @fib.create_fibonacci_array(8)
    @fib.even
    expect(@fib.sum).to eq 44
  end

  it 'should be a fibonacci sequence that does not exceed 4,000,000' do
    @fib.less_4_mill(4000000)
    expect(@fib.fibonacci_array[2]).to eq 3
    expect(@fib.fibonacci_array.last).to eq 3524578
  end

  it 'should sum the even terms of fibonacci sequence that does not exceed 4,000,000' do
    @fib.less_4_mill(4000000)
    @fib.even
    expect(@fib.sum).to eq 4613732
  end

end
