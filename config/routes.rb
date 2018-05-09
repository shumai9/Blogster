Rails.application.routes.draw do
  root 'articles#index'
  
  resources :articles do
    member do
      get :delete
    end
  end

  



  # get 'home/index'
  # get 'home/comment'
  # get 'home/uturn'
  # get 'articles/post'
  # get 'articles/ruby'
  get'home/escape_output'
  get 'home/uturn'
  # get 'articles/bloged'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
 
    


    
