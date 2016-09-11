class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  respond_to :json

  #=== API_PIE
  api :GET, "/reviews/{id}", "Get review details by its id"
  #=== API_PIE
  def show
    respond_with @review
  end

  # GET /reviews/new
  def new
    @review = Review.new
    respond_with @review
  end

  # GET /reviews/1/edit
  def edit
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @review = Review.new(review_params)

    if @review.save
      respond_with @review
    else
      respond_with @review.errors
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    if @review.update(review_params)
      respond_with @review
    else
      respond_with @review.errors
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review.destroy
    respond_with :no_content 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.fetch(:review, {})
    end
end
