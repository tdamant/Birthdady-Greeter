class BirthdayPrinter

  def print_message(days)
    days > 0 ? days_to_go(days) : happy_birthday
  end

  def happy_birthday
    print "Happy Birthday!!"
  end

  def days_to_go(days)
    days > 1 ? print("#{days} days until your birthday!") : print("#{days} day until your birthday!")
  end

end
