Rails.application.routes.draw do
  get "fortune", controller: "my_examples", action: "random_fortune"
end
