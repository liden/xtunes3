class PurchasesController < ApplicationController

  def new
    @purchase = Purchase.new
  end

  def create
    @purchase = Purchase.new(params[:purchase])

    if @purchase.save
      redirect_to purchases_path, notice: 'purchase was completed.'
    else
      render :new
    end
  end

  def show
    @purchase = Purchase.find(params[:id])
  end

end