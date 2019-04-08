Rails.application.routes.draw do
  devise_for :users
  scope "(:locale)" , locale: /#{I18n.available_locales.join("|")}/   do



  resources :eronotes
    get '/thanks' => 'eronotes#thanks'
    get '/about' => 'eronotes#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'eronotes#new' 
    get '/404' , to: 'errors#not_found'
    get '/422' , to: 'errors#forbidden'
    get '/500' , to: 'errors#server_error'


  end
end
