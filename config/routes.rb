Rails.application.routes.draw do
  root 'ideas_for_homeless#index'

  post 'personal_story/create',   to: 'personal_story#create'   
  get 'personal_story/show'
  get 'personal_story/delete'
  devise_for :contributors
  resources :shelters
  resources :contributor_shelters
  resources :personal_stories
  resources :ideas_for_homeless
  resources :givings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
