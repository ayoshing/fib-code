require_relative '../Fib.rb'

describe Fib do

  before do
    @fib = Fib.new(10)
  end

  describe ".sequence" do
    context "initialized with 10 and provided no arguments" do
      it "returns 89" do
        expect(@fib.sequence()).to eq(89)
      end
    end
  
    context "given 11" do
      it "returns 144" do
        expect(@fib.sequence(11)).to eq(144)
      end
    end
  end

  describe ".memo.length()" do
    context "given 5 terms" do
      it "returns 5" do
        @fib.sequence(5)
        expect(@fib.memo.length()).to eq(5)
      end
    end
  end

  describe ".sum_of_even_terms" do
    context "initialized with 10 terms" do
      it "returns 143" do
        @fib.sequence(10)
        expect(@fib.sum_of_even_terms).to eq(143)
      end
    end
  end
end