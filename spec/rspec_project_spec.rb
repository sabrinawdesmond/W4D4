require "rspec"
require "rspec_project.rb"

describe "#remove_dups" do
  subject(:arr) { Array.new(4, "A") }

  context "properly accepts an argument" do
    it "accepts an array as an argument" do
      expect(arr).to be_an_instance_of(Array)
    end
    it "raises error if no array is given" do
      expect{ remove_dups(2) }.to raise_error("must accept an array")
    end
  end
end
