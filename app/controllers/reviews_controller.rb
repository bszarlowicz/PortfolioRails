class ReviewsController < ApplicationController

  # GET /reviews/new
  def new
    @review = Review.new
  end

  # POST /reviews or /reviews.json
  def create
    @review = Review.new(review_params)

    respond_to do |format|
      if @review.save
        flash[:notice] = flash_message(:create, Review)
        format.turbo_stream
        format.html { redirect_to root_path }
        format.json { redirect_to root_path }
        flash.discard
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
