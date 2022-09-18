json.extract! recipe, :id, :title, :description, :serving, :cooking_time, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
