require_relative "../lib/warmup"

describe Warmup do

	let(:warmup) {Warmup.new}

	describe '#gets_shout' do
		it 'returns upcase word' do
			word = "warmup"
			allow(warmup).to receive(:gets).and_return(word)

			expect(warmup.gets_shout).to eq("WARMUP")
		end
	end

  describe "#triple_size" do
    it "triples the size of passed array" do
      arr = [1, 1, 1]
      new_arr = 9
      expect(warmup.triple_size(arr)).to eq(new_arr)
    end
  end

  describe "#calls_some_methods" do
    it "returns 'Hey, give me a string' when nothing is passed" do
      expect{warmup.calls_some_methods("")}.to raise_error("Hey, give me a string!")
    end

    it "responds to upcase! method" do
    #  expect()
    end
  end
end
