Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

  # Routes to CREATE photos
  get("/photos/new",       { :controller => "photos", :action => "new" })
  get("/create_row",     { :controller => "photos", :action => "create_row" })

  # Routes to UPDATE photos
  get("photos/:id/edit",   { :controller => "photos", :action => "edit" })
  get("update_photo/:id",   { :controller => "photos", :action => "update_photo" })

  # Routes to DELETE photos
  get("/delete_photo/:id", { :controller => "photos", :action => "delete_row" })

  # Routes to READ photos
  get("/photos",           { :controller => "photos", :action => "index" })
  get("/photos/:id",       { :controller => "photos", :action => "show" })


end
