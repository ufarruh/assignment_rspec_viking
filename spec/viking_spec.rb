require_relative '../lib/viking'

describe Viking do
  describe "#initialize" do

    let(:viking){ Viking.new("Farruh", 100) }
    let(:viking_rand){ Viking.new }
    let(:bow){ Bow.new }

    it "passing a name to Viking sets it as new name" do
      expect(viking.name).to eq("Farruh")
    end

    it "returns RandomViking, if name attribute not passed" do
      expect(viking_rand.name).to eq("RandomViking")
    end

    it "health is 100 by default" do
      expect(viking_rand.health).to eq(100)
    end

    it "sets new health if argument passed" do
      allow(viking).to receive(:health).and_return(80)
      expect(viking.health).to eq(80)
    end

    it "health cannot be overwritten once it's set on initialize" do
      expect{ viking.health=90 }.to raise_error(NoMethodError)
    end

    it "Vikings weapon is set to nil on initialize" do
      expect(viking.weapon).to eq(nil)
    end
  end
end
