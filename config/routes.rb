Rails.application.routes.draw do
  get "/all_games", to: 'games#param_games'
  get "/numbers", to: 'games#guess_a_number'
end 
