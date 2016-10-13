class PredictionsController < ProtectedController
  before_action :set_prediction, only: [:show, :update, :destroy]

  # GET /predictions
  # GET /predictions.json
  def index
    @predictions = current_user.predictions.all

    render json: @predictions
  end

  # GET /predictions/1
  # GET /predictions/1.json
  def show
    render json: @prediction
  end

  # POST /predictions
  # POST /predictions.json
  def create
    @prediction = current_user.predictions.build(prediction_params)

    if @prediction.save
      render json: @prediction, status: :created, location: @prediction
    else
      render json: @prediction.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /predictions/1
  # PATCH/PUT /predictions/1.json
  def update
    # @prediction = Prediction.find(params[:id])

    if @prediction.update(prediction_params)
      head :no_content
    else
      render json: @prediction.errors, status: :unprocessable_entity
    end
  end

  # DELETE /predictions/1
  # DELETE /predictions/1.json
  def destroy
    @prediction.destroy

    head :no_content
  end

  private

  def set_prediction
    @prediction = current_user.predictions.find(params[:id])
  end

  def prediction_params
    params.require(:prediction).permit(:pick, :matchup_id, :user_id)
  end
end
