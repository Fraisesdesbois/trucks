class MachinesController < ApplicationController
  before_action :set_machine, only: [:show, :edit, :update, :destroy]

  def index
    @machines = Machine.all
  end
  def show
  end
  def new
    @machine = Machine.new
  end
  def edit
  end
  def create
    machine = Machine.create(machine_params)
    redirect_to machines_path
  end
  def update
    redirect_to machines_path
  end
  def destroy
    @machine.destroy
    redirect_to machines_path
  end

  private

  def machine_params
    params.require(:machine).permit(:name, :brand)
  end

  def set_machine
    @machine = Machine.find(params[:id])
  end
end
