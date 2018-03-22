require "./cashier"
require "spec_helper"

describe "Cashier#check" do
  subject do
    Cashier.new.check(number_of_cans)
  end

  context "one can" do
    let(:number_of_cans) { 1 }

    it "$0.65" do
      expect(subject).to eq("$0.65")
    end
  end

  context "three cans" do
    let(:number_of_cans) { 3 }

    it "$1" do
      expect(subject).to eq("$1")
    end
  end

  context "pound" do
    subject do
      Cashier.new.check(weight_of_cans)
    end

    let(:weight_of_cans) { "1pound" }

    it "$1.99" do
      expect(subject).to eq("$1.99")
    end
  end
end

