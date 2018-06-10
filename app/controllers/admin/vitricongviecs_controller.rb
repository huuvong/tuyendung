class Admin::VitricongviecsController < ApplicationController
  layout 'admin'
  before_action :set_vitricongviec, only: [:show, :edit, :update, :destroy]

  # GET /vitricongviecs
  # GET /vitricongviecs.json
  def index
    @vitricongviecs = Vitricongviec.all
  end

  # GET /vitricongviecs/1
  # GET /vitricongviecs/1.json
  def show
  end

  # GET /vitricongviecs/new
  def new
    @vitricongviec = Vitricongviec.new
  end

  # GET /vitricongviecs/1/edit
  def edit
  end

  # POST /vitricongviecs
  # POST /vitricongviecs.json
  def create
    @vitricongviec = Vitricongviec.new(vitricongviec_params)

    respond_to do |format|
      if @vitricongviec.save
        format.html { redirect_to [:admin, @vitricongviec], notice: 'Vitricongviec was successfully created.' }
        format.json { render :show, status: :created, location: @vitricongviec }
      else
        format.html { render :new }
        format.json { render json: @vitricongviec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vitricongviecs/1
  # PATCH/PUT /vitricongviecs/1.json
  def update
    respond_to do |format|
      if @vitricongviec.update(vitricongviec_params)
        format.html { redirect_to [:admin, @vitricongviec], notice: 'Vitricongviec was successfully updated.' }
        format.json { render :show, status: :ok, location: @vitricongviec }
      else
        format.html { render :edit }
        format.json { render json: @vitricongviec.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vitricongviecs/1
  # DELETE /vitricongviecs/1.json
  def destroy
    @vitricongviec.destroy
    respond_to do |format|
      format.html { redirect_to admin_vitricongviecs_url, notice: 'Vitricongviec was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vitricongviec
      @vitricongviec = Vitricongviec.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    # def vitricongviec_params
    #   params.fetch(:vitricongviec, {})
    # end
  def vitricongviec_params
    params.require(:vitricongviec).permit(:tenvitri)
  end
end
