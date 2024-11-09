class MentorasController < ApplicationController
  def index
    @mentoras = Mentora.all
  end
end
