require 'rails_helper'

RSpec.describe "recipes/new", type: :view do
  before(:each) do
    assign(:recipe, Recipe.new(
      title: "MyString",
      description: "MyText",
      serving: "MyString",
      cooking_time: "MyString"
    ))
  end

  it "renders new recipe form" do
    render

    assert_select "form[action=?][method=?]", recipes_path, "post" do

      assert_select "input[name=?]", "recipe[title]"

      assert_select "textarea[name=?]", "recipe[description]"

      assert_select "input[name=?]", "recipe[serving]"

      assert_select "input[name=?]", "recipe[cooking_time]"
    end
  end
end
