class MentorasController < ApplicationController
  def index
    @mentoras = Mentora.all
  end

  def show
    @mentora = Mentora.find(params[:id])
  end

  def new
    @mentora = Mentora.new
  end

  def create
    @mentora = Mentora.new(mentora_params)
    @mentora.save
    redirect_to @mentora
  end

  private

  def mentora_params
    params.require(:mentora).permit(:nome, :contato, :habilidades)
  end
end
