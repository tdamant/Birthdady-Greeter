describe Person do
  let(:printer) {double(:printer, print_message: nil)}
  let(:printer_class) {double(:printer_class, new: printer)}
  let(:bob) {Person.new('Bob', Date.today.next_day.day, Date.today.next_day.month, printer_class)}
  let(:tim) {Person.new('Tim', Date.today.prev_day.day, Date.today.prev_day.month)}
  describe "#name" do
    it "returns the persons name" do
      expect(bob.name).to eq 'Bob'
    end
  end
  describe "#days_until_birthday" do
    it "returns the number days untill the next birthday of the person" do
      print Date.today.next_day.month
      p Date.today.next_day.day
      expect(bob.days_until_birthday).to eq 1
    end
    it "next birthday can't be in past" do
      expect(tim.days_until_birthday).to eq 364
    end
  end
  describe "#birthday_greeting" do
    it "tells birthday_printer to print_messasge" do
      expect(printer).to receive(:print_message).with(1)
      bob.birthday_greeting
    end
  end
end
