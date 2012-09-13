class ClazzsController < ApplicationController
  # GET /clazzs
  # GET /clazzs.xml
  def index
    @clazzs = Clazz.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @clazzs }
    end
  end

  # GET /clazzs/1
  # GET /clazzs/1.xml
  def show
    @clazz = Clazz.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @clazz }
    end
  end

  # GET /clazzs/new
  # GET /clazzs/new.xml
  def new
    @clazz = Clazz.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @clazz }
    end
  end

  # GET /clazzs/1/edit
  def edit
    @clazz = Clazz.find(params[:id])
  end

  # POST /clazzs
  # POST /clazzs.xml
  def create
    @clazz = Clazz.new(params[:clazz])

    respond_to do |format|
      if @clazz.save
        format.html { redirect_to(@clazz, :notice => 'Clazz was successfully created.') }
        format.xml  { render :xml => @clazz, :status => :created, :location => @clazz }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @clazz.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /clazzs/1
  # PUT /clazzs/1.xml
  def update
    @clazz = Clazz.find(params[:id])

    respond_to do |format|
      if @clazz.update_attributes(params[:clazz])
        format.html { redirect_to(@clazz, :notice => 'Clazz was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @clazz.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /clazzs/1
  # DELETE /clazzs/1.xml
  def destroy
    @clazz = Clazz.find(params[:id])
    @clazz.destroy

    respond_to do |format|
      format.html { redirect_to(clazzs_url) }
      format.xml  { head :ok }
    end
  end
end
