require "application_system_test_case"

class PrescribedMedicinesTest < ApplicationSystemTestCase
  setup do
    @prescribed_medicine = prescribed_medicines(:one)
  end

  test "visiting the index" do
    visit prescribed_medicines_url
    assert_selector "h1", text: "Prescribed Medicines"
  end

  test "creating a Prescribed medicine" do
    visit prescribed_medicines_url
    click_on "New Prescribed Medicine"

    fill_in "Brand name", with: @prescribed_medicine.brand_name
    fill_in "Generic name", with: @prescribed_medicine.generic_name
    fill_in "Medicine", with: @prescribed_medicine.medicine_id
    fill_in "Prescription", with: @prescribed_medicine.prescription_id
    fill_in "Quantity", with: @prescribed_medicine.quantity
    click_on "Create Prescribed medicine"

    assert_text "Prescribed medicine was successfully created"
    click_on "Back"
  end

  test "updating a Prescribed medicine" do
    visit prescribed_medicines_url
    click_on "Edit", match: :first

    fill_in "Brand name", with: @prescribed_medicine.brand_name
    fill_in "Generic name", with: @prescribed_medicine.generic_name
    fill_in "Medicine", with: @prescribed_medicine.medicine_id
    fill_in "Prescription", with: @prescribed_medicine.prescription_id
    fill_in "Quantity", with: @prescribed_medicine.quantity
    click_on "Update Prescribed medicine"

    assert_text "Prescribed medicine was successfully updated"
    click_on "Back"
  end

  test "destroying a Prescribed medicine" do
    visit prescribed_medicines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prescribed medicine was successfully destroyed"
  end
end
