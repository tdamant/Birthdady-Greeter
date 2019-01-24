describe BirthdayPrinter do
  context "when it is the birthday" do
    it "prints out Happy Birthdaty!!" do
      expect(subject.print_message(0)).to eq "Happy Birthday!!"
    end
    context "when it is the day before birthday" do
      it "1 day until your birthday!" do
        expect(subject.print_message(1)).to eq "1 day until your birthday!"
      end
    end
  end
end
