class MachinesController < ApplicationController
  def index
    @machines = Machine.all
  end
  def show
    @machine = Machine.find(params[:id])
  end
  def new
    @machine = Machine.new
  end
  def edit
    @machine = Machine.find(params[:id])

  end
  def create
    machine = Machine.create(machine_params)
    redirect_to machines_path

  end
  def update
    @machine = Machine.find(params[:id])
    @machine.update(machine_params)
    redirect_to machines_path

  end
  def destroy
    @machine = Machine.find(params[:id])
    @machine.destroy
    redirect_to machines_path
  end

  private

  def machine_params
    params.require(:machine).permit(:name, :brand)
  end
end
