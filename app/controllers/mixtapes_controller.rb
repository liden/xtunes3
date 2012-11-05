class MixtapesController < ApplicationController
before_filter :must_be_current_user

  def index
      @mixtapes = Mixtape.all
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
      redirect_to mixtape_path(@mixtape), notice: 'mixtape was successfully created.'
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
      redirect_to mixtape_path(@mixtape), notice: 'mixtape was successfully updated.'
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