require_dependency "chirrin_chirrion_admin/application_controller"

module ChirrinChirrionAdmin
  class TogglesController < ApplicationController
    def index
      @toggles = ChirrinChirrion.list
    end

    def new
    end

    def create
      ChirrinChirrion.add_toggle(params[:name], {description: params[:description], active: params[:active].present?})
      flash[:success] = 'Toggle has been created with success'
      redirect_to(action: :index)
    end

    def activate
      ChirrinChirrion.chirrin!(params[:id])
      flash[:success] = 'Toggle has been activated with success'
      redirect_to(action: :index)
    end

    def inactivate
      ChirrinChirrion.chirrion!(params[:id])
      flash[:success] = 'Toggle has been inactivated with success'
      redirect_to(action: :index)
    end

    def destroy
      ChirrinChirrion.remove_toggle(params[:id])
      flash[:success] = 'Toggle has been removed with success'
      redirect_to(action: :index)
    end
  end
end
