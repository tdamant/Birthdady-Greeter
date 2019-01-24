describe BirthdayPrinter do
  context "when it is the birthday" do
    it "returns Happy Birthdaty!!" do
      expect(subject.print_message(0)).to eq "Happy Birthday!!"
    end
    context "when it is the day before birthday" do
      it "returns 1 day until your birthday!" do
        expect(subject.print_message(1)).to eq "It's 1 day until your birthday!"
      end
    end
    context "with it is more than a day before birthday" do
      it "returns days until your birthday" do
        expect(subject.print_message(5)).to eq "It's 5 days until your birthday!"
      end
    end
  end
end
