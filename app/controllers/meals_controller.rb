class MealsController < ApplicationController
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
    @meal = Meal.new(params[:meal])
    @meal.save
    redirect_to meal_path(@meal)

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
end
