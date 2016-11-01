class HardwaresController < ApplicationController
  before_action :set_hardware, only: [:show, :edit, :update, :destroy]

  def index
    @hardwares = Hardware.all
    respond_with(@hardwares)
  end

  def show
    respond_with(@hardware)
  end

  def new
    @hardware = Hardware.new
    respond_with(@hardware)
  end

  def edit
  end

  def create
    @hardware = Hardware.new(hardware_params)
    @hardware.save
    respond_with(@hardware)
  end

  def update
    @hardware.update(hardware_params)
    respond_with(@hardware)
  end

  def destroy
    @hardware.destroy
    respond_with(@hardware)
  end

  private
    def set_hardware
      @hardware = Hardware.find(params[:id])
    end

    def hardware_params
      params.require(:hardware).permit(:model, :brand)
    end
end
