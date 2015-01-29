Rails.application.routes.draw do
  resources :people

  root "pages#home"
end
