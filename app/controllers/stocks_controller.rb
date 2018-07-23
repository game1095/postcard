class StocksController < ApplicationController
  def index
    @stocks = Stock.all.order(id: :asc)
  end

  def new 
    @stock = Stock.new
  end

  def create
    @stock = Stock.create(stock.params)
    if @stock.save
      redriect_to root_path
    else
      render 'new'
    end
  end

  private
    def stock_params
      params.require(:stock).permit(:name , :amount , :description)
    end
end
