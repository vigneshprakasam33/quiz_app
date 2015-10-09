require 'test_helper'

class TestsControllerTest < ActionController::TestCase
  setup do
    @test = tests(:one)
  end


  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test with multiple choice questions" do
    assert_difference('Test.count') do
      post :create, :test => {:name => "dd", :question_type_id => "1", :questions_attributes => {"0" => {:content => "1+1=?", :choices_attributes => {"0" => {:selected => "1", :content => "2", "_destroy" => "false"}, "1" => {:selected => "0", :content => "3", "_destroy" => "false"}, "2" => {:selected => "0", :content => "4", "_destroy" => "false"}, "3" => {:selected => "0", :content => "5", "_destroy" => "false"}}, "_destroy" => "false"}}}
    end
    assert_equal 'Test was successfully created.', flash[:notice]
    assert_redirected_to new_test_path
  end

  test "should create test with true/false questions" do
    assert_difference('Test.count') do
      post :create, :test => {:name => "Test2", :question_type_id => "2", :questions_attributes => {"0" => {:content => "Sun rises in the east", :choices_attributes => {"0" => {:selected => "1", :content => "True", "_destroy" => "false"}, "1" => {:selected => "0", :content => "False", "_destroy" => "false"}}, "_destroy" => "false"}}}
    end
    assert_equal 'Test was successfully created.', flash[:notice]
    assert_redirected_to new_test_path
  end


  test "should not save without choice text" do
    counter = Test.count
    post :create, :test => {:name => "Test2", :question_type_id => "2", :questions_attributes => {"0" => {:content => "Sun rises in the east", :choices_attributes => {"0" => {:selected => "1", :content => "True", "_destroy" => "false"}, "1" => {:selected => "1", :content => "", "_destroy" => "false"} }, "_destroy" => "false"}}}
    assert_equal counter , Test.count
  end


  test "should not save without test name" do
    test = Test.new
    assert !test.save, "Saved the test without name"
  end


end
