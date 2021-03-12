Rails.application.routes.draw do
  root "employees#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :employees do
    resources :tasks
  end
end
