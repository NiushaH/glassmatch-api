class Api::V1::FramesController < ApplicationController
    before_action only: %i[ new create show edit update destroy ]
    # before_action :set_frame

    def index
      @frames = Frame.all.sort_by {|id| id.id}
      options = {
        include: [:ratings]
      }  
      serialized_frame_data = FrameSerializer.new(@frames, options).serialized_json
      render json: serialized_frame_data
    end

    def show
      set_frame
      render json: @frame
    end
  
    def new
      @frame = Frame.new
      render json: @frame
    end

    def create
      @frame = Frame.new(frame_params)
  
      if @frame.save
        serialized_data = FrameSerializer.new(@frame).serialized_json
        render json: serialized_frame_data
      else
        render json: @frame.errors, status: :unprocessable_entity
      end
    end

    def edit
      set_frame
      render json: @frame
    end

    def update
      set_frame
      if @frame.update(frame_params)
        render json: @frame
      else
        render json: @frame.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      set_frame
      @frame.destroy
    end
  
    private
      def set_frame
        @frame = Frame.find(params[:id])
      end
  
      def frame_params
        params.require(:frame).permit(:name, :style, :condition, :image_url)
      end 
end