class Api::v1::RxesController < ApplicationController
    before_action :set_rx, only: %i[ show update destroy ]

    # GET /rxes
    def index
      @rxes = Rx.all
  
      render json: @rxes
    end
  
    # GET /rxes/1
    def show
      render json: @rx
    end
  
    # POST /rxes
    def create
      @rx = Rx.new(rx_params)
  
      if @rx.save
        render json: @rx, status: :created, location: @rx
      else
        render json: @rx.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /rxes/1
    def update
      if @rx.update(rx_params)
        render json: @rx
      else
        render json: @rx.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /rxes/1
    def destroy
      @rx.destroy
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_rx
        @rx = Rx.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def rx_params
        params.require(:rx).permit(:OD_SPH, :OD_CYL, :OD_AXIS, :OD_PRISM, :OD_BASE, :OD_ADD, :OS_SPHERE, :OS_CYL, :OS_AXIS, :OS_PRISM, :OS_BASE, :OS_ADD)
      end
end