class MealsController < ApplicationController
  before_action :set_meal, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @meals = Meal.where(restaurant: @restaurant)
    @order_list = OrderList.new
  end

  def new
    @hide_nav_bar = true
    @restaurant = Restaurant.find(params[:restaurant_id])
    @meal = Meal.new
    @hide_footer = true
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @meal = Meal.new(meal_params)
    @meal.restaurant = @restaurant
    if @meal.save
      redirect_to restaurant_meals_path(@restaurant), notice: 'meal was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @meal = Meal.find(params[:id])
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def update
    @restaurant = Restaurant.find(params[:restaurant_id])
    @meal = Meal.find(params[:id])
    @meal.update(meal_params)
    redirect_to restaurant_meals_path(@restaurant)
  end

  def destroy
    @meal = Meal.find(params[:id])
    @meal.destroy
    redirect_to meals_path, status: :see_other
  end

  private

  def meal_params
    params.require(:meal).permit(:name, :price, :photo, :description, :category)
  end

  def set_meal
    @meal = Meal.find(params[:id])
  end
end
