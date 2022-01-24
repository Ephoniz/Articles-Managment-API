class AccessTokensController < ApplicationController
    def create
        authenticator = UserAuthenticator.new(params[:code])
        authenticator.perform

        render json: authenticator.access_token, status: :created
    end

    def destroy
        render json: {"error" => {
            "status" => "403",
            "source" => { "pointer" => "/headers/authorization" },
            "title" =>  "Not authorized",
            "detail" => "You have no rights to access this resource."
            }}, status: 403
    end
end
