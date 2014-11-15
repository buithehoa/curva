class CurvesController < ApplicationController
  before_action :set_curf, only: [:show, :edit, :update, :destroy]

  # GET /curves
  # GET /curves.json
  def index
    @curves = Curve.all
  end

  # GET /curves/1
  # GET /curves/1.json
  def show
  end

  # GET /curves/new
  def new
    @curf = Curve.new
  end

  # GET /curves/1/edit
  def edit
  end

  # POST /curves
  # POST /curves.json
  def create
    @curf = Curve.new(curf_params)

    respond_to do |format|
      if @curf.save
        format.html { redirect_to @curf, notice: 'Curve was successfully created.' }
        format.json { render :show, status: :created, location: @curf }
      else
        format.html { render :new }
        format.json { render json: @curf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /curves/1
  # PATCH/PUT /curves/1.json
  def update
    respond_to do |format|
      if @curf.update(curf_params)
        format.html { redirect_to @curf, notice: 'Curve was successfully updated.' }
        format.json { render :show, status: :ok, location: @curf }
      else
        format.html { render :edit }
        format.json { render json: @curf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /curves/1
  # DELETE /curves/1.json
  def destroy
    @curf.destroy
    respond_to do |format|
      format.html { redirect_to curves_url, notice: 'Curve was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_curf
      @curf = Curve.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def curf_params
      params.require(:curf).permit(:question, :answer, :status)
    end
end
