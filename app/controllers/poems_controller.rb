class PoemsController < ApplicationController
  before_action :set_poem, only: [:show]

  def index
    @poems = Poem.all
    render json: @poems
  end

  def show
    render json: @poem
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poem
      @poem = Poem.find(params[:id])
    end
end
