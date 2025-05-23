class BankAccount
  def open
    raise ArgumentError, "You can't open an already open account" if @is_open
    @is_open = true
    @balance = 0
  end
  def balance
    raise ArgumentError, "You can't check the balance of a closed account" unless @is_open
    @balance
  end
  def deposit(deposit_money)
    raise ArgumentError, "You can't deposit money into a closed account" unless @is_open
    raise ArgumentError, "You can't deposit a negative amount" if deposit_money < 0
    @balance += deposit_money
  end
  def withdraw(withdraw_money)
    raise ArgumentError, "You can't withdraw money into a closed account" unless @is_open
    raise ArgumentError, "You can't withdraw more than you have" if @balance < withdraw_money
    raise ArgumentError, "You can't withdraw a negative amount" if withdraw_money < 0
    @balance -= withdraw_money
  end
  def close
    raise ArgumentError, "You can't close an already closed account" unless @is_open
    @is_open = false
  end
end


# account open and close