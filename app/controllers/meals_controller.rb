class MealsController < OpenReadController
    before_action :set_meal, only: [:show, :update, :destroy]
    before_filter :set_restaurant, only: [:index]

  # GET /meals
  # GET /meals.json
  def index
    @meals = @restaurant.meals.where meal_type: params[:meal_type]

    render json: @meals
  end

  # GET /meals/1
  # GET /meals/1.json
  def show
    render json: @meal
  end

  # POST /meals
  # POST /meals.json
  def create
    @meal = Meal.new(meal_params)

    if @meal.save
      render json: @meal, status: :created, location: @meal
    else
      render json: @meal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /meals/1
  # PATCH/PUT /meals/1.json
  def update
    @meal = Meal.find(params[:id])

    if @meal.update(meal_params)
      head :no_content
    else
      render json: @meal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /meals/1
  # DELETE /meals/1.json
  def destroy
    @meal.destroy

    head :no_content
  end

  private

    def set_meal
      @meal = Meal.find(params[:id])
    end

    def set_restaurant
      @restaurant = Restaurant.find(params[:restaurant_id])
    end

    def meal_params
      params.require(:meal).permit(:meal_type, :name, :desc, :price, :restaurant_id)
    end
end
