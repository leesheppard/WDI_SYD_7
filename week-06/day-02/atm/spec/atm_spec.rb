require_relative '../lib/atm'
require_relative '../lib/account'

describe ATM do
  let(:atm) { ATM.new }
  let(:account) { Account.new }

  describe ".balance" do
    context "newly opened account" do
      it "should show a balance of zero" do
        expect(atm.balance(account)).to eq(0)
      end
    end

    context "account with transactions equal to $100 balance" do
      it "should show a balance of $100" do
        account.deposit(100)
        expect(atm.balance(account)).to eq(100)
      end
    end
  end
end







