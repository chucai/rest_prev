RestPrev::Application.routes.draw do
  resources :interfaces

  root :to => 'interfaces#index'
end
