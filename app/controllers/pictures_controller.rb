class PicturesController < ApplicationController
  def new_form
      
      render("pic_template/new_form_template.html.erb")
  end   
  
  def process_create
      @pic_count = Photo.all
      
      render("pic_template/new_results_template.html.erb")
  end 
  
  
  def create_row
      
      render("pic_template/create_row_template.html.erb")
  end  
  
     
  
  def show
     
     @pic = Photo.find(params["an_id"])
    
     
     
     render("pic_template/show.html.erb")
  end  
end
