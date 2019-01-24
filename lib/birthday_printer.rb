class BirthdayPrinter

  def print_message(days)
    days > 0 ? days_to_go(days) : happy_birthday
  end

  def happy_birthday
    "Happy Birthday!!"
  end

  def days_to_go(days)
    days > 1 ? "It's #{days} days until your birthday!" : "It's #{days} day until your birthday!"
  end

end
