class HastaBilgilerisController < ApplicationController
  # GET /hasta_bilgileris
  # GET /hasta_bilgileris.json
  def index
    @hasta_bilgileris = HastaBilgileri.all

    respond_to do |format|
      format.html # xxxindex.html.erb
      format.json { render json: @hasta_bilgileris }
    end
  end

  # GET /hasta_bilgileris/1
  # GET /hasta_bilgileris/1.json
  def show
    @hasta_bilgileri = HastaBilgileri.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hasta_bilgileri }
    end
  end

  # GET /hasta_bilgileris/new
  # GET /hasta_bilgileris/new.json
  def new
    @hasta_bilgileri = HastaBilgileri.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hasta_bilgileri }
    end
  end

  # GET /hasta_bilgileris/1/edit
  def edit
    @hasta_bilgileri = HastaBilgileri.find(params[:id])
  end

  # POST /hasta_bilgileris
  # POST /hasta_bilgileris.json
  def create
    @hasta_bilgileri = HastaBilgileri.new(params[:hasta_bilgileri])

    respond_to do |format|
      if @hasta_bilgileri.save
        format.html { redirect_to new_user_session_path, notice: 'Hasta bilgileri was successfully created.' }
        format.json { render json: @hasta_bilgileri, status: :created, location: @hasta_bilgileri }
      else
        format.html { render action: "new" }
        format.json { render json: @hasta_bilgileri.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hasta_bilgileris/1
  # PUT /hasta_bilgileris/1.json
  def update
    @hasta_bilgileri = HastaBilgileri.find(params[:id])

    respond_to do |format|
      if @hasta_bilgileri.update_attributes(params[:hasta_bilgileri])
        format.html { redirect_to new_user_session_path, notice: 'Hasta bilgileri was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @hasta_bilgileri.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hasta_bilgileris/1
  # DELETE /hasta_bilgileris/1.json
  def destroy
    @hasta_bilgileri = HastaBilgileri.find(params[:id])
    @hasta_bilgileri.destroy

    respond_to do |format|
      format.html { redirect_to hasta_bilgileris_url }
      format.json { head :ok }
    end
  end
end
