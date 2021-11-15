class AuthenticationController < ApplicationController
  skip_before_action :authenticate_request
  def authenticate
    command = AuthenticateUser.call(params[:email], params[:password])
    if command.success?
      cart = Cart.create()
      render json: { auth_token: command.result, cart_id: cart.id }
    else
      render json: { error: command.errors }, status: :unauthorized
    end
  end
 end