require "./can"
require "spec_helper"

describe "Can#initialize" do
  subject do
    Can.new(cost_par_can: cost_par_can, cost_par_pond: cost_par_pond, weight_par_can: weight_par_can)
  end

  context "int cost" do
    let(:cost_par_can) { 1 }
    let(:cost_par_pond) { 1 }
    let(:weight_par_can) { 0.4 }

    it "assigns floated cost" do
      expect(subject.instance_variable_get(:@cost_par_can)).to eq(1.0)
    end

    it "assigns floated pond cost" do
      expect(subject.instance_variable_get(:@cost_par_pond)).to eq(1.0)
    end

    it "assigns floated weight_par_can" do
      expect(subject.instance_variable_get(:@weight_par_can)).to eq(0.4)
    end
  end
end

describe "Can#cost_by_numbers" do
  subject do
    can.cost_by_numbers(number_of_cans)
  end

  let(:can) do
    Can.new(cost_par_can: 1, cost_par_pond: 1, weight_par_can: 1)
  end

  context "int cost" do
    let(:number_of_cans) { 1 }

    it "assigns floated cost" do
      expect(subject).to eq(1.0)
    end
  end

  context "float cost" do
    let(:number_of_cans) { 2.0 }

    it "assigns floated cost" do
      expect(subject).to eq(2.0)
    end
  end

  context "string cost" do
    let(:number_of_cans) { "3.0" }

    it "assigns floated cost" do
      expect(subject).to eq(3.0)
    end
  end
end

