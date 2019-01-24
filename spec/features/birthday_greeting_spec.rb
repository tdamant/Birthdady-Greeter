feature 'birthday greeting' do
  scenario "user enters data 20 days before their birthday" do
    twenty_days_before
    expect(page).to have_content ("20 days until your birthday!")
  end

  scenario "user enters data 1 day before their birthday" do
    day_before_bday
    expect(page).to have_content ("1 day until your birthday!")
  end

  scenario "user enters data on their birthday" do
    on_bday
    expect(page).to have_content "Happy Birthday!!"
  end

  scenario "user enters data, day after their birthday" do
    day_after_bday
    expect(page).to have_content "364 days until your birthday"
  end
end
