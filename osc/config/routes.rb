Osc::Application.routes.draw do

  get "author_sessions/new"

  get "author_sessions/create"

  get "author_sessions/destroy"

  root :to => 'welcome#index'
  
  get 'welcome/index'
  get 'welcome/about'
  get 'welcome/contact'
  get 'welcome/sessions'
  get 'welcome/social'
  get 'welcome/faq'
  get 'welcome/holidays'
  get 'welcome/racing'
  get 'welcome/login'
  get 'welcome/register'

  post "welcome/register"

  resources :events
  resources :announcements
  resources :authors
  resources :faqs

  resources :author_sessions, 
  only: [ :new, :create, :destroy ]

match 'login'  => 'author_sessions#new'
match 'logout' => 'author_sessions#destroy'

end
