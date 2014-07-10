require 'test_helper'

class VeterinaryDoctorsControllerTest < ActionController::TestCase
  setup do
    @veterinary_doctor = veterinary_doctors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:veterinary_doctors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create veterinary_doctor" do
    assert_difference('VeterinaryDoctor.count') do
      post :create, veterinary_doctor: { address_line1: @veterinary_doctor.address_line1, address_line2: @veterinary_doctor.address_line2, city: @veterinary_doctor.city, name: @veterinary_doctor.name, school_name: @veterinary_doctor.school_name, state: @veterinary_doctor.state, years_in_practice: @veterinary_doctor.years_in_practice, zip: @veterinary_doctor.zip }
    end

    assert_redirected_to veterinary_doctor_path(assigns(:veterinary_doctor))
  end

  test "should show veterinary_doctor" do
    get :show, id: @veterinary_doctor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @veterinary_doctor
    assert_response :success
  end

  test "should update veterinary_doctor" do
    patch :update, id: @veterinary_doctor, veterinary_doctor: { address_line1: @veterinary_doctor.address_line1, address_line2: @veterinary_doctor.address_line2, city: @veterinary_doctor.city, name: @veterinary_doctor.name, school_name: @veterinary_doctor.school_name, state: @veterinary_doctor.state, years_in_practice: @veterinary_doctor.years_in_practice, zip: @veterinary_doctor.zip }
    assert_redirected_to veterinary_doctor_path(assigns(:veterinary_doctor))
  end

  test "should destroy veterinary_doctor" do
    assert_difference('VeterinaryDoctor.count', -1) do
      delete :destroy, id: @veterinary_doctor
    end

    assert_redirected_to veterinary_doctors_path
  end
end
