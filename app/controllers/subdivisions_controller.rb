class SubdivisionsController < ApplicationController
  # GET /subdivisions
  def index
    @sd = Subdivision.new
    
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def show
    @subdivision = Subdivision.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @subdivision }
    end
  end


  def new
    @subdivision = Subdivision.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @subdivision }
    end
  end

  def edit
    @subdivision = Subdivision.find(params[:id])
  end


  def create
    @subdivision = Subdivision.new(params[:subdivision])

    respond_to do |format|
      if @subdivision.save
        format.html { redirect_to(@subdivision, :notice => 'Subdivision was successfully created.') }
        format.xml  { render :xml => @subdivision, :status => :created, :location => @subdivision }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @subdivision.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /subdivisions/1
  # PUT /subdivisions/1.xml
  def update
    @subdivision = Subdivision.find(params[:id])

    respond_to do |format|
      if @subdivision.update_attributes(params[:subdivision])
        format.html { redirect_to(@subdivision, :notice => 'Subdivision was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @subdivision.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /subdivisions/1
  # DELETE /subdivisions/1.xml
  def destroy
    @subdivision = Subdivision.find(params[:id])
    @subdivision.destroy

    respond_to do |format|
      format.html { redirect_to(subdivisions_url) }
      format.xml  { head :ok }
    end
  end
end
