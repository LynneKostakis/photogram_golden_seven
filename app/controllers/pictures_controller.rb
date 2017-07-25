class PicturesController < ApplicationController
  def new_form
    
    p = Photo.new
    p.source = params["the_source"]
    p.caption = params["the_caption"]
    p.save


     
      
      render("pic_template/new_form_template.html.erb")
  end   
  
  def process_create
    p = Photo.new
    p.source = params["the_source"]
    p.caption = params["the_caption"]
    p.save

    redirect_to("/photos")
  end 
  
  
  def create_row
      
      p = Photo.new
      p.source = params["the source"]
      p.caption = params["the caption"]
      p.save
      
      render("pic_template/create_row_template.html.erb")
  end  
  
  def index
      @photos = Photo.all
      p = Photo.new
      p.id = params["the id"]
      p.source = params["the source"]
      p.save
      
     
     render("pic_template/index.html.erb")
  end   
  
  def edit_form
    @pic = Photo.find(params[:an_id])
    p = Photo.new
    p.source = params["the source"]
    p.caption = params["the caption"]
    p.save
      
    render("pic_template/edit_form_template.html.erb")

  end 
  
  def update_row
      
      redirect_to("/photos/:an_id")
  end 
  
  def show
     
     @pic = Photo.find(params[:an_id])


     render("pic_template/show.html.erb")
  end  
 
  def destroy_row  
      
    redirect_to("/photos") 
  end
end
