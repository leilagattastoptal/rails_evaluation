Rails.application.routes.draw do
  #root "archmages#index"

  resources :archmages do
    resources :schools
  end
  resources :mages
end
