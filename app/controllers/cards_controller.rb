class CardsController < ApplicationController
  before_action :authenticate_user!

  def index
    @cards = Card.all.order(id: :asc)
  end

  def new
    @card = Card.new
    @card = current_user.card.build
  end

  def create
    @card = Card.new(card_params)
    @card = current_user.card.build(card_params)
    if @card.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @card = Card.find(params[:id])
  end

  def update
    @card = Card.find(params[:id])
    if @card.update(card_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def show
    @card = Card.find(params[:id])
    respond_to do |format|
      format.html
      if format.pdf{render template: 'cards/report' , pdf: 'report' , page_height: '3in', page_width: '5in' }
        @card = Card.find(params[:id])
        @card.update(status:'Success')
      end
    end
  end

  def destroy
    @card = Card.find(params[:id]) 
    if @card.destroy
      redirect_to root_path
    end
  end

  private
   def card_params
     params.require(:card).permit(:full_name , :address , :quantity , :status , :phone , :stocks_id)
   end

end
