def fill_in_form(date, month)
  visit("/")
  fill_in 'name', with: "Tom"
  fill_in 'day', with: date
  page.select month_string(month), from: 'month'
  click_on 'Submit'
end

def date_today
  Date.today
end

def yesterday
  Date.today.prev_day
end

def tomorrow
  Date.today.next_day
end

def twenty_days_time
  Date.today + 20
end

def month_name_yesterday
  @month_name_yesterday = month_string(Date.today.prev_day.month)
end

def month_string(month_integer)
  Date::MONTHNAMES[month_integer]
end

def twenty_days_before
  fill_in_form(twenty_days_time.day, twenty_days_time.month)
end
def day_before_bday
  fill_in_form(tomorrow.day, tomorrow.month)
end

def on_bday
  fill_in_form(date_today.day, date_today.month)
end

def day_after_bday
  fill_in_form(yesterday.day, yesterday.month)
end

def days_to_next_month
  todays_date = Date.today
  next_month = Date.new(todays_date.year, (todays_date.month + 1), todays_date.day)
  (next_month - Date.today).to_i
end
