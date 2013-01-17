class ImageUploadsController < ApplicationController
  
  # This example does not handle all of the ins and outs of 
  # allowing someone to 'replace' a file by edit/update.
  # That's a sticky problem that would only cloud
  # the concepts we're demonstrating here.
  
  
  # GET /image_uploads
  # GET /image_uploads.xml
  def index
    @image_uploads = ImageUpload.top_level.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @image_uploads }
    end
  end

  # GET /image_uploads/1
  # GET /image_uploads/1.xml
  def show
    @image_upload = ImageUpload.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @image_upload }
    end
  end

  # GET /image_uploads/new
  # GET /image_uploads/new.xml
  def new
    @image_upload = ImageUpload.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @image_upload }
    end
  end


  # POST /image_uploads
  # POST /image_uploads.xml
  def create
    @image_upload = ImageUpload.new(params[:image_upload])

    respond_to do |format|
      if @image_upload.save
        format.html { redirect_to(@image_upload, :notice => "ImageUpload was successfully created.") }
        format.xml  { render :xml => @image_upload, :status => :created, :location => @image_upload }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @image_upload.errors, :status => :unprocessable_entity }
      end
    end
  end


  # DELETE /image_uploads/1
  # DELETE /image_uploads/1.xml
  def destroy
    @image_upload = ImageUpload.find(params[:id])
    @image_upload.destroy

    respond_to do |format|
      format.html { redirect_to(image_uploads_url) }
      format.xml  { head :ok }
    end
  end
end
