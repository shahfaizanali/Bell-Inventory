class ImeisController < ApplicationController
  before_action :set_imei, only: [:show, :edit, :update, :destroy]

  # GET /imeis
  # GET /imeis.json
  def index
    @imeis = Imei.all
  end

  # GET /imeis/1
  # GET /imeis/1.json
  def show
  end

  # GET /imeis/new
  def new
    @imei = Imei.new
  end

  # GET /imeis/1/edit
  def edit
  end

  # POST /imeis
  # POST /imeis.json
  def create
    @imei = Imei.new(imei_params)

    respond_to do |format|
      if @imei.save
        format.html { redirect_to @imei, notice: 'Imei was successfully created.' }
        format.json { render action: 'show', status: :created, location: @imei }
      else
        format.html { render action: 'new' }
        format.json { render json: @imei.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /imeis/1
  # PATCH/PUT /imeis/1.json
  def update
    respond_to do |format|
      if @imei.update(imei_params)
        format.html { redirect_to @imei, notice: 'Imei was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @imei.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imeis/1
  # DELETE /imeis/1.json
  def destroy
    @imei.destroy
    respond_to do |format|
      format.html { redirect_to imeis_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imei
      @imei = Imei.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def imei_params
      params.require(:imei).permit(:imei_num, :phone_id)
    end
end
