Rails.application.routes.draw do
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
  get 'personal_story/create'
  get 'personal_story/show'
  get 'personal_story/delete'
  get 'contributor_shelters/index'
  get 'contributor_shelters/new'
  get 'contributor_shelters/show'
  get 'contributor_shelters/create'
  get 'contributor_shelters/update'
  get 'contributor_shelters/delete'
  get 'shelters/index'
  get 'shelters/create'
  get 'shelters/show'
  get 'shelters/new'
  get 'shelters/update'
  get 'shelters/delete'
  devise_for :contributors
  resources :shelters
  resources :contributor_shelters
  resources :personal_stories
  resources :ideas_for_homeless
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
