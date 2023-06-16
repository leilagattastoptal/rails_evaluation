Rails.application.routes.draw do
  #root "archmages#index"

  resources :archmages
  resources :mages
end
