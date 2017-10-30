require 'account'

  describe Account do
    it 'should create a new instance of Account class' do
      account = Account.new
      expect(account).to be_instance_of(Account)
    end

    it 'should initialize with a default zero balance' do
      account = Account.new
      expect(account.show_oobalance).to eq(0)
    end
  end
