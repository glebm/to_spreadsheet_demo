class DemosController < ApplicationController

  def index

  end

  def show
    id = params[:id]
    respond_to do |format|
      format.html { render id }
      format.xlsx { render :xlsx => id, :filename => "demo_#{id}.xlsx" }
    end
  end
end