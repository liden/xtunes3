class MixtapesController < ApplicationController

  def index
    @mixtapes = Mixtape.order(:name)
  end

  def show
    @mixtape = Mixtape.find(params[:id])
  end

  def new
      @mixtape = Mixtape.new
  end

  def create
    @mixtape = Mixtape.new(params[:mixtape])

    if @mixtape.save
      redirect_to mixtapes_path, notice: 'mixtape was successfully created.'
    else
      render :new
    end
  end

  def edit
    @mixtape = Mixtape.find(params[:id])
  end

  def update
    @mixtape = Mixtape.find(params[:id])

    if @mixtape.update_attributes(params[:mixtape])
      redirect_to mixtapes_path, notice: 'mixtape was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @mixtape = Mixtape.find(params[:id])
    @mixtape.destroy

    redirect_to mixtapes_path
  end

end