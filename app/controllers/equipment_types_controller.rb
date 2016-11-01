class EquipmentTypesController < ApplicationController
  before_action :set_equipment_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @equipment_types = EquipmentType.all
    respond_with(@equipment_types)
  end

  def show
    respond_with(@equipment_type)
  end

  def new
    @equipment_type = EquipmentType.new
    respond_with(@equipment_type)
  end

  def edit
  end

  def create
    @equipment_type = EquipmentType.new(equipment_type_params)
    @equipment_type.save
    respond_with(@equipment_type)
  end

  def update
    @equipment_type.update(equipment_type_params)
    respond_with(@equipment_type)
  end

  def destroy
    @equipment_type.destroy
    respond_with(@equipment_type)
  end

  private
    def set_equipment_type
      @equipment_type = EquipmentType.find(params[:id])
    end

    def equipment_type_params
      params.require(:equipment_type).permit(:name)
    end
end
