Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  # registration
  post "login" => "sessions#login"
  post "register" => "users#register"
  get "logout" => "sessions#logout"

  get "home" => "app#home"

  # ajax requests
  get "player_list" => "ajax#player_list"
  get "player_list_team" => "ajax#player_list_team"
  get "manager_list_team" => "ajax#manager_list_team"
  get "year_list_team" => "ajax#year_list_team"

  # user management
  get "user_management" => "user_management#user_management"
  get "add_team" => "user_management#add_team"
  post "create_team" => "user_management#create_team"


  


  get "h2h_score" => "team#h2h_score"
  post "h2h_score_results" => "team#h2h_score_results"

  get "h2h_user" => "team#h2h_user"
  post "h2h_user_results" => "team#h2h_user_results"


  get "season_sim" => "app#season_sim"
  post "season_sim_results" => "app#season_sim_results"

  get "player_impact" => "player#player_impact"
  post "player_impact_results" => "player#player_impact_results"

  get "player_value" => "player#player_value"
  post "player_value_results" => "player#player_value_results"

  get "manager_evaluation" => "app#manager_evaluation"
  post "manager_evaluation_results" => "app#manager_evaluation_results"

  get "test" => "app#test"


  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
