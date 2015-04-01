require 'open-uri'

class CurrencyLoader

  CURRENCY_URL = "https://gist.githubusercontent.com/Fluidbyte/2973986/raw/9ead0f85b6ee6071d018564fa5a314a0297212cc/Common-Currency.json"

  def initialize
    @currency_json = JSON.load(open(CURRENCY_URL))
  end

  def currency_data_hash
    @currency_json.each_value.collect do |hash|
      {name: hash["name"],
       symbol: hash["code"]}
    end.to_a
  end

end
