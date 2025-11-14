require "test_helper"

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @review = reviews(:one)
  end

  test "should get index" do
    get reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_review_url
    assert_response :success
  end

  test "should create review" do
    assert_difference("Review.count") do
      post reviews_url, params: { review: { cooperation_type: @review.cooperation_type, description: @review.description, overall_rating: @review.overall_rating, reviewer_name: @review.reviewer_name, reviewer_surname: @review.reviewer_surname, worked_with_me: @review.worked_with_me } }
    end

    assert_redirected_to review_url(Review.last)
  end

  test "should show review" do
    get review_url(@review)
    assert_response :success
  end

  test "should get edit" do
    get edit_review_url(@review)
    assert_response :success
  end

  test "should update review" do
    patch review_url(@review), params: { review: { cooperation_type: @review.cooperation_type, description: @review.description, overall_rating: @review.overall_rating, reviewer_name: @review.reviewer_name, reviewer_surname: @review.reviewer_surname, worked_with_me: @review.worked_with_me } }
    assert_redirected_to review_url(@review)
  end

  test "should destroy review" do
    assert_difference("Review.count", -1) do
      delete review_url(@review)
    end

    assert_redirected_to reviews_url
  end
end
