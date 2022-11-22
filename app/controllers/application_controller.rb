class ApplicationController < ActionController::API

    def index
        render json: { message: "Pizza restaurants API" }
    end
end
