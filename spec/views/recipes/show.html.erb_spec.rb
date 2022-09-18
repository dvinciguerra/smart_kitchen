require 'rails_helper'

RSpec.describe "recipes/show", type: :view do
  before(:each) do
    @recipe = assign(:recipe, Recipe.create!(
      title: "Title",
      description: "MyText",
      serving: "Serving",
      cooking_time: "Cooking Time"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Serving/)
    expect(rendered).to match(/Cooking Time/)
  end
end
