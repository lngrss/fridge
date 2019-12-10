#require_relative '../app/models/ingredient.rb'
require "pry"

describe "#nick_name" do
  subject { ingredient.nick_name() }
  context "when the ingredient has a colour and name" do
    let( :ingredient) { binding.pry; Ingredient.create({ :name => "Teseract", :colour => "orange"}) }
    it "returns the first three letters of colour and last three of name as nickname" do
      expect subject.to eq "oraact"
    end
  end

  # context "when the ingredient has a colour and no brand" do
  #   let(:ingredient) { Ingredient.create({ :brand => "Teseract", :colour => "orange"}) }
  #   it "returns the first three letters of colour and ish" do
  #     expect { subject } to eq "oraish"
  #   end
  # end

  # context "when the ingredient has no colour and a brand" do
  #   let(:ingredient) { Ingredient.create({ :brand => "Teseract", :colour => "orange"}) }
  #   it "returns Me and the last three letters of colour" do
  #     expect { subject } to eq "Meact"
  #   end
  # end

  # context "when the ingredient has no colour and no brand" do
  #   let(:ingredient) { Ingredient.create({ :brand => "Teseract", :colour => "orange"}) }
  #   it "returns string IHaveALazyOwner" do
  #     expect { subject } to eq "IHaveALazyOwner"
  #   end
  # end
end
