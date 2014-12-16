require_relative '../lib/account'

describe Account do
  describe ".deposit" do
    it "should increase the balance by 55 when we deposit 55" do
      account = Account.new
      account.deposit(55)
      expect(account.balance).to eq(55)
    end

    it "works with multiple deposits" do
      account = Account.new
      account.deposit(40)
      account.deposit(20)
      account.deposit(5)
      expect(account.balance).to eq(65)
    end
  end

  describe ".withdraw" do
  end
end