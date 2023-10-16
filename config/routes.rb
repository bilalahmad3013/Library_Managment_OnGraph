Rails.application.routes.draw do
  devise_for :admins, skip: [:registrations]
  devise_for :librarians
  devise_for :students
  get 'static_pages/home'
  get 'static_pages/help'
  root 'static_pages#home'
  get '/show/books', to: 'student_features#index'
  get '/show/books/admin', to: 'admin#index'

  post '/send_email', to: 'book_requests#send_email'
  get '/student/requested', to: 'student_features#requested'
  get 'approve_request', to: 'handle_request#approve_request', as: 'approve_request'
  get 'cancel_request', to: 'handle_request#cancel_request', as: 'cancel_request'
  delete 'admin/books/:id', to: 'admin#destroy', as: 'admin_delete_book'
  get 'admin/students', to: 'admin#student'
  get 'admin/student/books', to: 'admin#book'
  get 'admin/book/students', to: 'admin#studentlist'
  resources :books
  resources :admin, only: [:edit, :update]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check


  # Defines the root path route ("/")
  # root "posts#index"
end
