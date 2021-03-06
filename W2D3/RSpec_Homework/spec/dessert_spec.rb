require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  subject(:brownie) { Dessert.new('brownie', 50) }
  describe "#initialize" do
    it "sets a type" do
      expect(brownie.type).to eq('brownie')
    end
    it "sets a quantity" do
      expect(brownie.quantity).to eq(50)
    end
    it "starts ingredients as an empty array" do
      expect(brownie.ingredients).to be_empty
    end
    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new('brownie', 50)}.to raise_error("Amount must be integer")
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect brownie.add_ingredient('chocolate')
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredients - ["milk", "flour", "butter", "sugar", "chcolate"]
      ingredients.each do |ingredient|
        brownie.add_ingredient(ingredient)
      end
      expect(brownie.ingredients).to eq(ingredients)
      brown.mix!
      expect(brownie.ingredients).not_to eq(brownie.ingredients)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect(brownie.quantity).not_to eq(brownie.quantity)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { Dessert.new('brownie', 50)}.to raise_error("Not enough for everyone!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(:chef).to receive(:titleize).and_return("MasterChef Gordon Ramsay")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(:chef).to receive(:bake).with(brownie)
    end
  end
end
