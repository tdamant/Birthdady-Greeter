feature "name greeter" do
  scenario "user enters name and birthday" do
    twenty_days_before
    expect(page).to have_content ("Hello Tom")
  end
end
