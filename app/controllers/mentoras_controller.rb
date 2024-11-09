class MentorasController < ApplicationController
  def index
    @mentoras = Mentora.all
  end

  def show
    @mentora = Mentora.find(params[:id])
  end
end
