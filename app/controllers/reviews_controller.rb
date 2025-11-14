class ReviewsController < ApplicationController

  # GET /reviews or /reviews.json
  def index
    @reviews = Review.all
  end

  # GET /reviews/new
  def new
    @review = Review.new
  end

  # POST /reviews or /reviews.json
  def create
    @review = Review.new(review_params)

    respond_to do |format|
      if @review.save
        format.html { redirect_to @review, notice: "Review was successfully created." }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def review_params
      params.require(:review).permit(:reviewer_name, :reviewer_surname, :description, :worked_with_me, :cooperation_type, :overall_rating)
    end
end
