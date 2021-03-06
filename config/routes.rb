Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'exercises/index'
  post "exercises/create"

  scope :format => true, :constraints => { :format => 'json'} do
      post "/login" => "sessions#login"
      post "/signup" => "sessions#signup"
      delete "/logout" => "sessions#destroy"
  end
end
