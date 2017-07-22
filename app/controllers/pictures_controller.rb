class PicturesController < ApplicationController
  def new_form
    
    p = Photo.new
    p.source = params["the source"]
    p.caption = params["the caption"]
    p.save


     
      
      render("pic_template/new_form_template.html.erb")
  end   
  
  def process_create

      @pic_count = Photo.count

      
      render("pic_template/new_results_template.html.erb")
  end 
  
  
  def create_row
      
      p = Photo.new
      p.source = params["the source"]
      p.caption = params["the caption"]
      
      render("pic_template/create_row_template.html.erb")
  end  
  
  def index
     
     #p.all = Photo.all
    # @pic_all = [p.all]
     
     render("pic_template/index.html.erb")
  end   
  
  def edit_form
      
      render("pic_template/edit_form_template.html.erb")
  end 
  
  def update_row
      
      render("pic_template/update_row_template.html.erb")
  end 
  
  def show
     
     @pic = Photo.find(params["an_id"])
    
     
     
     render("pic_template/show.html.erb")
  end  
end
