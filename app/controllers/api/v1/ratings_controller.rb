class Api::V1::RatingsController < ApplicationController

    def index
        @ratings = Rating.all
        # Using serializer to shape data and only send wanted attributes to db
        serialized_rating_data = RatingSerializer.new(@ratings).serialized_json
        # Use render json: to render serialized JSON
        render json: serialized_rating_data
      end

    def new
        @rating = Rating.new
    end

    def create
        @rating = Rating.new(rating_params)
  
        if @rating.save
          serialized_data = RatingSerializer.new(@rating).serialized_json
          render json: serialized_data
        else
          render json: @rating.errors, status: :unprocessable_entity
        end
      end

    
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_rating
        @rating = Rating.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def rating_params
        params.require(:rating).permit(:score, :comments, :frame_id)
      end 
end
