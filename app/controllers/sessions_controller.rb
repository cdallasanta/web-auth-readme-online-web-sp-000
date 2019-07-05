class SessionsController < ApplicationController
  skip_before_action :authenticate_user, only: :create

  def create
    @resp = Faradat.get(https://foursquare.com/oauth2/access_token) do |req|
      req.params["client_id"] = env["FOURSQUARE_CLIENT_ID"]
      req.params["client_secret"] = YOUR_CLIENT_SECRET
      req.params["grant_type"] = authorization_code
      req.params["redirect_uri"] = YOUR_REGISTERED_REDIRECT_URI
      req.params["code"] = CODE)
    end
  end
end
