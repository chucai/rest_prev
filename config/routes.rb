RestPrev::Application.routes.draw do
  get "api/show"

  resources :interfaces



  root :to => 'interfaces#index'

  match "/api/*url" => "api#show", :format => :json

end
