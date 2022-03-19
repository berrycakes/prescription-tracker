require "application_system_test_case"

class PrescriptionNotesTest < ApplicationSystemTestCase
  setup do
    @prescription_note = prescription_notes(:one)
  end

  test "visiting the index" do
    visit prescription_notes_url
    assert_selector "h1", text: "Prescription Notes"
  end

  test "creating a Prescription note" do
    visit prescription_notes_url
    click_on "New Prescription Note"

    fill_in "Content", with: @prescription_note.content
    fill_in "Prescription", with: @prescription_note.prescription_id
    click_on "Create Prescription note"

    assert_text "Prescription note was successfully created"
    click_on "Back"
  end

  test "updating a Prescription note" do
    visit prescription_notes_url
    click_on "Edit", match: :first

    fill_in "Content", with: @prescription_note.content
    fill_in "Prescription", with: @prescription_note.prescription_id
    click_on "Update Prescription note"

    assert_text "Prescription note was successfully updated"
    click_on "Back"
  end

  test "destroying a Prescription note" do
    visit prescription_notes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prescription note was successfully destroyed"
  end
end
