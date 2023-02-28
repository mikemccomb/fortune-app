Rails.application.routes.draw do
  get "/fortune", controller: "my_examples", action: "random_fortune"

  get "/lotto", controller: "my_examples", action: "lotto"

  get "/pageviews", controller: "my_examples", action: "pagecount"

  get "/booze", controller: "my_examples", action: "beer_bottles"
end
