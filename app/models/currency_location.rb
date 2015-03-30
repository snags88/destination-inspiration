class CurrencyLocation < ActiveRecord::Base
  belongs_to :currency
  belongs_to :location
end
