require "./lib/can"
require "./lib/stock"
require "spec_helper"

describe "Stock#initialize" do
  subject do
    Stock.new(number_of_cans)
  end

  let(:number_of_cans) { 10 }

  it "initialize by given parameter" do
    expect(subject.instance_variable_get(:@cans).count).to eq(10)
  end
end

describe "Stock#buy_in" do
  subject do
    stock.buy_in(number_of_cans)
  end

  let(:stock) { Stock.new(number_of_cans) }
  let(:number_of_cans) { 10 }

  it "assign 10 cans to stock" do
    subject
    expect(stock.instance_variable_get(:@cans).count).to eq(20)
  end
end

describe "Stock#will_out?" do
  subject do
    stock.will_out?(number_of_cans)
  end

  let(:stock) { Stock.new(10) }

  context "number_of_cans within stock" do
    let(:number_of_cans) { 10 }

    it "return false" do
      expect(subject).to eq(false)
    end
  end

  context "number_of_cans over stock" do
    let(:number_of_cans) { 11 }

    it "return true" do
      expect(subject).to eq(true)
    end
  end
end

describe "Stock#issue" do
  subject do
    stock.issue(number_of_cans)
  end

  let(:stock) { Stock.new(10) }

  context "number_of_cans within stock" do
    let(:number_of_cans) { 2 }

    it "return 2 cans" do
      expect(subject.count).to eq(2)
    end
  end

  context "number_of_cans over stock" do
    let(:number_of_cans) { 11 }

    it "return nil" do
      expect(subject).to eq(nil)
    end
  end
end
