require "rspec"
require "./Lexiconomitron.rb"

describe Lexiconomitron do 
	before :each do
    @subject = Lexiconomitron.new
  end


  describe "#eat_t" do
    it "removes every letter t from the input" do
      @lexi =  @subject
      expect(@lexi.eat_t"great scott!").to eq("grea sco!") 
    end
  end
  describe "#shazam" do
    it "takes an array of words and reverse them and return first and last" do
      # result =  @subject.shazam
      phrase_array = ["This", "is", "a", "boring", "test"]
      expect(@subject.shazam(phrase_array)).to eq(["sihT", "tset"])
    end
  end

  describe "#oompa_loompa" do
    it "takes an array of words, returns new array with words whose size is < 3 characters" do
      phrase_array = ["if", "you", "wanna", "be", "my", "lover"]
      expect(@subject.oompa_loompa(phrase_array)).to eq(["if", "you", "be", "my"])
    end
  end
end
