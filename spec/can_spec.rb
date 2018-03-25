require "./lib/can"
require "spec_helper"

describe "Can#initialize" do
  subject do
    Can.new(cost_par_can: cost_par_can, cost_par_pond: cost_par_pond, once_par_can: once_par_can)
  end

  let(:cost_par_can) { 1 }
  let(:cost_par_pond) { 2 }
  let(:once_par_can) { 0.4 }

  it "assigns floated cost" do
    expect(subject.instance_variable_get(:@cost_par_can)).to eq(1.0)
  end

  it "assigns floated pond cost" do
    expect(subject.instance_variable_get(:@cost_par_pond)).to eq(2.0)
  end

  it "assigns floated weight_par_can" do
    expect(subject.instance_variable_get(:@once_par_can)).to eq(0.4)
  end
end

describe "Can#cost_by_numbers" do
  subject do
    can.cost_by_numbers(number_of_cans)
  end

  let(:can) do
    Can.new(cost_par_can: 1, cost_par_pond: 100, once_par_can: 1)
  end
  let(:number_of_cans) { 1 }

  it "assigns floated cost" do
    expect(subject).to eq(1.0)
  end
end

describe "Can#cost_by_weight" do
  subject do
    can.cost_by_weight(number_of_cans)
  end

  let(:can) do
    Can.new(cost_par_can: 100, cost_par_pond: 1, once_par_can: 1)
  end
  let(:number_of_cans) { 3 }

  it "assigns floated cost" do
    expect(subject).to eq(0.1875)
  end
end
