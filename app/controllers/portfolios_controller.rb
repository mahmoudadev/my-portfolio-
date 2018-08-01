class PortfoliosController < ApplicationController

  def index
    @portfolios = Portfolio.all
  end

  def new
    @portfolio = Portfolio.new
    3.times { @portfolio.technologies.build }
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

  def edit
    @portfolio = Portfolio.find(params[:id])
  end

  def update
    @portfolio = Portfolio.find(params[:id])

    if @portfolio.update(portfolio_params)
      flash[:notice] = "updated successfully"
      redirect_to @portfolio
    else
      render 'edit'
    end

  end

  def show
    @portfolio = Portfolio.find(params[:id])
  end

  def destroy
    @portfolio = Portfolio.find(params[:id])
    if @portfolio.destroy
      flash[:notice] = "Portfolio has been deleted!"
      redirect_to  portfolios_path
    end
  end



  private
  def portfolio_params
    params.require(:portfolio).permit(:title , :subtitle, :body, technologies_attributes: [:name])
  end

end
