require "test_helper"

class DoctorReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get doctor_reviews_new_url
    assert_response :success
  end

  test "should get create" do
    get doctor_reviews_create_url
    assert_response :success
  end
end
