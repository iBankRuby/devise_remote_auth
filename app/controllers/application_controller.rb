class ApplicationController < ActionController::API
  prepend_before_action :get_auth_token

  private

  def get_auth_token
    if auth_token = params[:auth_token].blank? && request.headers["HTTP_AUTHORIZATION"]
      # we're overloading ActiveResource's Basic HTTP authentication here, so we need to
      # do some unpacking of the auth token and re-save it as a parameter.
      params[:auth_token] = auth_token.split.last.unpack('m').first.chop
    end
  end
end
