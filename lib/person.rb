class Person
  attr_reader :name, :day, :month, :printer

  def initialize(name, day, month, printer = BirthdayPrinter)
    @day = day
    @month = month
    @name = name
    @printer = printer.new
  end

  def days_until_birthday
    (next_bday - today).to_i
  end

  def birthday_greeting
    printer.print_message(days_until_birthday)
  end

  def valid_dates?
    Date.valid_date?(today.year,month, day)
  end

  private

  def next_bday
    bday_current_year = Date.new(today.year, month, day)
    bday_current_year < today ? Date.new(today.year + 1, month, day) : bday_current_year
  end

  def today
    Date.today
  end

end
