class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    # map function to store in varible name key all Values

    @items.map { |item| item[:name] }.sort
  end

  def cheap
    # select function or method to select price in hash less than 30 return that values and name
    @items.select { |item| item[:price] < 30 }
  end

  def out_of_stock
    # stock in empty values return
    @items.select { |item| item[:quantity_by_size].empty? }
  end

  def stock_for_item(name)
    # if passing argument match then return it other wise nil
    item = @items.find { |item| item[:name] == name }
    item ? item[:quantity_by_size] : {}
  end

  def total_stock
    # quantity sum
    @items.sum do |item|
      item[:quantity_by_size].values.sum
    end
  end

  private

  attr_reader :items
end
