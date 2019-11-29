Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pleces#search"
  resources :pleces do
    collection do
      get 'search'
    end
  end
end
