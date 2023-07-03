Rails.application.routes.draw do
  get "/random_fortune", controller: "my_examples", action: "generate_fortune"
  get "/random_number", controller: "my_examples", action: "generate_number"
  get "/99_bottles_of_beer", controller: "my_examples", action: "beer_song"
end
