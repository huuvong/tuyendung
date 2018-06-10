class Admin::DiadiemsController < ApplicationController
  layout "admin"
  before_action :set_diadiem, only: [:show, :edit, :update, :destroy]

  # GET /diadiems
  # GET /diadiems.json
  def index
    @diadiems = Diadiem.all
  end

  # GET /diadiems/1
  # GET /diadiems/1.json
  def show
  end

  # GET /diadiems/new
  def new
    @diadiem = Diadiem.new
  end

  # GET /diadiems/1/edit
  def edit
  end

  # POST /diadiems
  # POST /diadiems.json
  def create
    @diadiem = Diadiem.new(diadiem_params)

    respond_to do |format|
      if @diadiem.save
        format.html { redirect_to admin_diadiems_url, notice: 'Diadiem was successfully created.' }
        format.json { render :show, status: :created, location: @diadiem }
      else
        format.html { render :new }
        format.json { render json: @diadiem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diadiems/1
  # PATCH/PUT /diadiems/1.json
  def update
    respond_to do |format|
      if @diadiem.update(diadiem_params)
        format.html { redirect_to edit_admin_diadiem_path(@diadiem), notice: 'Diadiem was successfully updated.' }
        format.json { render :show, status: :ok, location: @diadiem }
      else
        format.html { render :edit }
        format.json { render json: @diadiem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diadiems/1
  # DELETE /diadiems/1.json
  def destroy
    @diadiem.destroy
    respond_to do |format|
      format.html { redirect_to admin_diadiems_url, notice: 'Diadiem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_diadiem
    @diadiem = Diadiem.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def diadiem_params
    params.require(:diadiem).permit(:tendiadiem)
  end
end
