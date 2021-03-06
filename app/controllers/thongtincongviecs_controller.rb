class ThongtincongviecsController < ApplicationController
  before_action :set_thongtincongviec, only: [:show, :edit, :update, :destroy]

  # GET /thongtincongviecs
  # GET /thongtincongviecs.json
  def index
    if params[:congty_id] and params[:diadiem_id] and params[:vitricongviec_id]
      @thongtincongviecs = Thongtincongviec.search(params[:congty_id], params[:diadiem_id], params[:vitricongviec_id])
    else
      @thongtincongviecs = Thongtincongviec.all
    end
  end

  # GET /thongtincongviecs/1
  # GET /thongtincongviecs/1.json
  def show
  end

  # GET /thongtincongviecs/new
  def new
    @thongtincongviec = Thongtincongviec.new
  end

  # GET /thongtincongviecs/1/edit
  def edit
  end

  # POST /thongtincongviecs
  # POST /thongtincongviecs.json
  def create
    @thongtincongviec = Thongtincongviec.new(thongtincongviec_params)

    respond_to do |format|
      if @thongtincongviec.save
        format.html { redirect_to @thongtincongviec, notice: 'Thongtincongviec was successfully created.' }
        format.json { render :show, status: :created, location: @thongtincongviec }
      else
        format.html { render :new }
        format.json { render json: @thongtincongviec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thongtincongviecs/1
  # PATCH/PUT /thongtincongviecs/1.json
  def update
    respond_to do |format|
      if @thongtincongviec.update(thongtincongviec_params)
        format.html { redirect_to @thongtincongviec, notice: 'Thongtincongviec was successfully updated.' }
        format.json { render :show, status: :ok, location: @thongtincongviec }
      else
        format.html { render :edit }
        format.json { render json: @thongtincongviec.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thongtincongviecs/1
  # DELETE /thongtincongviecs/1.json
  def destroy
    @thongtincongviec.destroy
    respond_to do |format|
      format.html { redirect_to thongtincongviecs_url, notice: 'Thongtincongviec was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thongtincongviec
      @thongtincongviec = Thongtincongviec.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thongtincongviec_params
      params.require(:thongtincongviec).permit(:tencongviec, :congty_id, :vitricongviec_id, :diadiem_id, :sohoso, :mavitri, :thoihannophoso, :thongtinvitri, :mota, :yeucau, :chedoluong)
    end
end
