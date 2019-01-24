feature "validates dates" do
  scenario "31st of February entered" do
    invalid_date
    expect(page).to have_content "Oops that's not a valid date! - please try again"
    save_and_open_page
  end
end
