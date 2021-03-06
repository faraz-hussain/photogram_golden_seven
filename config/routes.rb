Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

  # Routes to CREATE photos
  get("/photos/new",       { :controller => "photos", :action => "new_form" })
  get("/create_photo",   { :controller => "photos", :action => "create_row" })

  # Routes to READ photos
  get("/photos",           { :controller => "photos", :action => "index" })
  get("/photos/:id",       { :controller => "photos", :action => "show" })

  # Route to DELETE photos
  get("/delete_photo/:id", { :controller => "photos", :action => "destroy" })

  # Routes to EDIT photos
  get("/photos/:id/edit", { :controller => "photos", :action => "edit" })
  get("/update_photo/:id", { :controller => "photos", :action => "update" })
end
