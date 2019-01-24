require 'birthday_printer'

describe BirthdayPrinter do
  context "when it is the birthday" do
    it "prints out Happy Birthdaty!!" do
      expect {subject.print_message(0)}.to output("Happy Birthday!!").to_stdout
    end
    context "when it is the day before birthday" do
      it "1 day until your birthday!" do
        expect {subject.print_message(1)}.to output("1 day until your birthday!").to_stdout
      end
    end
  end
end
