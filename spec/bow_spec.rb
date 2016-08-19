# Your code here

require_relative '../lib/weapons/bow'

describe Bow do


  let(:bow_default){ Bow.new }
  let(:bow_no_arrow){ Bow.new(0) }

  describe "#initialize" do

    it "should not raise error when argument is not passed" do
      expect{ Bow.new }.not_to raise_error
    end

    it "has 10 arrows by default" do
      expect(bow_default.arrows).to eq(10)
    end

    it "starts with specified number of arrows if argument passed" do
      bow_default = instance_double("Bow", :arrows => 20)
      expect(bow_default.arrows).to eq(20)
    end
  end

  describe "#use" do

    it "using bow reduces arrow -1" do
      allow(bow_default).to receive(:use).and_return(9)
      expect(bow_default.use).to eq(9)
    end

    it "raises error if bow used with 0 arrows" do
      allow(bow_no_arrow).to receive(:out_of_arrows?).and_return(true)

      expect{ bow_no_arrow.use }.to raise_error("Out of arrows")
    end

  end
end
