class Ingredient < ApplicationRecord
  def nick_name()
    if color & brand
      color[0..2] + brand[-3..]
    elsif color
      color[0..2] + "ish"
    elsif brand
      "Me" + brand[-3..]
    else
      "IHaveALazyOwner"
    end
  end
end
