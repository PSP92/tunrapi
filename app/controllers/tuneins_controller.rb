class TuneinsController < ApplicationController
  before_action :set_tunein, only: [:show, :update, :destroy]

  # GET /tuneins
  def index
    @tuneins = Tunein.all

    render json: @tuneins
  end

  # GET /tuneins/1
  def show
    render json: @tunein
  end

  # POST /tuneins
  def create
    @tunein = Tunein.new(tunein_params)

    if @tunein.save
      render json: @tunein, status: :created, location: @tunein
    else
      render json: @tunein.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tuneins/1
  def update
    if @tunein.update(tunein_params)
      render json: @tunein
    else
      render json: @tunein.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tuneins/1
  def destroy
    @tunein.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tunein
      @tunein = Tunein.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tunein_params
      params.require(:tunein).permit(:title, :artist, :time)
    end
end
