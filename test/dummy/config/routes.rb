Rails.application.routes.draw do

  resources :cars

  mount Notable::Engine => "/notable", :as => :noted
end
