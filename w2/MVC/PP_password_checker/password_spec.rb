system("clear")
require "rspec"
require "./password"

describe PasswordChecker do
  before :each do
    @chequeador = PasswordChecker.new("pedriort","amor")
  end

  describe "#check_password_longer?" do
    it "check if the password is longer than 7 characters" do 
      expect(@chequeador.check_password_longer?).to eq(false)
    end
  end

  describe "#check_letter_symbols?" do
    it "check if the password has one letter, one numeber and one symbol" do
      expect(@chequeador.check_letter_symbols?).to eq(false)

     end
  end 
 end