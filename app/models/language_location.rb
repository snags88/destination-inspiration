class LanguageLocation < ActiveRecord::Base
  belongs_to :language
  belongs_to :location
end
