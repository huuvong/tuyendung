class ThongtincanhansController < ApplicationController
  before_action :set_thongtincanhan, only: [:show, :edit, :update, :destroy]

  # GET /thongtincanhans
  # GET /thongtincanhans.json
  def index
    @thongtincanhans = Thongtincanhan.all
  end

  # GET /thongtincanhans/1
  # GET /thongtincanhans/1.json
  def show
  end

  # GET /thongtincanhans/new
  def new
    @thongtincanhan = Thongtincanhan.new
  end

  # GET /thongtincanhans/1/edit
  def edit
  end

  # POST /thongtincanhans
  # POST /thongtincanhans.json
  def create
    @thongtincanhan = Thongtincanhan.new(thongtincanhan_params)

    respond_to do |format|
      if @thongtincanhan.save
        format.html { redirect_to @thongtincanhan, notice: 'Thongtincanhan was successfully created.' }
        format.json { render :show, status: :created, location: @thongtincanhan }
      else
        format.html { render :new }
        format.json { render json: @thongtincanhan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thongtincanhans/1
  # PATCH/PUT /thongtincanhans/1.json
  def update
    respond_to do |format|
      if @thongtincanhan.update(thongtincanhan_params)
        format.html { redirect_to @thongtincanhan, notice: 'Thongtincanhan was successfully updated.' }
        format.json { render :show, status: :ok, location: @thongtincanhan }
      else
        format.html { render :edit }
        format.json { render json: @thongtincanhan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thongtincanhans/1
  # DELETE /thongtincanhans/1.json
  def destroy
    #byebug
    @thongtincanhan.destroy
    respond_to do |format|
      format.html { redirect_to thongtincanhans_url, notice: 'Thongtincanhan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thongtincanhan
      @thongtincanhan = Thongtincanhan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thongtincanhan_params
      params.require(:thongtincanhan).permit(:thongtincongviec_id, :hovaten, :sodienthoai, :email, :vitricongviec_id, :filedinhkem)
    end
end
