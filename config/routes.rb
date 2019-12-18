Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pleces#index"
  resources :pleces ,only:[:index,:show] do 
    collection do
      get 'search'
      get 'get_place_children', defaults: { format: 'json' }
      get 'get_place_grandchildren', defaults: { format: 'json' }
    end
  end
end
