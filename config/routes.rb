Collegeproject2::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get "communities/new"

  get "communities/edit"

  get "communities/index"

  get "communities/show"

  get "cbos/index"

  get "cbos/show"

  get "cbos/edit"

  get "students/index"

  get "students/show"

  devise_for :cbos
  ActiveAdmin.routes(self)

  devise_for :students
  ActiveAdmin.routes(self)

  get "pages/home"

  #temporary routes
  get "pages/admin"
  get "pages/allorganizations"
  get "pages/organizationdetail"
  get "pages/profile"
  get "pages/mission"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  resources :pages
  resources :students
  resources :cbos do
    collection do
      get 'nearby'
    end
  end
  resources :communities

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'pages#home'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
