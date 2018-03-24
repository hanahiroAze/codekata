require "./can"
require "spec_helper"

describe "Can#initialize" do
  subject do
    Can.new(cost_par_can)
  end

  context "int cost" do
    let(:cost_par_can) { 1 }

    it "assigns floated cost" do
      expect(subject.instance_variable_get(:@cost_par_can)).to eq(1.0)
    end
  end

  context "float cost" do
    let(:cost_par_can) { 2.0 }

    it "assigns floated cost" do
      expect(subject.instance_variable_get(:@cost_par_can)).to eq(2.0)
    end
  end

  context "string cost" do
    let(:cost_par_can) { "3.0" }

    it "assigns floated cost" do
      expect(subject.instance_variable_get(:@cost_par_can)).to eq(3.0)
    end
  end
end

