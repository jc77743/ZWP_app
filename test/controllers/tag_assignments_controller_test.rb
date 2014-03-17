require 'test_helper'

class TagAssignmentsControllerTest < ActionController::TestCase
  setup do
    @tag_assignment = tag_assignments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tag_assignments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tag_assignment" do
    assert_difference('TagAssignment.count') do
      post :create, tag_assignment: { evidence_id: @tag_assignment.evidence_id, tag_id: @tag_assignment.tag_id }
    end

    assert_redirected_to tag_assignment_path(assigns(:tag_assignment))
  end

  test "should show tag_assignment" do
    get :show, id: @tag_assignment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tag_assignment
    assert_response :success
  end

  test "should update tag_assignment" do
    patch :update, id: @tag_assignment, tag_assignment: { evidence_id: @tag_assignment.evidence_id, tag_id: @tag_assignment.tag_id }
    assert_redirected_to tag_assignment_path(assigns(:tag_assignment))
  end

  test "should destroy tag_assignment" do
    assert_difference('TagAssignment.count', -1) do
      delete :destroy, id: @tag_assignment
    end

    assert_redirected_to tag_assignments_path
  end
end
