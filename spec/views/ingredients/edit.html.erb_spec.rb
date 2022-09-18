require 'rails_helper'

RSpec.describe "ingredients/edit", type: :view do
  before(:each) do
    @ingredient = assign(:ingredient, Ingredient.create!(
      recipe: nil,
      name: "MyString",
      amount: "MyString"
    ))
  end

  it "renders the edit ingredient form" do
    render

    assert_select "form[action=?][method=?]", ingredient_path(@ingredient), "post" do

      assert_select "input[name=?]", "ingredient[recipe_id]"

      assert_select "input[name=?]", "ingredient[name]"

      assert_select "input[name=?]", "ingredient[amount]"
    end
  end
end
