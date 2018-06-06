require 'spec_helper'

describe Fibonacci do

  before(:all) do
    @fib = Fibonacci.new
  end

  it 'should have the first 5 terms of the fibonacci sequence' do
    expect(@fib.fibonacci_array.last).to eq 13

  end
















end
