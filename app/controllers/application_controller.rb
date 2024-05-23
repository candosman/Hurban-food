class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :cart

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  end

  def cart
    if cookies[:cart_id]
      if Cart.exists?(cookies[:cart_id])
        @cart = Cart.find(cookies[:cart_id])
      else
        cookies.delete :cart_id
        @cart = Cart.create
        cookies[:cart_id] = @cart.id
      end
    else
      @cart = Cart.create
      cookies[:cart_id] = @cart.id
    end
  end
end
