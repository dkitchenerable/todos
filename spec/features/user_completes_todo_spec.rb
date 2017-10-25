require 'rails_helper'
feature "user completes todo" do
  scenario "successfully" do
    sign_in

    create_todo("Buy Milk")
    click_on "Submit"

    click_on "Mark Complete"
    expect(page).to display_completed_todo("Buy Milk")
  end
end
