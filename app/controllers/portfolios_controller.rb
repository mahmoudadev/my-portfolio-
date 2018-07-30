class PortfoliosController < ApplicationController

  def index
    @portfolios = Portfolio.all
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)
    if @portfolio.save
      flash[:success] = "Portfolio added successfully"
      redirect_to @portfolio
    else
      render 'new'
    end

  end



  private
  def portfolio_params
    params.require(:portfolio).permit(:title , :subtitle, :body)
  end

end
