# frozen_string_literal: true

require "faker"

10.times do
  Recipe.create(
    title: Faker::Food.dish,
    description: Faker::Lorem.paragraph,
    serving: "2 people",
    cooking_time: "45 minutes"
  )
end

