require "test_helper"

class PrescribedMedicinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prescribed_medicine = prescribed_medicines(:one)
  end

  test "should get index" do
    get prescribed_medicines_url
    assert_response :success
  end

  test "should get new" do
    get new_prescribed_medicine_url
    assert_response :success
  end

  test "should create prescribed_medicine" do
    assert_difference('PrescribedMedicine.count') do
      post prescribed_medicines_url, params: { prescribed_medicine: { brand_name: @prescribed_medicine.brand_name, generic_name: @prescribed_medicine.generic_name, medicine_id: @prescribed_medicine.medicine_id, prescription_id: @prescribed_medicine.prescription_id, quantity: @prescribed_medicine.quantity } }
    end

    assert_redirected_to prescribed_medicine_url(PrescribedMedicine.last)
  end

  test "should show prescribed_medicine" do
    get prescribed_medicine_url(@prescribed_medicine)
    assert_response :success
  end

  test "should get edit" do
    get edit_prescribed_medicine_url(@prescribed_medicine)
    assert_response :success
  end

  test "should update prescribed_medicine" do
    patch prescribed_medicine_url(@prescribed_medicine), params: { prescribed_medicine: { brand_name: @prescribed_medicine.brand_name, generic_name: @prescribed_medicine.generic_name, medicine_id: @prescribed_medicine.medicine_id, prescription_id: @prescribed_medicine.prescription_id, quantity: @prescribed_medicine.quantity } }
    assert_redirected_to prescribed_medicine_url(@prescribed_medicine)
  end

  test "should destroy prescribed_medicine" do
    assert_difference('PrescribedMedicine.count', -1) do
      delete prescribed_medicine_url(@prescribed_medicine)
    end

    assert_redirected_to prescribed_medicines_url
  end
end
