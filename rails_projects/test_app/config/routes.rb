Rails.application.routes.draw do
  # Home Page
  get '/welcome/home', to: 'welcome#home'
  # About Page
  get '/welcome/about', to: 'welcome#about'
end
