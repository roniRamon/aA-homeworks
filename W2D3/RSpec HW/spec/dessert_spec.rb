require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:cheesecake) {Dessert.new("cake", 50, chef)}
   let(:chef) { double("chef", name: "Den" ) }

  describe "#initialize" do
    it "sets a type" do
      expect(cheesecake.type).to eq("cake")
    end


    it "sets a quantity" do
      expect(cheesecake.quantity).to eq(50)
    end

    it "starts ingredients as an empty array" do
      expect(cheesecake.ingredients).to be_empty
    end


     it "raises an argument error when given a non-integer quantity" do
       expect { Dessert.new("cake", "50", "Dan")}.to raise_error(ArgumentError)
     end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      cheesecake.add_ingredient("sugar")
      expect(cheesecake.ingredients).to include("sugar")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      arr = %w(sugar egg cheese)
      cheesecake.add_ingredient("sugar")
      cheesecake.add_ingredient("egg")
      cheesecake.add_ingredient("cheese")
      cheesecake.mix!
      expect(cheesecake.ingredients).to_not eq(arr)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      cheesecake.eat(20)
      expect(cheesecake.quantity).to eq(30)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect{cheesecake.eat(100)}.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef Dan the Great Baker")
      expect(cheesecake.serve).to eq("Chef Dan the Great Baker has made 50 cakes!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(cheesecake)
      cheesecake.make_more
    end
  end
end
