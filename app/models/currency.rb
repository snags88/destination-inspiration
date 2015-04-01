class Currency < ActiveRecord::Base
  has_many :currency_locations
  has_many :locations, :through => :currency_locations

  has_many :lodgings
  has_many :attractions

  validates :symbol, :uniqueness => true

  def self.seed_data
    data = CurrencyLoader.new.currency_data_hash
    data.each do |currency|
      Currency.find_or_create_by_symbol(currency)
    end
  end

  def self.find_or_create_by_symbol(currency)
    Currency.create(currency) if !(Currency.find_by(:symbol => currency["symbol"]))
  end

end
