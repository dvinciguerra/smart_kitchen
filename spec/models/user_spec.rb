# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) do
    create :user
  end

  describe 'create' do
    it 'creates a new user' do
      expect { user }
        .to change(described_class, :count)
        .by(1)
    end
  end
end
