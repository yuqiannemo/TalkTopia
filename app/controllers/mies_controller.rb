class MiesController < ApplicationController
  before_action :set_my, only: %i[ show edit update destroy ]

  # GET /mies or /mies.json
  def index
    @mies = My.all
  end

  # GET /mies/1 or /mies/1.json
  def show
  end

  # GET /mies/new
  def new
    @my = My.new
  end

  # GET /mies/1/edit
  def edit
  end

  # POST /mies or /mies.json
  def create
    @my = My.new(my_params)

    respond_to do |format|
      if @my.save
        format.html { redirect_to my_url(@my), notice: "My was successfully created." }
        format.json { render :show, status: :created, location: @my }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @my.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mies/1 or /mies/1.json
  def update
    respond_to do |format|
      if @my.update(my_params)
        format.html { redirect_to my_url(@my), notice: "My was successfully updated." }
        format.json { render :show, status: :ok, location: @my }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @my.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mies/1 or /mies/1.json
  def destroy
    @my.destroy!

    respond_to do |format|
      format.html { redirect_to mies_url, notice: "My was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my
      @my = My.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def my_params
      params.require(:my).permit(:Tribes, :tribe, :tribesmen, :first_name, :email, :phone, :telegram, :last_name)
    end
end
