class RandomQuotesController < ApplicationController
  before_action :set_random_quote, only: [:show, :update, :destroy]

  # GET /random_quotes
  def index
    @random_quotes = RandomQuote.all

    render json: @random_quotes
  end

  # GET /random_quotes/1
  def show
    render json: @random_quote
  end

  # POST /random_quotes
  def create
    @random_quote = RandomQuote.new(random_quote_params)

    if @random_quote.save
      render json: @random_quote, status: :created, location: @random_quote
    else
      render json: @random_quote.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /random_quotes/1
  def update
    if @random_quote.update(random_quote_params)
      render json: @random_quote
    else
      render json: @random_quote.errors, status: :unprocessable_entity
    end
  end

  # DELETE /random_quotes/1
  def destroy
    @random_quote.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_random_quote
      @random_quote = RandomQuote.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def random_quote_params
      params.require(:random_quote).permit(:rand_text, :rand_cite)
    end
end
