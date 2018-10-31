Rails.application.routes.draw do
  get 'givings/index'
  get 'givings/create'
  get 'givings/new'
  get 'givings/show'
  get 'givings/update'
  get 'givings/delete'
  get 'givings/edit'
  get 'personal_stories/index'
  get 'personal_stories/create'
  get 'personal_stories/new'
  get 'personal_stories/update'
  get 'personal_stories/show'
  get 'personal_stories/delete'
  get 'ideas_for_homeless/index'
  get 'ideas_for_homeless/create'
  get 'ideas_for_homeless/show'
  get 'ideas_for_homeless/new'
  get 'ideas_for_homeless/update'
  get 'ideas_for_homeless/delete'
  get 'personal_story/index'
  get 'personal_story/update'
  get 'personal_story/new'
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
