# frozen_string_literal: true

class User
  module Avatar
    def profile_image_url
      @profile_image ||=
        Digest::MD5
        .hexdigest(self.email.downcase)
        .then { |hash| "https://www.gravatar.com/avatar/#{hash}" }
    end
  end
end
