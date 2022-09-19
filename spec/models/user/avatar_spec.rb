# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User::Avatar, type: :model do
  subject(:user) do
    create :user, name: 'Vince', email: 'vince@spec.com'
  end

  describe 'profile_avatar_url' do
    it 'returns the right user avatar url' do
      expect(user.profile_image_url)
        .to eq('https://www.gravatar.com/avatar/06700013d3e034ebcb8ce097ed50ed27')
    end
  end
end
