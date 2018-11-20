class FavosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_favo, only: [:show, :edit, :update, :destroy]

  # GET /favos
  # GET /favos.json
  def index
    @favos = Favo
      .where(user_id: current_user.id)
    @tweets = Tweet.all
  end

  # GET /favos/1
  # GET /favos/1.json
  def show
  end

  # GET /favos/new
  def new
    @favo = Favo.new
  end

  # POST /favos
  # POST /favos.json
  def create
    @favo = Favo.new(favo_params)

    respond_to do |format|
      if @favo.save
        format.html { redirect_to @favo, notice: 'Favo was successfully created.' }
        format.json { render :show, status: :created, location: @favo }
      else
        format.html { render :new }
        format.json { render json: @favo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favos/1
  # PATCH/PUT /favos/1.json
  def update
    respond_to do |format|
      if @favo.update(favo_params)
        format.html { redirect_to @favo, notice: 'Favo was successfully updated.' }
        format.json { render :show, status: :ok, location: @favo }
      else
        format.html { render :edit }
        format.json { render json: @favo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favos/1
  # DELETE /favos/1.json
  def destroy
    @favo.destroy
    respond_to do |format|
      format.html { redirect_to favos_url, notice: 'Favo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favo
      @favo = Favo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def favo_params
      params.require(:favo).permit(:user_id, :tweet_id)
    end
end
