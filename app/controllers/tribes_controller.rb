class TribesController < ApplicationController
  before_action :set_tribe, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /tribes or /tribes.json
  def index
    @tribes = Tribe.all
  end

  # GET /tribes/1 or /tribes/1.json
  def show
  end

  # GET /tribes/new
  def new
    # @tribe = Tribe.new
    @tribe = current_user.tribes.build
  end

  # GET /tribes/1/edit
  def edit
  end

  # POST /tribes or /tribes.json
  def create
    # @tribe = Tribe.new(tribe_params)
    @tribe = current_user.tribes.build(tribe_params)

    respond_to do |format|
      if @tribe.save
        format.html { redirect_to tribe_url(@tribe), notice: "Tribe was successfully created." }
        format.json { render :show, status: :created, location: @tribe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tribe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tribes/1 or /tribes/1.json
  def update
    respond_to do |format|
      if @tribe.update(tribe_params)
        format.html { redirect_to tribe_url(@tribe), notice: "Tribe was successfully updated." }
        format.json { render :show, status: :ok, location: @tribe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tribe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tribes/1 or /tribes/1.json
  def destroy
    @tribe = Tribe.find(params[:id])
    @tribe.destroy
    redirect_to tribes_path, notice: 'Tribe was successfully deleted.'
  end

   def correct_user
    @tribe = current_user.tribes.find_by(id: params[:id])
    redirect_to tribes_path, notice: "Not Authorized To Edit This Tribe" if @tribe.nil?
   end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tribe
      @tribe = Tribe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tribe_params
      params.require(:tribe).permit(:tribe, :tribesmen, :chief, :user_id)
      # add user_id, otherwise:error
      # create new params
    end
end
