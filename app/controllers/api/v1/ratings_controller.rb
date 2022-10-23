class Api::V1::RatingsController < ApplicationController
  before_action only: %i[ new create show ]
  # before_action :set_rating

    def index
      @ratings = Rating.all
      serialized_rating_data = RatingSerializer.new(@ratings).serialized_json
      render json: serialized_rating_data
    end

    def show
      set_rating
      render json: @rating
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
      def set_rating
        @rating = Rating.find(params[:id])
      end
  
      def rating_params
        params.require(:rating).permit(:score, :comments, :frame_id)
      end 
end
