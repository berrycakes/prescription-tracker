require "application_system_test_case"

class MedicinesTest < ApplicationSystemTestCase
  setup do
    @medicine = medicines(:one)
  end

  test "visiting the index" do
    visit medicines_url
    assert_selector "h1", text: "Medicines"
  end

  test "creating a Medicine" do
    visit medicines_url
    click_on "New Medicine"

    fill_in "Brand name", with: @medicine.brand_name
    fill_in "Cost", with: @medicine.cost
    fill_in "Dosage form", with: @medicine.dosage_form
    fill_in "Generic name", with: @medicine.generic_name
    click_on "Create Medicine"

    assert_text "Medicine was successfully created"
    click_on "Back"
  end

  test "updating a Medicine" do
    visit medicines_url
    click_on "Edit", match: :first

    fill_in "Brand name", with: @medicine.brand_name
    fill_in "Cost", with: @medicine.cost
    fill_in "Dosage form", with: @medicine.dosage_form
    fill_in "Generic name", with: @medicine.generic_name
    click_on "Update Medicine"

    assert_text "Medicine was successfully updated"
    click_on "Back"
  end

  test "destroying a Medicine" do
    visit medicines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Medicine was successfully destroyed"
  end
end
