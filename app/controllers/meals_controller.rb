class MealsController < ApplicationController
  before_action :set_meal, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @meals = Meal.all

  end

  def show
    @meal = Meal.find(params[:id])
  end

  def new
    @meal = Meal.new

  end

  def create
    @meal = Meal.new(meal_params)

    if @meal.save
      redirect_to @meal, notice: 'meal was successfully created.'
    else
      render :new
    end
  end

  def edit
    @meal = Meal.find(params[:id])
  end

  def update
    @meal = Meal.find(params[:id])
    @meal.update(meal_params)
    redirect_to meal_path(@meal)
  end

  def destroy
    @meal = Meal.find(params[:id])
    @meal.destroy
    redirect_to meals_path, status: :see_other
  end

  private

  def meal_params
    params.require(:meal).permit(:name, :price)
  end

  def set_meal
    @meal = Meal.find(params[:id])
  end
end
