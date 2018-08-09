class LawCategory < ApplicationRecord
  belongs_to :lawable, polymorphic: true
end
