IdeaNotebook::Application.routes.draw do
  # CREATE
    get "/ideas/new", { :controller => "ideas", :action => "new", :as => :new_idea}
    post "/ideas", { :controller => "ideas", :action => "create", :as => :ideas}
  # READ
    get "/ideas", { :controller => "ideas", :action => "index"}
    get "/ideas/:id", { :controller => "ideas", :action => "show", :as => :idea}
  # UPDATE
    get "/ideas/:id/edit", { :controller => "ideas", :action => "edit", :as => :edit_idea}
    put "/ideas/:id", { :controller => "ideas", :action => "update"}
  # DELETE
end
