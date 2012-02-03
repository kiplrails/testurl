class TesturlsController < ApplicationController
  # GET /testurls
  # GET /testurls.xml
  def index
    @testurls = Testurl.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @testurls }
    end
  end

  # GET /testurls/1
  # GET /testurls/1.xml
  def show
    @testurl = Testurl.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @testurl }
    end
  end

  # GET /testurls/new
  # GET /testurls/new.xml
  def new
    
        if request.get? and params[:testurl]
          if urltest = Testurl.new(params[:testurl])

              urltest.url = "#{params[:testurl][:url]}"
              
              urltest.save
              
               @testurls = Testurl.find(:all)
               
               render :update do |page|
                   page.replace_html 'showid', :partial => 'testurls/show'
               end
          end
        end
    
  end
  # GET /testurls/1/edit
  def edit
    @testurl = Testurl.find(params[:id])
  end

  # POST /testurls
  # POST /testurls.xml
  def create
    @testurl = Testurl.new(params[:testurl])

    respond_to do |format|
      if @testurl.save
        format.html { redirect_to(@testurl, :notice => 'Testurl was successfully created.') }
        format.xml  { render :xml => @testurl, :status => :created, :location => @testurl }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @testurl.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /testurls/1
  # PUT /testurls/1.xml
  def update
    @testurl = Testurl.find(params[:id])

    respond_to do |format|
      if @testurl.update_attributes(params[:testurl])
        format.html { redirect_to(@testurl, :notice => 'Testurl was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @testurl.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /testurls/1
  # DELETE /testurls/1.xml
  def destroy
    @testurl = Testurl.find(params[:id])
    @testurl.destroy

    respond_to do |format|
      format.html { redirect_to(testurls_url) }
      format.xml  { head :ok }
    end
  end
end
