class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  def index
    @restaurants = Restaurant.all
    @markers = @restaurants.geocoded.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {restaurant: restaurant}),
        marker_html: render_to_string(partial: "marker", locals: {restaurant: restaurant})
      }
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = @restaurant.restaurant_reviews
    @restaurant_review = RestaurantReview.new
    @meals = @restaurant.meals
    @starters = @meals.where(category: "starter")
    @main = @meals.where(category: "main")
    @desert = @meals.where(category: "desert")
    @order_list = OrderList.new
    if @restaurant.geocoded?
      @markers = [{
        lat: @restaurant.latitude,
        lng: @restaurant.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {restaurant: @restaurant}),
        marker_html: render_to_string(partial: "marker", locals: {restaurant: @restaurant})
      }]
    else
      @markers = []
    end

  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.user = current_user
    if @restaurant.save
      redirect_to restaurant_path(@restaurant), notice: 'Your restaurant was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path, status: :see_other
  end

  def my_restaurants
    @restaurants = current_user.restaurants
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone, :photo, chef_photos: [])
  end
end
