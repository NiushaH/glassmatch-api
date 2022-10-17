class Api::V1::RatingsController < ApplicationController

    def index
        @ratings = Rating.all
        # Using serializer to shape data and only send wanted attributes to db
        serialized_rating_data = RatingSerializer.new(@ratings).serialized_json
        # Use render json: to render serialized JSON
        render json: serialized_rating_data
      end

end
