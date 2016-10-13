class MatchupsController < ProtectedController
  before_action :set_matchup, only: [:show, :update, :destroy]

  # GET /matchups
  # GET /matchups.json
  def index
    @matchups = Matchup.all

    render json: @matchups
  end

  # GET /matchups/1
  # GET /matchups/1.json
  def show
    render json: @matchup
  end

  # POST /matchups
  # POST /matchups.json
  # def create
  #   @matchup = Matchup.new(matchup_params)
  #
  #   if @matchup.save
  #     render json: @matchup, status: :created, location: @matchup
  #   else
  #     render json: @matchup.errors, status: :unprocessable_entity
  #   end
  # end

  # PATCH/PUT /matchups/1
  # PATCH/PUT /matchups/1.json
  # def update
  #   @matchup = Matchup.find(params[:id])
  #
  #   if @matchup.update(matchup_params)
  #     head :no_content
  #   else
  #     render json: @matchup.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /matchups/1
  # DELETE /matchups/1.json
  # def destroy
  #   @matchup.destroy
  #
  #   head :no_content
  # end

  private

  def set_matchup
    @matchup = Matchup.find(params[:id])
  end

  def matchup_params
    params.require(:matchup).permit(:home, :away, :week, :outcome)
  end
end
