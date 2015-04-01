class Attraction < ActiveRecord::Base
  belongs_to :location
  belongs_to :currency

  validates :name, :description, :attraction_type, presence: true

  def self.find_by_params(params)
    self.find_by(:id => params[:id], :location_id => params[:location_id])
  end

end
