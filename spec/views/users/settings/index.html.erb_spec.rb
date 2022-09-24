require 'rails_helper'

RSpec.describe "users/settings/index", type: :view do
  before(:each) do
    assign(:users_settings, [
      Users::Setting.create!(
        index: "Index"
      ),
      Users::Setting.create!(
        index: "Index"
      )
    ])
  end

  it "renders a list of users/settings" do
    render
    assert_select "tr>td", text: "Index".to_s, count: 2
  end
end
