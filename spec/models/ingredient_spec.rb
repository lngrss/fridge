describe "#nick_name" do
  subject { ingredient.nick_name() }
  context "when the ingredient has a colour and brand" do
    let(:ingredient) { binding.pry ; Ingredient.create({ :brand => "Teseract", :colour => "orange"}) }
    it "returns the first three letters of colour and last three of brand as nickname" do
      expect subject.to eq "oraact"
    end
  end

  # context "when the ingredient has a colour and no brand" do
  #   let(:ingredient) { Ingredient.create({ :brand => "Teseract", :colour => "orange"}) }
  #   it "returns the first three letters of colour and ish" do
  #     expect { subject } to eq "oraish"
  #   end
  # end
end
