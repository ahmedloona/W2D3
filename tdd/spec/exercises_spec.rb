require "exercises"

describe "#my_uniq" do
  let(:array) {[1, 2, 1, 3, 3]}
  it "checks the count of the results array" do
    expect(my_uniq(array)).to eq([1, 2, 3])
  end

  it "replicates built-in #uniq method" do
    expect(my_uniq(array)).to eq(array.uniq)  
  end

  it "returns an empty array if array is empty" do
    expect(my_uniq([])).to eq([])
  end

  it "returns single element for an array of duplicates" do
    expect(my_uniq([1,1,1,1,1])).to eq([1])
  end
end

RSpec.describe Array do
  describe "two_sum" do 
    let(:array) {[-1, 0, 2, -2, 1]}
    it "returns all pairs of positions where elements at those positions sum to zero" do
      expect(array.two_sum).to eq([[0, 4], [2, 3]])
    end

    #it "returns pairs of positions where smaller index "
  end
end

describe "#my_transpose" do 
  subject(:matrix) { [[0, 1, 2], [3, 4, 5], [6, 7, 8]] }
  it "transposes a square matrix" do
    expect(my_transpose(matrix)).to eq(matrix.transpose)
  end

  it "transposes an empty matrix" do
    expect(my_transpose([])).to eq([].transpose)
  end
end

describe "#stock_picker" do 
  subject(:stocks) { [23, 24, 34, 20, 3, 99, 67.8, 4] }

  it "returns an array of length two" do
    expect(stock_picker(stocks).length).to eq(2)
  end

  it "the first index of the results array corresponds to the lowest stock price (buy) " do
    expect(stock_picker(stocks)[0]).to eq(3)
  end

  it "the second index of the results array corresponds to the highest stock price (sell) " do
    expect(stock_picker(stocks)[1]).to eq(99)
  end

end