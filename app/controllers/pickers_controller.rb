class PickersController < ApplicationController
  before_action :set_picker, only: [:show, :edit, :update, :destroy]

  # GET /pickers
  # GET /pickers.json
  def index
    @pickers = Picker.all
  end

  # GET /pickers/1
  # GET /pickers/1.json
  def show
  end

  # GET /pickers/new
  def new
    @picker = Picker.new
  end

  # GET /pickers/1/edit
  def edit
  end

  # POST /pickers
  # POST /pickers.json
  def create
    @picker = Picker.new(picker_params)

    respond_to do |format|
      if @picker.save
        format.html { redirect_to @picker, notice: 'Picker was successfully created.' }
        format.json { render :show, status: :created, location: @picker }
      else
        format.html { render :new }
        format.json { render json: @picker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pickers/1
  # PATCH/PUT /pickers/1.json
  def update
    respond_to do |format|
      if @picker.update(picker_params)
        format.html { redirect_to @picker, notice: 'Picker was successfully updated.' }
        format.json { render :show, status: :ok, location: @picker }
      else
        format.html { render :edit }
        format.json { render json: @picker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pickers/1
  # DELETE /pickers/1.json
  def destroy
    @picker.destroy
    respond_to do |format|
      format.html { redirect_to pickers_url, notice: 'Picker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_picker
      @picker = Picker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def picker_params
      params.require(:picker).permit(:joining_date)
    end
end
