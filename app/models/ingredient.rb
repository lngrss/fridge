class Ingredient < ApplicationRecord
  def nick_name
    if colour & name
      colour[0..2] + name[-3..]
    elsif colour
      colour[0..2] + "ish"
    elsif name
      "Me" + name[-3..]
    else
      "IHaveALazyOwner"
    end
  end
end
