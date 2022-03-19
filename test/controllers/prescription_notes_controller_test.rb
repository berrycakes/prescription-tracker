require "test_helper"

class PrescriptionNotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prescription_note = prescription_notes(:one)
  end

  test "should get index" do
    get prescription_notes_url
    assert_response :success
  end

  test "should get new" do
    get new_prescription_note_url
    assert_response :success
  end

  test "should create prescription_note" do
    assert_difference('PrescriptionNote.count') do
      post prescription_notes_url, params: { prescription_note: { content: @prescription_note.content, prescription_id: @prescription_note.prescription_id } }
    end

    assert_redirected_to prescription_note_url(PrescriptionNote.last)
  end

  test "should show prescription_note" do
    get prescription_note_url(@prescription_note)
    assert_response :success
  end

  test "should get edit" do
    get edit_prescription_note_url(@prescription_note)
    assert_response :success
  end

  test "should update prescription_note" do
    patch prescription_note_url(@prescription_note), params: { prescription_note: { content: @prescription_note.content, prescription_id: @prescription_note.prescription_id } }
    assert_redirected_to prescription_note_url(@prescription_note)
  end

  test "should destroy prescription_note" do
    assert_difference('PrescriptionNote.count', -1) do
      delete prescription_note_url(@prescription_note)
    end

    assert_redirected_to prescription_notes_url
  end
end
