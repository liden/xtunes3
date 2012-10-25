class PurchasesController < ApplicationController

  def new
    @purchase = Purchase.new
  end

  def create
    @purchase = Purchase.new(params[:purchase])

    if @purchase.save
      redirect_to purchases_path, notice: 'purchase was successfully created.'
    else
      render :new
    end
  end

end