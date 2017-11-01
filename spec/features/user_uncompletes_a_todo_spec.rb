require 'rails_helper'

require 'rails_helper'
feature "user marks todo incomplete" do
  scenario "successfully" do
    sign_in

    create_todo("Buy Milk")
    click_on "Submit"

    click_on "Mark Complete"
    click_on "Mark Incomplete"
    expect(page).to display_todo("Buy Milk")
  end
end
