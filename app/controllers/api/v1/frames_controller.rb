class Api::V1::FramesController < ApplicationController
    before_action :set_frame, only: %i[ show update destroy ]
  
    # GET /frames
    def index
      @frames = Frame.all
      # Using serializer to shape data and only send wanted attributes to db
      serialized_frame_data = FrameSerializer.new(@frames).serialized_json
      # Use render json: to render serialized JSON
      render json: serialized_frame_data
    end

    # GET /frames/1
    def show
      render json: @frame
    end
  
    # POST /frames
    def create
      @frame = Frame.new(frame_params)
  
      if @frame.save
        serialized_data = FrameSerializer.new(@frame).serialized_json
        render json: serialized_data
      else
        render json: @frame.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /frames/1
    def update
      if @frame.update(frame_params)
        render json: @frame
      else
        render json: @frame.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /frames/1
    def destroy
      @frame.destroy
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_frame
        @frame = Frame.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def frame_params
        params.require(:frame).permit(:style, :condition, :image_url, :Rx_id)
      end 
end