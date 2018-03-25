require "./lib/cart"
require "spec_helper"

describe "Cart#initialize" do
  subject do
    Cart.new
  end

  it "initialize cart by 0" do
    expect(subject.instance_variable_get(:@number_of_cans)).to eq(0)
  end
end

describe "Cart#add_can" do
  subject do
    cart.add_can(number_of_cans)
  end

  let(:cart) do
    Cart.new
  end
  let(:number_of_cans) { 1 }

  it "add can to the cart" do
    subject
    expect(cart.instance_variable_get(:@number_of_cans)).to eq(1)
  end
end

describe "Can#return_to_shelf" do
  subject do
    cart.return_to_shelf(number_of_cans)
  end

  let(:cart) do
    Cart.new
  end
  let(:number_of_cans) { 1 }

  before do
    cart.add_can(10)
  end

  it "reduce cans in the cart" do
    subject
    expect(cart.instance_variable_get(:@number_of_cans)).to eq(9)
  end
end


describe "Can#number_of_cans" do
  subject do
    cart.number_of_cans
  end

  let(:cart) do
    Cart.new
  end
  before do
    cart.add_can(10)
  end

  it "reduce cans in the cart" do
    subject
    expect(subject).to eq(10)
  end
end
