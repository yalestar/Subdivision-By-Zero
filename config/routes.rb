SubdivisionByZero::Application.routes.draw do
  resources :subdivisions


  root :to => "subdivisions#index"

end
