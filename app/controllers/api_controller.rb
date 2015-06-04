class ApiController < ApplicationController
  skip_before_action :verify_authenticity_token

  # API Key, and an API Token
  # On the client side:
  # Use the Token to Sign the request (HMAC) (this gets sent over via a http HEADER)

  private

  def authenticated?
    authenticate_or_request_with_http_basic do |username, password| 
      user = User.where( username: username ).first
      user && user.authenticate(password)
    end
  end

end
