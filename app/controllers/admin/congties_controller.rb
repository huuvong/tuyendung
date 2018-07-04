class Admin::CongtiesController < ApplicationController
  before_action :authorize
  layout "admin"
  before_action :set_congty, only: [:show, :edit, :update, :destroy]

  # GET /congties
  # GET /congties.json
  def index
    @congties = Congty.all
  end

  # GET /congties/1
  # GET /congties/1.json
  def show
  end

  # GET /congties/new
  def new
    @congty = Congty.new
  end

  # GET /congties/1/edit
  def edit
  end

  # POST /congties
  # POST /congties.json
  def create
    @congty = Congty.new(congty_params)

    respond_to do |format|
      if @congty.save
        format.html { redirect_to admin_congties_url, notice: 'Congty was successfully created.' }
        format.json { render :show, status: :created, location: @congty }
      else
        format.html { render :new }
        format.json { render json: @congty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /congties/1
  # PATCH/PUT /congties/1.json
  def update
    respond_to do |format|
      if @congty.update(congty_params)
        format.html { redirect_to edit_admin_congty_path(@congty), notice: 'Congty was successfully updated.' }
        format.json { render :show, status: :ok, location: @congty }
      else
        format.html { render :edit }
        format.json { render json: @congty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /congties/1
  # DELETE /congties/1.json
  def destroy
    @congty.destroy
    respond_to do |format|
      format.html { redirect_to admin_congties_url, notice: 'Congty was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_congty
    @congty = Congty.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def congty_params
    params.require(:congty).permit(:tencongty)
  end
end
