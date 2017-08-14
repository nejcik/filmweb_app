Rails.application.routes.draw do

  resources :users
  resources :review_posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get 'review_posts/show'
  get 'static_pages/about'
  get 'static_pages/home'
  get 'static_pages/help'

  #should look like this:
  # get  '/help',    to: 'static_pages#help'
  # get  '/about',   to: 'static_pages#about'

end
