class IntroducesController < ApplicationController
  # GET /introduces
  # GET /introduces.json
  def index
    @introduces = Introduce.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @introduces }
    end
  end

  # GET /introduces/1
  # GET /introduces/1.json
  def show
    @introduce = Introduce.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @introduce }
    end
  end

  # GET /introduces/new
  # GET /introduces/new.json
  def new
    @introduce = Introduce.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @introduce }
    end
  end

  # GET /introduces/1/edit
  def edit
    @introduce = Introduce.find(params[:id])
  end

  # POST /introduces
  # POST /introduces.json
  def create
    @introduce = Introduce.new(params[:introduce])

    respond_to do |format|
      if @introduce.save
        format.html { redirect_to @introduce, notice: 'Introduce was successfully created.' }
        format.json { render json: @introduce, status: :created, location: @introduce }
      else
        format.html { render action: "new" }
        format.json { render json: @introduce.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /introduces/1
  # PUT /introduces/1.json
  def update
    @introduce = Introduce.find(params[:id])

    respond_to do |format|
      if @introduce.update_attributes(params[:introduce])
        format.html { redirect_to @introduce, notice: 'Introduce was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @introduce.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /introduces/1
  # DELETE /introduces/1.json
  def destroy
    @introduce = Introduce.find(params[:id])
    @introduce.destroy

    respond_to do |format|
      format.html { redirect_to introduces_url }
      format.json { head :no_content }
    end
  end
end
