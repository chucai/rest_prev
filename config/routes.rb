RestPrev::Application.routes.draw do
  resources :interfaces

  root :to => 'welcome#index'
end
