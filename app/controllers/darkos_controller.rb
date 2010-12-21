class DarkosController < ApplicationController
  # GET /darkos
  # GET /darkos.xml
  def index
      @darkos = Darko.all(:order => 'created_at DESC', :limit => '20')
      @darko = Darko.new
    
    respond_to do |format|
        format.html
        format.xml  { render :xml => @darko }
        format.rss { render :layout => false } #index.rss.builder
    end
  end

  def feed
    @darko = Darko.all(:select => "darko.status, darko.created_at", :order => "darko.created_at DESC", :limit => 100)

      respond_to do |format|
        format.html
        format.rss { render :layout => false } #index.rss.builder
      end
  end

  # GET /darkos/1
  # GET /darkos/1.xml
  def show
    @darko = Darko.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @darko }
    end
  end

  # GET /darkos/new
  # GET /darkos/new.xml
  def new
    @darko = Darko.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @darko }
    end
  end

  # GET /darkos/1/edit
  def edit
    @darko = Darko.find(params[:id])
  end

  # POST /darkos
  # POST /darkos.xml
  def create
    @darko = Darko.new(params[:darko])

    respond_to do |format|
      if @darko.save
        format.html { redirect_to (darkos_path), :notice => 'Thanks for adding to the legacy.' }
        format.xml  { render :xml => @darko, :status => :created, :location => @darko }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @darko.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /darkos/1
  # PUT /darkos/1.xml
  def update
    @darko = Darko.find(params[:id])

    respond_to do |format|
      if @darko.update_attributes(params[:darko])
        format.html { redirect_to(@darko, :notice => 'Darko was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @darko.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /darkos/1
  # DELETE /darkos/1.xml
  def destroy
    @darko = Darko.find(params[:id])
    @darko.destroy

    respond_to do |format|
      format.html { redirect_to(darkos_url) }
      format.xml  { head :ok }
    end
  end
end
