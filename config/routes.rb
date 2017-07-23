Rails.application.routes.draw do
  # CREATE
  get("/photos/new", { :controller => "pictures", :action => "new_form" })
  get("/new_results", { :controller => "pictures", :action => "process_create" })

# READ
  get("/photos", { :controller => "pictures", :action => "index" })
  get("/photos/:an_id", { :controller => "pictures", :action => "show" })

# UPDATE
  get("/photos/:an_id/edit", { :controller => "pictures", :action => "edit_form" })
  get("/update_photo/:some_id", { :controller => "pictures", :action => "update_row" })

# DELETE
  get("/delete_photo/:toast_id", { :controller => "pictures", :action => "destroy_row" })

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  mount WebGit::Engine, at: "/rails/git"
end
