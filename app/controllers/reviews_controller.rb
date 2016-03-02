class ReviewsController < OpenReadController
  before_action :set_review, only: [:update, :destroy]
  before_filter :set_meal, only: [:index]
  # GET /reviews
  # GET /reviews.json
  def index
    @reviews = @meal.reviews

    render json: @reviews
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
    @review = Review.find(params[:id])
    render json: @review
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @review = current_user.reviews.new(review_params.merge({meal_id: params[:meal_id]}))


    if @review.save
      render json: @review, status: :created, location: @review
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update

    @review = Review.find(params[:id])

    if @review.update(review_params)
      head :no_content
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review.destroy

    head :no_content
  end

  private

    def set_review
      @review = current_user.reviews.find(params[:id])
    end


    def set_meal
      @meal = Meal.find(params[:meal_id])
    end

    def review_params
      params.require(:review).permit(:comment, :rating, :meal_id)
    end
end
