Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :fruits do
    collection do
      get :list
      match 'tastegood', to: 'fruits#show', via: :all
    end
  end



  root 'fruits#list'


 end
